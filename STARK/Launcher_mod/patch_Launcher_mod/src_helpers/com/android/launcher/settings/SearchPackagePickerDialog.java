package com.android.launcher.settings;

import android.app.Activity;
import android.content.ContextWrapper;
import java.lang.reflect.Method;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.preference.Preference;
import java.text.Collator;
import java.text.Normalizer;
import java.util.regex.Pattern;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class SearchPackagePickerDialog {
    public static final String KEY_PACKAGE = "wk_search_package";
    public static final String SUFFIX_SHORTCUT_ID = "_shortcut_id";
    public static final String SUFFIX_SHORTCUT_LABEL = "_shortcut_label";
    public static final String SUFFIX_TARGET_TYPE = "_target_type";
    public static final String TARGET_TYPE_APP = "app";
    public static final String TARGET_TYPE_SHORTCUT = "shortcut";

    private SearchPackagePickerDialog() {}

    public static void show(Context context, Preference preference) {
        showForKey(context, preference, SearchPackagePickerDialog.KEY_PACKAGE, null);
    }

    public static void showForKey(Context context, Preference preference, String key, String defaultSummary) {
        Context safeCtx = context;
        if (safeCtx instanceof ContextWrapper && !(safeCtx instanceof Activity)) {
            Context cur = safeCtx;
            while (cur instanceof ContextWrapper) {
                if (cur instanceof Activity) {
                    safeCtx = cur;
                    break;
                }
                cur = ((ContextWrapper) cur).getBaseContext();
            }
        }
        new Controller(safeCtx, preference, key, defaultSummary).show();
    }

    public static String metaKey(String key, String suffix) {
        return String.valueOf(key) + suffix;
    }

    public static String getResString(Context context, int resId, String fallback) {
        if (context != null && resId != 0) {
            try {
                String s = context.getString(resId);
                if (!TextUtils.isEmpty(s)) return s;
            } catch (Throwable ignored) {}
        }
        return fallback;
    }

    private static final Pattern DIACRITICS_PATTERN = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");

    public static String stripDiacritics(String str) {
        if (str == null) return "";
        try {
            String nfd = Normalizer.normalize(str, Normalizer.Form.NFD);
            return DIACRITICS_PATTERN.matcher(nfd).replaceAll("").replace('đ', 'd').replace('Đ', 'D').toLowerCase(Locale.getDefault());
        } catch (Throwable th) {
            return str.toLowerCase(Locale.getDefault());
        }
    }

    private static final class Controller {
        final Context context;
        final Preference preference;
        final String keyPackage;
        final String emptySummary;
        String selectedPackage;
        String selectedTargetType;
        String selectedShortcutId;
        boolean shortcutMode;
        AppItem pendingItem;

        final ArrayList<AppItem> allItems = new ArrayList<>();
        final ArrayList<AppItem> visibleAppItems = new ArrayList<>();
        final ArrayList<AppItem> visibleShortcutItems = new ArrayList<>();
        boolean loaded = false;
        boolean tabAnimating = false;

        DialogInterface dialog;
        EditText searchEdit;
        ImageView searchClearBtn;
        FrameLayout modeFrame;
        View tabIndicator;
        TextView appTab;
        TextView shortcutTab;
        TextView statusText;
        ListView appListView;
        ListView shortcutListView;
        AppAdapter appAdapter;
        AppAdapter shortcutAdapter;
        FrameLayout listFrame;
        int normalListH;

        // Theme colors
        final boolean isDark;
        final int accentColor;
        final int bgCard;
        final int bgSearch;
        final int bgTabContainer;
        final int bgTabActive;
        final int textPrimary;
        final int textSecondary;
        final int dividerColor;
        final int badgeBg;
        final int badgeText;

        Controller(Context context, Preference preference) {
            this(context, preference, SearchPackagePickerDialog.KEY_PACKAGE, null);
        }

        Controller(Context context, Preference preference, String key, String defaultSummary) {
            this.context = context;
            this.preference = preference;
            this.keyPackage = TextUtils.isEmpty(key) ? SearchPackagePickerDialog.KEY_PACKAGE : key;
            this.emptySummary = TextUtils.isEmpty(defaultSummary) ? I18n.str("Bấm để chọn ứng dụng", "Tap to select application") : defaultSummary;

            SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
            this.selectedPackage = sp.getString(this.keyPackage, "");
            this.selectedTargetType = sp.getString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_TARGET_TYPE), SearchPackagePickerDialog.TARGET_TYPE_APP);
            this.selectedShortcutId = sp.getString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_ID), "");
            this.shortcutMode = SearchPackagePickerDialog.TARGET_TYPE_SHORTCUT.equals(this.selectedTargetType);

            this.isDark = (context.getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES;
            this.accentColor = resolveAccentColor(context, this.isDark);

            this.bgCard = this.isDark ? 0xFF242424 : 0xFFFFFFFF;
            this.bgSearch = this.isDark ? 0xFF2F2F2F : 0xFFF1F2F4;
            this.bgTabContainer = this.isDark ? 0xFF282828 : 0xFFECEEF1;
            this.bgTabActive = this.isDark ? 0xFF3C3C3C : 0xFFFFFFFF;
            this.textPrimary = this.isDark ? 0xFFF2F2F2 : 0xFF191919;
            this.textSecondary = this.isDark ? 0xFF8E8E8E : 0xFF767676;
            this.dividerColor = this.isDark ? 0x14FFFFFF : 0x0D000000;
            this.badgeBg = this.isDark ? 0x24FFFFFF : 0x12000000;
            this.badgeText = this.isDark ? 0xFFA0A0A0 : 0xFF666666;

            int screenH = context.getResources().getDisplayMetrics().heightPixels;
            this.normalListH = Math.max(dp(380), Math.min(dp(500), (int) (screenH * 0.48f)));
        }

        private static final class DialogRootLayout extends LinearLayout {
            public DialogRootLayout(Context context) {
                super(context);
            }

            @Override
            public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) {
                return false;
            }

            @Override
            public boolean dispatchTouchEvent(MotionEvent ev) {
                ViewParent p = getParent();
                while (p != null) {
                    p.requestDisallowInterceptTouchEvent(true);
                    p = p.getParent();
                }
                return super.dispatchTouchEvent(ev);
            }
        }

        void show() {
            View view = buildContentView();
            this.dialog = showCouiDialog(view);
            if (this.dialog == null) {
                this.dialog = new AlertDialog.Builder(this.context)
                        .setTitle(getDialogTitle())
                        .setView(view)
                        .setNegativeButton(I18n.str("Hủy", "Cancel"), null)
                        .setPositiveButton(I18n.str("Lưu", "Save"), new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface d, int which) {
                                savePendingSelection();
                            }
                        }).show();
            }
            if (this.dialog instanceof Dialog) {
                Dialog d = (Dialog) this.dialog;
                Window w = d.getWindow();
                if (w != null) {
                    w.clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE 
                            | WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM);
                    w.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_NOTHING 
                            | WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
                    final View decor = w.getDecorView();
                    if (decor != null) {
                        decor.post(new Runnable() {
                            @Override
                            public void run() {
                                expandDialogMaxHeight(decor);
                                lockAllParentScrollViews(decor);
                            }
                        });
                    }
                }
            }
            loadLaunchableAppsAsync();
        }

        private void expandDialogMaxHeight(View v) {
            if (v == null) return;
            try {
                java.lang.reflect.Method m = v.getClass().getMethod("setMaxHeight", int.class);
                int screenH = this.context.getResources().getDisplayMetrics().heightPixels;
                int targetMaxH = (int) (screenH * 0.82f);
                m.invoke(v, targetMaxH);
                v.requestLayout();
            } catch (Throwable ignored) {}

            if (v instanceof ViewGroup) {
                ViewGroup vg = (ViewGroup) v;
                for (int i = 0; i < vg.getChildCount(); i++) {
                    expandDialogMaxHeight(vg.getChildAt(i));
                }
            }
        }

        private DialogInterface showCouiDialog(View view) {
            try {
                Class<?> cls = Class.forName("com.coui.appcompat.dialog.COUIAlertDialogBuilder");
                Object builder = cls.getConstructor(Context.class).newInstance(this.context);
                cls.getMethod("setTitle", CharSequence.class).invoke(builder, getDialogTitle());
                cls.getMethod("setView", View.class).invoke(builder, view);
                cls.getMethod("setNegativeButton", CharSequence.class, DialogInterface.OnClickListener.class)
                        .invoke(builder, I18n.str("Hủy", "Cancel"), null);

                cls.getMethod("setPositiveButton", CharSequence.class, DialogInterface.OnClickListener.class)
                        .invoke(builder, I18n.str("Lưu", "Save"), new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                savePendingSelection();
                            }
                        });
                Object dlg = cls.getMethod("show").invoke(builder);
                if (dlg instanceof DialogInterface) {
                    return (DialogInterface) dlg;
                }
            } catch (Throwable th) {
                android.util.Log.e("PickerDiag", "showCouiDialog failed: ", th);
            }
            return null;
        }

        private void lockAllParentScrollViews(final View v) {
            if (v == null) return;
            String clsName = v.getClass().getName();
            if ((v instanceof ScrollView || clsName.contains("ScrollView")) && !(v instanceof ListView)) {
                v.setOverScrollMode(View.OVER_SCROLL_NEVER);
                v.setNestedScrollingEnabled(false);
                v.scrollTo(0, 0);
                v.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public boolean onTouch(View v1, MotionEvent ev) {
                        return true;
                    }
                });
            }
            if (v instanceof ViewGroup) {
                ViewGroup vg = (ViewGroup) v;
                for (int i = 0; i < vg.getChildCount(); i++) {
                    lockAllParentScrollViews(vg.getChildAt(i));
                }
            }
        }

        private CharSequence getDialogTitle() {
            if (this.preference != null && !TextUtils.isEmpty(this.preference.getTitle())) {
                return this.preference.getTitle();
            }
            return I18n.str("Tùy chỉnh chọn ứng dụng", "Customize Selection");
        }

        private View buildContentView() {
            final DialogRootLayout root = new DialogRootLayout(this.context);
            root.setOrientation(LinearLayout.VERTICAL);
            root.setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS);
            root.setPadding(dp(16), dp(4), dp(16), 0);

            // 1. Search Bar
            final LinearLayout searchContainer = new LinearLayout(this.context);
            searchContainer.setOrientation(LinearLayout.HORIZONTAL);
            searchContainer.setGravity(Gravity.CENTER_VERTICAL);
            searchContainer.setPadding(dp(14), 0, dp(10), 0);
            searchContainer.setBackground(makeRoundRect(this.bgSearch, dp(22)));
            searchContainer.setClickable(true);
            searchContainer.setFocusable(false);

            ImageView searchIcon = new ImageView(this.context);
            searchIcon.setImageDrawable(new SearchIconDrawable(this.textSecondary, dp(2), dp(20)));
            searchIcon.setClickable(true);
            searchIcon.setFocusable(false);
            LinearLayout.LayoutParams searchIconLp = new LinearLayout.LayoutParams(dp(20), dp(20));
            searchIconLp.setMargins(0, 0, dp(10), 0);
            searchContainer.addView(searchIcon, searchIconLp);

            this.searchEdit = new EditText(this.context);
            this.searchEdit.setSingleLine(true);
            this.searchEdit.setHint(I18n.str("Tìm kiếm ứng dụng hoặc lối tắt...", "Search apps or shortcuts..."));
            this.searchEdit.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15.0f);
            this.searchEdit.setTextColor(this.textPrimary);
            this.searchEdit.setHintTextColor(this.textSecondary);
            this.searchEdit.setGravity(Gravity.CENTER_VERTICAL);
            this.searchEdit.setPadding(0, 0, 0, 0);
            this.searchEdit.setBackground(null);
            this.searchEdit.setFocusable(true);
            this.searchEdit.setFocusableInTouchMode(true);
            this.searchEdit.setClickable(true);
            this.searchEdit.setImeOptions(EditorInfo.IME_ACTION_SEARCH | EditorInfo.IME_FLAG_NO_EXTRACT_UI);
            searchContainer.addView(this.searchEdit, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

            View.OnClickListener searchFocusClick = new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (searchEdit != null) {
                        searchEdit.requestFocus();
                        final InputMethodManager imm = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
                        if (imm != null) {
                            searchEdit.post(new Runnable() {
                                @Override
                                public void run() {
                                    imm.showSoftInput(searchEdit, 0);
                                }
                            });
                        }
                    }
                }
            };
            searchContainer.setOnClickListener(searchFocusClick);
            searchIcon.setOnClickListener(searchFocusClick);

            // EditText owns its normal focus/touch/IME behavior. Showing the IME
            // again from touch and focus listeners races with Back dismissal.

            this.searchEdit.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                @Override
                public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                    if (actionId == EditorInfo.IME_ACTION_SEARCH || actionId == EditorInfo.IME_ACTION_DONE) {
                        InputMethodManager imm = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
                        if (imm != null) {
                            imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
                        }
                        v.clearFocus();
                        return true;
                    }
                    return false;
                }
            });

            this.searchClearBtn = new ImageView(this.context);
            this.searchClearBtn.setImageDrawable(new ClearIconDrawable(this.textSecondary, dp(16)));
            this.searchClearBtn.setPadding(dp(4), dp(4), dp(4), dp(4));
            this.searchClearBtn.setVisibility(View.INVISIBLE);
            searchContainer.addView(this.searchClearBtn, new LinearLayout.LayoutParams(dp(26), dp(26)));

            this.searchClearBtn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (searchEdit != null) {
                        searchEdit.setText("");
                        searchEdit.requestFocus();
                        final InputMethodManager imm = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
                        if (imm != null) {
                            searchEdit.post(new Runnable() {
                                @Override
                                public void run() {
                                    imm.showSoftInput(searchEdit, 0);
                                }
                            });
                        }
                    }
                }
            });

            LinearLayout.LayoutParams searchLp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(44));
            searchLp.setMargins(0, dp(4), 0, dp(10));
            root.addView(searchContainer, searchLp);

            // 2. Tab Segment Bar
            this.modeFrame = new FrameLayout(this.context);
            this.modeFrame.setBackground(makeRoundRect(this.bgTabContainer, dp(18)));

            this.tabIndicator = new View(this.context);
            GradientDrawable indBg = makeRoundRect(this.bgTabActive, dp(15));
            if (!this.isDark) {
                indBg.setStroke(dp(1), 0x0D000000);
            }
            this.tabIndicator.setBackground(indBg);
            FrameLayout.LayoutParams indLp = new FrameLayout.LayoutParams(0, dp(32));
            indLp.leftMargin = dp(3);
            indLp.topMargin = dp(3);
            this.modeFrame.addView(this.tabIndicator, indLp);

            LinearLayout tabRow = new LinearLayout(this.context);
            tabRow.setOrientation(LinearLayout.HORIZONTAL);
            tabRow.setPadding(dp(3), dp(3), dp(3), dp(3));

            this.appTab = createModeTab(I18n.str("Ứng dụng", "Apps"));
            this.shortcutTab = createModeTab(I18n.str("Lối tắt", "Shortcuts"));
            tabRow.addView(this.appTab, new LinearLayout.LayoutParams(0, dp(32), 1.0f));
            tabRow.addView(this.shortcutTab, new LinearLayout.LayoutParams(0, dp(32), 1.0f));
            this.modeFrame.addView(tabRow, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            tabRow.bringToFront();
            tabRow.setElevation(dp(4));

            LinearLayout.LayoutParams tabFrameLp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(38));
            tabFrameLp.setMargins(0, 0, 0, dp(10));
            root.addView(this.modeFrame, tabFrameLp);

            updateModeTabs();

            this.modeFrame.post(new Runnable() {
                @Override
                public void run() {
                    moveModeIndicator(shortcutMode, false);
                }
            });

            this.appTab.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    setShortcutMode(false);
                }
            });

            this.shortcutTab.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    setShortcutMode(true);
                }
            });

            // 3. List View Container
            this.listFrame = new FrameLayout(this.context);
            this.appListView = createListView();
            this.shortcutListView = createListView();
            this.appAdapter = new AppAdapter(this.context, this.visibleAppItems, this);
            this.shortcutAdapter = new AppAdapter(this.context, this.visibleShortcutItems, this);
            this.appListView.setAdapter(this.appAdapter);
            this.shortcutListView.setAdapter(this.shortcutAdapter);
            this.listFrame.addView(this.appListView, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            this.listFrame.addView(this.shortcutListView, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

            // Status Text centered inside listFrame
            this.statusText = new TextView(this.context);
            this.statusText.setGravity(Gravity.CENTER);
            this.statusText.setTextColor(this.textSecondary);
            this.statusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14.0f);
            this.statusText.setText(I18n.str("Đang tải danh sách...", "Loading list..."));
            FrameLayout.LayoutParams statusLp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            statusLp.gravity = Gravity.CENTER;
            statusLp.leftMargin = dp(20);
            statusLp.rightMargin = dp(20);
            this.listFrame.addView(this.statusText, statusLp);

            int screenH = this.context.getResources().getDisplayMetrics().heightPixels;
            this.normalListH = Math.max(dp(380), Math.min(dp(500), (int) (screenH * 0.48f)));
            root.addView(this.listFrame, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, this.normalListH));

            updateActiveListVisibility();

            AbsListView.OnScrollListener hideImeOnScroll = new AbsListView.OnScrollListener() {
                @Override
                public void onScrollStateChanged(AbsListView view, int scrollState) {
                    if (scrollState == SCROLL_STATE_TOUCH_SCROLL) {
                        InputMethodManager imm = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
                        if (imm != null && searchEdit != null && searchEdit.hasFocus()) {
                            imm.hideSoftInputFromWindow(searchEdit.getWindowToken(), 0);
                            searchEdit.clearFocus();
                        }
                    }
                }

                @Override
                public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {}
            };
            this.appListView.setOnScrollListener(hideImeOnScroll);
            this.shortcutListView.setOnScrollListener(hideImeOnScroll);

            this.searchEdit.addTextChangedListener(new TextWatcher() {
                @Override
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

                @Override
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    if (searchClearBtn != null) {
                        searchClearBtn.setVisibility((s != null && s.length() > 0) ? View.VISIBLE : View.INVISIBLE);
                    }
                    filterItems();
                }

                @Override
                public void afterTextChanged(Editable s) {}
            });

            this.appListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    if (position >= 0 && position < visibleAppItems.size()) {
                        AppItem it = visibleAppItems.get(position);
                        selectPendingItem(it);
                    }
                }
            });

            this.shortcutListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    if (position >= 0 && position < visibleShortcutItems.size()) {
                        AppItem it = visibleShortcutItems.get(position);
                        selectPendingItem(it);
                    }
                }
            });

            return root;
        }


        private TextView createModeTab(String title) {
            TextView tv = new TextView(this.context);
            tv.setText(title);
            tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
            tv.setGravity(Gravity.CENTER);
            tv.setSingleLine(true);
            tv.setIncludeFontPadding(false);
            return tv;
        }

        private ListView createListView() {
            ListView lv = new ListView(this.context);
            lv.setFocusable(false);
            lv.setFocusableInTouchMode(false);
            lv.setItemsCanFocus(false);
            lv.setCacheColorHint(0);
            lv.setDivider(new ColorDrawable(this.dividerColor));
            lv.setDividerHeight(1);
            lv.setChoiceMode(ListView.CHOICE_MODE_NONE);
            lv.setFadingEdgeLength(0);
            lv.setScrollingCacheEnabled(false);
            lv.setSmoothScrollbarEnabled(true);
            lv.setVerticalScrollBarEnabled(true);
            lv.setClipToPadding(false);
            lv.setPadding(0, 0, 0, dp(6));
            lv.setOverScrollMode(View.OVER_SCROLL_NEVER);
            lv.setNestedScrollingEnabled(false);
            lv.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    ViewParent p = v.getParent();
                    while (p != null) {
                        p.requestDisallowInterceptTouchEvent(true);
                        p = p.getParent();
                    }
                    return false;
                }
            });
            return lv;
        }

        void setShortcutMode(boolean isShortcut) {
            if (this.shortcutMode == isShortcut || this.tabAnimating) return;
            if (this.searchEdit != null) {
                this.searchEdit.setHint(isShortcut ? I18n.str("Tìm kiếm lối tắt...", "Search shortcuts...") : I18n.str("Tìm kiếm ứng dụng...", "Search apps..."));
            }
            if (this.appListView == null || this.shortcutListView == null) {
                this.shortcutMode = isShortcut;
                updateModeTabs();
                updateActiveListVisibility();
                updateListHeight();
                return;
            }

            int dir = isShortcut ? 1 : -1;
            final ListView outgoing = this.shortcutMode ? this.shortcutListView : this.appListView;
            final ListView incoming = isShortcut ? this.shortcutListView : this.appListView;

            this.shortcutMode = isShortcut;
            this.tabAnimating = true;
            updateModeTabs();
            moveModeIndicator(isShortcut, true);
            updateStatusVisibility();
            updateListHeight();

            outgoing.animate().cancel();
            incoming.animate().cancel();
            outgoing.setVisibility(View.VISIBLE);
            incoming.setVisibility(View.VISIBLE);
            incoming.bringToFront();
            incoming.setAlpha(0.0f);
            incoming.setTranslationX(dp(16) * dir);

            outgoing.animate()
                    .alpha(0.0f)
                    .translationX((-dir) * dp(16))
                    .setDuration(120L)
                    .withLayer()
                    .withEndAction(new Runnable() {
                        @Override
                        public void run() {
                            outgoing.setVisibility(View.GONE);
                            outgoing.setAlpha(1.0f);
                            outgoing.setTranslationX(0.0f);
                        }
                    }).start();

            incoming.animate()
                    .alpha(1.0f)
                    .translationX(0.0f)
                    .setStartDelay(20L)
                    .setDuration(160L)
                    .withLayer()
                    .withEndAction(new Runnable() {
                        @Override
                        public void run() {
                            incoming.setAlpha(1.0f);
                            incoming.setTranslationX(0.0f);
                            tabAnimating = false;
                            updateStatusVisibility();
                        }
                    }).start();
        }

        private void updateModeTabs() {
            updateModeTab(this.appTab, !this.shortcutMode);
            updateModeTab(this.shortcutTab, this.shortcutMode);
        }

        private void updateModeTab(TextView tv, boolean active) {
            if (tv == null) return;
            tv.setTextColor(active ? this.textPrimary : this.textSecondary);
            tv.setTypeface(active ? Typeface.create("sans-serif-medium", Typeface.BOLD) : Typeface.create("sans-serif", Typeface.NORMAL));
        }

        void moveModeIndicator(boolean isShortcut, boolean animated) {
            if (this.modeFrame == null || this.tabIndicator == null) return;
            int totalW = this.modeFrame.getWidth() - dp(6);
            if (totalW <= 0) return;
            int halfW = totalW / 2;

            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) this.tabIndicator.getLayoutParams();
            if (lp.width != halfW || lp.height != dp(32)) {
                lp.width = halfW;
                lp.height = dp(32);
                lp.leftMargin = dp(3);
                lp.topMargin = dp(3);
                this.tabIndicator.setLayoutParams(lp);
            }

            float targetX = isShortcut ? halfW : 0.0f;
            this.tabIndicator.animate().cancel();
            if (animated) {
                this.tabIndicator.animate().translationX(targetX).setDuration(180L).withLayer().start();
            } else {
                this.tabIndicator.setTranslationX(targetX);
            }
        }

        private void updateActiveListVisibility() {
            if (this.appListView != null) {
                this.appListView.setVisibility(this.shortcutMode ? View.GONE : View.VISIBLE);
            }
            if (this.shortcutListView != null) {
                this.shortcutListView.setVisibility(this.shortcutMode ? View.VISIBLE : View.GONE);
            }
            updateStatusVisibility();
            updateListHeight();
        }

        void updateStatusVisibility() {
            if (this.statusText == null) return;
            boolean empty = !this.loaded || (this.shortcutMode ? this.visibleShortcutItems : this.visibleAppItems).isEmpty();
            this.statusText.setVisibility(empty ? View.VISIBLE : View.GONE);
            if (!empty) return;

            if (this.loaded) {
                if (this.shortcutMode) {
                    this.statusText.setText(I18n.str("Không có lối tắt phù hợp", "No matching shortcuts found"));
                } else {
                    this.statusText.setText(I18n.str("Không có ứng dụng phù hợp", "No matching apps found"));
                }
            } else {
                this.statusText.setText(I18n.str("Đang tải danh sách...", "Loading list..."));
            }
        }

        void updateListHeight() {
            if (this.listFrame == null) return;
            ViewGroup.LayoutParams lp = this.listFrame.getLayoutParams();
            if (lp != null && lp.height != this.normalListH) {
                lp.height = this.normalListH;
                this.listFrame.setLayoutParams(lp);
                this.listFrame.requestLayout();
            }
        }

        void selectPendingItem(AppItem appItem) {
            this.pendingItem = appItem;
            for (AppItem it : this.allItems) {
                it.selected = (it == appItem);
            }
            if (this.appAdapter != null) this.appAdapter.notifyDataSetChanged();
            if (this.shortcutAdapter != null) this.shortcutAdapter.notifyDataSetChanged();
        }

        void filterItems() {
            this.visibleAppItems.clear();
            this.visibleShortcutItems.clear();
            String rawQuery = (this.searchEdit != null && this.searchEdit.getText() != null)
                    ? this.searchEdit.getText().toString().trim() : "";
            String queryLower = rawQuery.toLowerCase(Locale.getDefault());
            String queryNorm = SearchPackagePickerDialog.stripDiacritics(rawQuery);

            for (AppItem item : this.allItems) {
                if (TextUtils.isEmpty(rawQuery)
                        || item.labelLower.contains(queryLower)
                        || item.labelNorm.contains(queryNorm)
                        || item.packageLower.contains(queryLower)
                        || item.appLabelLower.contains(queryLower)
                        || item.appLabelNorm.contains(queryNorm)
                        || item.shortcutIdLower.contains(queryLower)) {
                    if (item.shortcut) {
                        this.visibleShortcutItems.add(item);
                    } else {
                        this.visibleAppItems.add(item);
                    }
                }
            }
            if (this.appAdapter != null) this.appAdapter.notifyDataSetChanged();
            if (this.shortcutAdapter != null) this.shortcutAdapter.notifyDataSetChanged();
            updateStatusVisibility();
            updateListHeight();
        }

        
        void dismissDialog() {
            try {
                if (this.dialog instanceof Dialog) {
                    ((Dialog) this.dialog).dismiss();
                } else if (this.dialog != null) {
                    Method m = this.dialog.getClass().getMethod("dismiss");
                    m.invoke(this.dialog);
                }
            } catch (Throwable ignored) {}
        }

        void clearSelection() {
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
            editor.remove(this.keyPackage);
            editor.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_TARGET_TYPE));
            editor.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_ID));
            editor.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_LABEL));
            editor.apply();

            try {
                Context dps = this.context.createDeviceProtectedStorageContext();
                if (dps != null) {
                    SharedPreferences.Editor edDe = PreferenceManager.getDefaultSharedPreferences(dps).edit();
                    edDe.remove(this.keyPackage);
                    edDe.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_TARGET_TYPE));
                    edDe.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_ID));
                    edDe.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_LABEL));
                    edDe.apply();
                }
            } catch (Throwable ignored) {}

            this.selectedPackage = "";
            this.selectedShortcutId = "";
            this.selectedTargetType = "";
            SearchPackagePreferenceHelper.updateSummaryForKey(this.context, this.preference, this.keyPackage, this.emptySummary);
            SearchPackageIndicatorHelper.reload();
            Toast.makeText(this.context, I18n.str("Đã đặt lại về mặc định", "Reset to default"), Toast.LENGTH_SHORT).show();
            dismissDialog();
        }

        void savePendingSelection() {
            if (this.pendingItem == null) {
                for (AppItem it : this.allItems) {
                    if (it.selected) {
                        this.pendingItem = it;
                        break;
                    }
                }
            }
            if (this.pendingItem == null) return;
            saveSelectedPackage(this.pendingItem);
        }

        private void saveSelectedPackage(AppItem appItem) {
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
            editor.putString(this.keyPackage, appItem.packageName);
            if (appItem.shortcut) {
                editor.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_TARGET_TYPE), SearchPackagePickerDialog.TARGET_TYPE_SHORTCUT);
                editor.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_ID), appItem.shortcutId);
                editor.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_LABEL), appItem.label);
                this.selectedTargetType = SearchPackagePickerDialog.TARGET_TYPE_SHORTCUT;
                this.selectedShortcutId = appItem.shortcutId;
            } else {
                editor.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_TARGET_TYPE), SearchPackagePickerDialog.TARGET_TYPE_APP);
                editor.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_ID));
                editor.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_LABEL));
                this.selectedTargetType = SearchPackagePickerDialog.TARGET_TYPE_APP;
                this.selectedShortcutId = "";
            }
            editor.apply();

            try {
                Context dps = this.context.createDeviceProtectedStorageContext();
                if (dps != null) {
                    SharedPreferences.Editor edDe = PreferenceManager.getDefaultSharedPreferences(dps).edit();
                    edDe.putString(this.keyPackage, appItem.packageName);
                    if (appItem.shortcut) {
                        edDe.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_TARGET_TYPE), SearchPackagePickerDialog.TARGET_TYPE_SHORTCUT);
                        edDe.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_ID), appItem.shortcutId);
                        edDe.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_LABEL), appItem.label);
                    } else {
                        edDe.putString(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_TARGET_TYPE), SearchPackagePickerDialog.TARGET_TYPE_APP);
                        edDe.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_ID));
                        edDe.remove(SearchPackagePickerDialog.metaKey(this.keyPackage, SearchPackagePickerDialog.SUFFIX_SHORTCUT_LABEL));
                    }
                    edDe.apply();
                }
            } catch (Throwable ignored) {}

            this.selectedPackage = appItem.packageName;
            SearchPackagePreferenceHelper.updateSummaryForKey(this.context, this.preference, this.keyPackage, this.emptySummary);
            SearchPackageIndicatorHelper.reload();
            Toast.makeText(this.context, I18n.str("Đã chọn: ", "Selected: ") + appItem.label, Toast.LENGTH_SHORT).show();
        }

        private void loadLaunchableAppsAsync() {
            this.loaded = false;
            filterItems();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    Process.setThreadPriority(Process.THREAD_PRIORITY_BACKGROUND);
                    final ArrayList<AppItem> list;
                    try {
                        list = loadLaunchableApps();
                    } catch (Throwable th) {
                        return;
                    }
                    if (statusText != null) {
                        statusText.post(new Runnable() {
                            @Override
                            public void run() {
                                allItems.clear();
                                allItems.addAll(list);
                                loaded = true;
                                filterItems();
                            }
                        });
                    }
                }
            }, "wk-picker-loader").start();
        }

        private ArrayList<AppItem> loadLaunchableApps() {
            ArrayList<AppItem> list = new ArrayList<>();
            HashMap<String, AppInfo> appInfoMap = new HashMap<>();
            PackageManager pm = this.context.getPackageManager();

            Intent mainIntent = new Intent(Intent.ACTION_MAIN);
            mainIntent.addCategory(Intent.CATEGORY_LAUNCHER);
            List<ResolveInfo> resolveInfos = pm.queryIntentActivities(mainIntent, PackageManager.MATCH_ALL);
            HashSet<String> seenPackages = new HashSet<>();

            if (resolveInfos != null) {
                for (ResolveInfo ri : resolveInfos) {
                    if (ri != null && ri.activityInfo != null && ri.activityInfo.applicationInfo != null) {
                        ApplicationInfo ai = ri.activityInfo.applicationInfo;
                        String pkg = ai.packageName;
                        if (!TextUtils.isEmpty(pkg) && seenPackages.add(pkg)) {
                            boolean isSys = isSystemApp(ai);
                            boolean isSel = isSelectedApp(pkg);
                            CharSequence label = ri.loadLabel(pm);
                            if (TextUtils.isEmpty(label)) {
                                label = pm.getApplicationLabel(ai);
                            }
                            Bitmap icon = loadIconBitmap(ri.loadIcon(pm));
                            AppItem item = AppItem.app(String.valueOf(label), pkg, isSys, isSel, icon);
                            if (isSel && pendingItem == null) pendingItem = item;
                            list.add(item);
                            appInfoMap.put(pkg, new AppInfo(item.label, isSys, icon));
                        }
                    }
                }
            }

            try {
                for (ApplicationInfo ai : pm.getInstalledApplications(PackageManager.MATCH_ALL)) {
                    if (ai != null && !TextUtils.isEmpty(ai.packageName)) {
                        String pkg = ai.packageName;
                        if (!seenPackages.contains(pkg) && pm.getLaunchIntentForPackage(pkg) != null) {
                            boolean isSys = isSystemApp(ai);
                            boolean isSel = isSelectedApp(pkg);
                            CharSequence label = pm.getApplicationLabel(ai);
                            Bitmap icon = loadIconBitmap(pm.getApplicationIcon(ai));
                            seenPackages.add(pkg);
                            AppItem item = AppItem.app(String.valueOf(label), pkg, isSys, isSel, icon);
                            if (isSel && pendingItem == null) pendingItem = item;
                            list.add(item);
                            appInfoMap.put(pkg, new AppInfo(item.label, isSys, icon));
                        }
                    }
                }
            } catch (Throwable ignored) {}

            loadShortcuts(list, appInfoMap, pm);

            final Collator collator = Collator.getInstance(Locale.getDefault());
            Collections.sort(list, new Comparator<AppItem>() {
                @Override
                public int compare(AppItem o1, AppItem o2) {
                    if (o1.shortcut != o2.shortcut) {
                        return o1.shortcut ? 1 : -1;
                    }
                    if (o1.selected != o2.selected) {
                        return o1.selected ? -1 : 1;
                    }
                    int c = collator.compare(o1.appLabel, o2.appLabel);
                    if (c != 0) return c;
                    c = collator.compare(o1.label, o2.label);
                    if (c != 0) return c;
                    return collator.compare(o1.packageName, o2.packageName);
                }
            });

            return list;
        }

        private void loadShortcuts(ArrayList<AppItem> list, HashMap<String, AppInfo> map, PackageManager pm) {
            Object service = this.context.getSystemService("launcherapps");
            if (!(service instanceof LauncherApps)) return;
            LauncherApps launcherApps = (LauncherApps) service;

            try {
                LauncherApps.ShortcutQuery query = new LauncherApps.ShortcutQuery();
                query.setQueryFlags(LauncherApps.ShortcutQuery.FLAG_MATCH_DYNAMIC 
                        | LauncherApps.ShortcutQuery.FLAG_MATCH_MANIFEST 
                        | LauncherApps.ShortcutQuery.FLAG_MATCH_PINNED);
                List<ShortcutInfo> shortcuts = launcherApps.getShortcuts(query, Process.myUserHandle());
                if (shortcuts == null || shortcuts.isEmpty()) return;

                HashSet<String> seen = new HashSet<>();
                int dpi = this.context.getResources().getDisplayMetrics().densityDpi;

                for (ShortcutInfo si : shortcuts) {
                    if (si != null && !TextUtils.isEmpty(si.getPackage()) && !TextUtils.isEmpty(si.getId())) {
                        try {
                            if (si.isEnabled()) {
                                String pkg = si.getPackage();
                                String id = si.getId();
                                if (seen.add(pkg + "\n" + id)) {
                                    AppInfo appInfo = map.get(pkg);
                                    if (appInfo == null) {
                                        appInfo = loadAppInfo(pm, pkg);
                                        if (appInfo != null) map.put(pkg, appInfo);
                                    }
                                    if (appInfo != null) {
                                        CharSequence shortLabel = si.getShortLabel();
                                        String label = TextUtils.isEmpty(shortLabel) ? appInfo.label : String.valueOf(shortLabel);
                                        Bitmap icon = null;
                                        try {
                                            icon = loadIconBitmap(launcherApps.getShortcutIconDrawable(si, dpi));
                                        } catch (Throwable ignored) {}
                                        boolean isSel = isSelectedShortcut(pkg, id);
                                        AppItem item = AppItem.shortcut(label, pkg, appInfo.label, id, appInfo.system, isSel, icon);
                                        if (isSel && pendingItem == null) pendingItem = item;
                                        list.add(item);
                                    }
                                }
                            }
                        } catch (Throwable ignored) {}
                    }
                }
            } catch (Throwable ignored) {}
        }

        private AppInfo loadAppInfo(PackageManager pm, String pkg) {
            try {
                ApplicationInfo ai = pm.getApplicationInfo(pkg, PackageManager.MATCH_ALL);
                CharSequence label = pm.getApplicationLabel(ai);
                Bitmap icon = loadIconBitmap(pm.getApplicationIcon(ai));
                String name = !TextUtils.isEmpty(label) ? String.valueOf(label) : pkg;
                return new AppInfo(name, isSystemApp(ai), icon);
            } catch (Throwable ignored) {
                return null;
            }
        }

        private Bitmap loadIconBitmap(Drawable drawable) {
            if (drawable == null) return null;
            int size = dp(42);
            Bitmap bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);

            Rect bounds = drawable.getBounds();
            int oldL = bounds.left, oldT = bounds.top, oldR = bounds.right, oldB = bounds.bottom;
            int intW = drawable.getIntrinsicWidth() <= 0 ? size : drawable.getIntrinsicWidth();
            int intH = drawable.getIntrinsicHeight() <= 0 ? size : drawable.getIntrinsicHeight();
            float scale = Math.min((float) size / intW, (float) size / intH);
            int dw = Math.max(1, Math.round(intW * scale));
            int dh = Math.max(1, Math.round(intH * scale));
            int dx = (size - dw) / 2;
            int dy = (size - dh) / 2;
            drawable.setBounds(dx, dy, dx + dw, dy + dh);
            drawable.draw(canvas);
            drawable.setBounds(oldL, oldT, oldR, oldB);

            Bitmap rounded = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
            Canvas roundCanvas = new Canvas(rounded);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
            paint.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            RectF rect = new RectF(0, 0, size, size);
            float radius = dp(9);
            roundCanvas.drawRoundRect(rect, radius, radius, paint);
            bitmap.recycle();
            return rounded;
        }

        private boolean isSystemApp(ApplicationInfo ai) {
            return (ai != null && ((ai.flags & ApplicationInfo.FLAG_SYSTEM) != 0 || (ai.flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0));
        }

        private boolean isSelectedApp(String pkg) {
            return !SearchPackagePickerDialog.TARGET_TYPE_SHORTCUT.equals(this.selectedTargetType) && pkg.equals(this.selectedPackage);
        }

        private boolean isSelectedShortcut(String pkg, String id) {
            return SearchPackagePickerDialog.TARGET_TYPE_SHORTCUT.equals(this.selectedTargetType) && pkg.equals(this.selectedPackage) && id.equals(this.selectedShortcutId);
        }

        private static int resolveAccentColor(Context context, boolean isDark) {
            int defaultAccent = isDark ? 0xFF3D8CFF : 0xFF0066CC;
            try {
                int[] attrCandidates = new int[] {
                    context.getResources().getIdentifier("couiColorPrimary", "attr", context.getPackageName()),
                    context.getResources().getIdentifier("couiColorPrimary", "attr", "com.coui.appcompat"),
                    context.getResources().getIdentifier("couiThemeColor", "attr", context.getPackageName()),
                    context.getResources().getIdentifier("couiThemeColor", "attr", "com.coui.appcompat")
                };
                TypedValue tv = new TypedValue();
                for (int attr : attrCandidates) {
                    if (attr != 0 && context.getTheme().resolveAttribute(attr, tv, true) && tv.data != 0) {
                        if (isValidColor(tv.data)) return tv.data;
                    }
                }
            } catch (Throwable ignored) {}

            try {
                int resAccent = isDark ? android.R.color.system_accent1_400 : android.R.color.system_accent1_600;
                int c = context.getColor(resAccent);
                if (isValidColor(c)) return c;
            } catch (Throwable ignored) {}

            try {
                TypedValue tv = new TypedValue();
                if (context.getTheme().resolveAttribute(android.R.attr.colorAccent, tv, true) && tv.data != 0) {
                    if (isValidColor(tv.data)) return tv.data;
                }
            } catch (Throwable ignored) {}

            return defaultAccent;
        }

        private static boolean isValidColor(int color) {
            if (color == 0) return false;
            int r = (color >> 16) & 0xFF;
            int g = (color >> 8) & 0xFF;
            int b = color & 0xFF;
            if (r > 230 && g > 230 && b > 230) return false;
            if (r < 25 && g < 25 && b < 25) return false;
            return true;
        }

        int dp(int v) {
            return (int) ((v * this.context.getResources().getDisplayMetrics().density) + 0.5f);
        }

        GradientDrawable makeRoundRect(int color, int radius) {
            GradientDrawable gd = new GradientDrawable();
            gd.setColor(color);
            gd.setCornerRadius(radius);
            return gd;
        }
    }

    private static final class AppInfo {
        final Bitmap icon;
        final String label;
        final boolean system;

        AppInfo(String label, boolean system, Bitmap icon) {
            this.label = label;
            this.system = system;
            this.icon = icon;
        }
    }

    private static final class AppItem {
        final String appLabel;
        final String appLabelLower;
        final String appLabelNorm;
        final Bitmap icon;
        final String label;
        final String labelLower;
        final String labelNorm;
        final String packageLower;
        final String packageName;
        boolean selected;
        final boolean shortcut;
        final String shortcutId;
        final String shortcutIdLower;
        final String subtitle;
        final boolean system;

        static AppItem app(String label, String pkg, boolean sys, boolean sel, Bitmap icon) {
            return new AppItem(label, pkg, label, "", false, sys, sel, icon);
        }

        static AppItem shortcut(String label, String pkg, String appLabel, String shortcutId, boolean sys, boolean sel, Bitmap icon) {
            return new AppItem(label, pkg, appLabel, shortcutId, true, sys, sel, icon);
        }

        private static String cleanStr(String s) {
            if (s == null) return "";
            return s.replaceAll("[\\r\\n\\t\\u0000-\\u001f]+", " ").trim();
        }

        AppItem(String label, String pkg, String appLabel, String shortcutId, boolean isShortcut, boolean sys, boolean sel, Bitmap icon) {
            String rawLabel = TextUtils.isEmpty(label) ? pkg : label;
            String cleanedLabel = cleanStr(rawLabel);
            this.label = TextUtils.isEmpty(cleanedLabel) ? pkg : cleanedLabel;
            this.packageName = pkg;
            String rawAppLabel = TextUtils.isEmpty(appLabel) ? this.label : appLabel;
            String cleanedAppLabel = cleanStr(rawAppLabel);
            this.appLabel = TextUtils.isEmpty(cleanedAppLabel) ? this.label : cleanedAppLabel;
            this.shortcutId = shortcutId == null ? "" : shortcutId;
            this.shortcut = isShortcut;
            this.labelLower = this.label.toLowerCase(Locale.getDefault());
            this.labelNorm = SearchPackagePickerDialog.stripDiacritics(this.label);
            this.packageLower = this.packageName.toLowerCase(Locale.US);
            this.appLabelLower = this.appLabel.toLowerCase(Locale.getDefault());
            this.appLabelNorm = SearchPackagePickerDialog.stripDiacritics(this.appLabel);
            this.shortcutIdLower = this.shortcutId.toLowerCase(Locale.US);
            this.system = sys;
            this.selected = sel;
            this.icon = icon;
            this.subtitle = isShortcut ? (this.appLabel + " · " + this.packageName) : this.packageName;
        }
    }

    private static final class AppAdapter extends BaseAdapter {
        private final Context context;
        private final ArrayList<AppItem> items;
        private final Controller controller;

        AppAdapter(Context context, ArrayList<AppItem> items, Controller controller) {
            this.context = context;
            this.items = items;
            this.controller = controller;
        }

        @Override
        public int getCount() {
            return this.items.size();
        }

        @Override
        public Object getItem(int position) {
            return this.items.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder;
            if (convertView == null) {
                LinearLayout row = new LinearLayout(this.context);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setMinimumHeight(dp(64));
                row.setPadding(dp(4), dp(8), dp(4), dp(8));

                TypedValue outValue = new TypedValue();
                if (this.context.getTheme().resolveAttribute(android.R.attr.selectableItemBackground, outValue, true)) {
                    row.setBackgroundResource(outValue.resourceId);
                }

                ImageView iconView = new ImageView(this.context);
                iconView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                row.addView(iconView, new LinearLayout.LayoutParams(dp(42), dp(42)));

                LinearLayout textCol = new LinearLayout(this.context);
                textCol.setOrientation(LinearLayout.VERTICAL);
                textCol.setGravity(Gravity.CENTER_VERTICAL);
                textCol.setPadding(dp(14), 0, dp(8), 0);
                row.addView(textCol, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

                LinearLayout titleRow = new LinearLayout(this.context);
                titleRow.setOrientation(LinearLayout.HORIZONTAL);
                titleRow.setGravity(Gravity.CENTER_VERTICAL);
                textCol.addView(titleRow, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

                TextView labelView = new TextView(this.context);
                labelView.setTextColor(controller.textPrimary);
                labelView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15.5f);
                labelView.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
                labelView.setSingleLine(true);
                labelView.setEllipsize(TextUtils.TruncateAt.END);
                titleRow.addView(labelView, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

                TextView badgeView = new TextView(this.context);
                badgeView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.0f);
                badgeView.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
                badgeView.setTextColor(controller.badgeText);
                badgeView.setPadding(dp(5), dp(1), dp(5), dp(1));
                badgeView.setBackground(controller.makeRoundRect(controller.badgeBg, dp(4)));
                badgeView.setText("Hệ thống");
                badgeView.setSingleLine(true);
                badgeView.setMaxLines(1);
                LinearLayout.LayoutParams badgeLp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                badgeLp.leftMargin = dp(6);
                titleRow.addView(badgeView, badgeLp);

                TextView subView = new TextView(this.context);
                subView.setTextColor(controller.textSecondary);
                subView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
                subView.setTypeface(Typeface.create("sans-serif", Typeface.NORMAL));
                subView.setSingleLine(true);
                subView.setMaxLines(1);
                subView.setEllipsize(TextUtils.TruncateAt.END);
                LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                subLp.topMargin = dp(2);
                textCol.addView(subView, subLp);

                ImageView radioView = new ImageView(this.context);
                radioView.setScaleType(ImageView.ScaleType.CENTER);
                LinearLayout.LayoutParams radioLp = new LinearLayout.LayoutParams(dp(22), dp(22));
                radioLp.setMargins(dp(8), 0, dp(4), 0);
                row.addView(radioView, radioLp);

                holder = new ViewHolder();
                holder.icon = iconView;
                holder.label = labelView;
                holder.subtitle = subView;
                holder.systemBadge = badgeView;
                holder.radio = radioView;
                row.setTag(holder);
                convertView = row;
            } else {
                holder = (ViewHolder) convertView.getTag();
            }

            AppItem item = this.items.get(position);
            holder.icon.setImageBitmap(item.icon);
            holder.label.setText(item.label);
            holder.subtitle.setText(item.subtitle);
            holder.systemBadge.setVisibility(item.system ? View.VISIBLE : View.GONE);
            holder.radio.setImageDrawable(new RadioDrawable(item.selected, dp(22), controller.accentColor, controller.isDark));

            return convertView;
        }

        private int dp(int v) {
            return (int) ((v * this.context.getResources().getDisplayMetrics().density) + 0.5f);
        }
    }

    private static final class ViewHolder {
        ImageView icon;
        TextView label;
        TextView subtitle;
        TextView systemBadge;
        ImageView radio;
    }

    private static final class RadioDrawable extends Drawable {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final boolean selected;
        private final int size;
        private final int accentColor;
        private final boolean isDark;

        RadioDrawable(boolean selected, int size, int accentColor, boolean isDark) {
            this.selected = selected;
            this.size = size;
            this.accentColor = accentColor;
            this.isDark = isDark;
        }

        @Override
        public void draw(Canvas canvas) {
            float cx = this.size / 2.0f;
            float cy = this.size / 2.0f;
            if (this.selected) {
                float radius = (this.size - 2.0f) / 2.0f;
                this.paint.setStyle(Paint.Style.FILL);
                this.paint.setColor(this.accentColor);
                canvas.drawCircle(cx, cy, radius, this.paint);

                this.paint.setColor(0xFFFFFFFF);
                canvas.drawCircle(cx, cy, radius * 0.40f, this.paint);
            } else {
                float strokeW = Math.max(1.5f, this.size * 0.07f);
                this.paint.setStyle(Paint.Style.STROKE);
                this.paint.setStrokeWidth(strokeW);
                this.paint.setColor(this.isDark ? 0xFF585858 : 0xFFCCCCCC);
                canvas.drawCircle(cx, cy, (this.size - strokeW) / 2.0f, this.paint);
            }
        }

        @Override
        public void setAlpha(int alpha) {
            this.paint.setAlpha(alpha);
        }

        @Override
        public void setColorFilter(ColorFilter colorFilter) {
            this.paint.setColorFilter(colorFilter);
        }

        @Override
        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }

        @Override
        public int getIntrinsicWidth() {
            return this.size;
        }

        @Override
        public int getIntrinsicHeight() {
            return this.size;
        }
    }

    private static final class SearchIconDrawable extends Drawable {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final int size;

        SearchIconDrawable(int color, int strokeWidth, int size) {
            this.size = size;
            this.paint.setColor(color);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(strokeWidth);
            this.paint.setStrokeCap(Paint.Cap.ROUND);
        }

        @Override
        public void draw(Canvas canvas) {
            float f = this.size / 24.0f;
            float f2 = 10.0f * f;
            canvas.drawCircle(f2, f2, 6.2f * f, this.paint);
            float f3 = f * 14.8f;
            float f4 = f * 21.0f;
            canvas.drawLine(f3, f3, f4, f4, this.paint);
        }

        @Override
        public void setAlpha(int alpha) {
            this.paint.setAlpha(alpha);
        }

        @Override
        public void setColorFilter(ColorFilter colorFilter) {
            this.paint.setColorFilter(colorFilter);
        }

        @Override
        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }

        @Override
        public int getIntrinsicWidth() {
            return this.size;
        }

        @Override
        public int getIntrinsicHeight() {
            return this.size;
        }
    }

    private static final class ClearIconDrawable extends Drawable {
        private final Paint linePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint bgPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final int size;

        ClearIconDrawable(int color, int size) {
            this.size = size;
            this.linePaint.setColor(color);
            this.linePaint.setStyle(Paint.Style.STROKE);
            this.linePaint.setStrokeWidth(Math.max(1.8f, size * 0.12f));
            this.linePaint.setStrokeCap(Paint.Cap.ROUND);

            this.bgPaint.setStyle(Paint.Style.FILL);
            this.bgPaint.setColor((color & 0x00FFFFFF) | 0x22000000);
        }

        @Override
        public void draw(Canvas canvas) {
            float cx = this.size / 2.0f;
            float cy = this.size / 2.0f;
            canvas.drawCircle(cx, cy, this.size * 0.48f, this.bgPaint);

            float pad = this.size * 0.30f;
            canvas.drawLine(pad, pad, this.size - pad, this.size - pad, this.linePaint);
            canvas.drawLine(this.size - pad, pad, pad, this.size - pad, this.linePaint);
        }

        @Override
        public void setAlpha(int alpha) {
            this.linePaint.setAlpha(alpha);
        }

        @Override
        public void setColorFilter(ColorFilter colorFilter) {
            this.linePaint.setColorFilter(colorFilter);
        }

        @Override
        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }

        @Override
        public int getIntrinsicWidth() {
            return this.size;
        }

        @Override
        public int getIntrinsicHeight() {
            return this.size;
        }
    }
}
