package android.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.PreferenceViewHolder;
import com.coui.appcompat.preference.COUIPreference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * COUI / AndroidX SeekBar Preference cho việc điều chỉnh số lượng icon mở rộng trên Taskbar
 */
public class WkTaskbarSeekBarPreference extends COUIPreference {
    private View mSeekBar;
    private TextView mValueView;

    public WkTaskbarSeekBarPreference(Context context) {
        this(context, null);
    }

    public WkTaskbarSeekBarPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        initLayout(context);
    }

    public WkTaskbarSeekBarPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initLayout(context);
    }

    private void initLayout(Context context) {
        int resId = context.getResources().getIdentifier("wk_taskbar_seekbar_preference", "layout", context.getPackageName());
        if (resId == 0) throw new IllegalStateException("Missing taskbar slider layout");
        setLayoutResource(resId);

        try {
            // A17's Preference exposes setSelectable() without a boolean argument.
            try {
                getClass().getMethod("setSelectable", boolean.class).invoke(this, true);
            } catch (NoSuchMethodException e) {
                getClass().getMethod("setSelectable").invoke(this);
            }
        } catch (Throwable ignored) {}
    }

    private void updateValueText(int value) {
        if (mValueView != null) {
            mValueView.setText(Integer.toString(value));
        }
    }

    private String preferenceKey() {
        String key = getKey();
        return key == null || key.isEmpty() ? "wk_taskbar_expand_count" : key;
    }

    private int getSavedInt(int def) {
        SharedPreferences preferences = TweaksHelper.getPrefs();
        return preferences == null ? def : preferences.getInt(preferenceKey(), def);
    }

    public void saveProgress(int progress) {
        progress = Math.max(1, Math.min(6, progress));
        SharedPreferences preferences = TweaksHelper.getPrefs();
        if (preferences != null) {
            // apply updates in-memory state immediately and writes off the UI thread.
            preferences.edit().putInt(preferenceKey(), progress).apply();
        }

        try {
            Class<?> em = Class.forName("com.android.launcher3.hotseat.expand.ExpandDataManager");
            Method m = em.getMethod("updateRecentTaskDelay");
            m.invoke(null);
        } catch (Throwable ignored) {}
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        Context ctx = getContext();

        int seekbarId = 0;
        int valueId = 0;
        try {
            seekbarId = ctx.getResources().getIdentifier("seekbar", "id", ctx.getPackageName());
            if (seekbarId == 0) {
                seekbarId = ctx.getResources().getIdentifier("seek_bar", "id", ctx.getPackageName());
            }
            valueId = ctx.getResources().getIdentifier("seekbar_value", "id", ctx.getPackageName());
        } catch (Throwable ignored) {}

        if (seekbarId == 0 || valueId == 0) throw new IllegalStateException("Missing taskbar slider view IDs");

        View seekView = null;
        View valView = null;
        if (holder.itemView != null) {
            seekView = holder.itemView.findViewById(seekbarId);
            valView = holder.itemView.findViewById(valueId);
        }
        if (seekView == null) {
            try { seekView = holder.a(seekbarId); } catch (Throwable ignored) {}
        }
        if (valView == null) {
            try { valView = holder.a(valueId); } catch (Throwable ignored) {}
        }

        mSeekBar = seekView;
        if (valView instanceof TextView) {
            mValueView = (TextView) valView;
        }

        if (mSeekBar != null) {
            int max = 6;
            try {
                Method mSetMax = mSeekBar.getClass().getMethod("setMax", int.class);
                mSetMax.invoke(mSeekBar, max);
            } catch (Throwable ignored) {}

            try {
                Method mSetMin = mSeekBar.getClass().getMethod("setMin", int.class);
                mSetMin.invoke(mSeekBar, 1);
            } catch (Throwable ignored) {}

            int saved = getSavedInt(5);
            if (saved < 1) saved = 1;
            if (saved > max) saved = max;

            try {
                Method mSetProg = mSeekBar.getClass().getMethod("setProgress", int.class);
                mSetProg.invoke(mSeekBar, saved);
            } catch (Throwable ignored) {}

            updateValueText(saved);

            boolean en = isEnabled();
            try { mSeekBar.setEnabled(en); } catch (Throwable ignored) {}
            if (mValueView != null) {
                mValueView.setEnabled(en);
            }

            setupSeekBarListener(mSeekBar);
        }
    }

    private void setupSeekBarListener(final View seekBar) {
        try {
            Method mListener = null;
            Class<?> listenerType = null;
            for (Method m : seekBar.getClass().getMethods()) {
                if ("setOnSeekBarChangeListener".equals(m.getName()) && m.getParameterTypes().length == 1) {
                    Class<?> p = m.getParameterTypes()[0];
                    if (p.isInterface()) {
                        mListener = m;
                        listenerType = p;
                        break;
                    }
                }
            }

            if (mListener != null && listenerType != null) {
                Object proxy = Proxy.newProxyInstance(
                        listenerType.getClassLoader(),
                        new Class<?>[]{listenerType},
                        new InvocationHandler() {
                            @Override
                            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                                String name = method.getName();
                                if (method.getDeclaringClass() == Object.class) {
                                    if ("hashCode".equals(name)) return System.identityHashCode(proxy);
                                    if ("equals".equals(name)) return args != null && args.length == 1 && proxy == args[0];
                                    if ("toString".equals(name)) return "LauncherTaskbarSeekBarListener";
                                }
                                // A17 COUI callbacks are b(view, int), a(view), c(view).
                                // Match their signatures rather than names changed by R8.
                                if (args != null && args.length >= 2 && args[1] instanceof Number) {
                                    int progress = ((Number) args[1]).intValue();
                                    if (progress < 1) {
                                        progress = 1;
                                        try {
                                            Method mSetProg = seekBar.getClass().getMethod("setProgress", int.class);
                                            mSetProg.invoke(seekBar, 1);
                                        } catch (Throwable ignored) {}
                                    }
                                    updateValueText(progress);
                                } else if (args != null && args.length == 1 && args[0] instanceof View) {
                                    try {
                                        Method mGetProg = seekBar.getClass().getMethod("getProgress");
                                        int progress = ((Integer) mGetProg.invoke(seekBar)).intValue();
                                        if (progress < 1) progress = 1;
                                        saveProgress(progress);
                                    } catch (Throwable ignored) {}
                                }
                                return null;
                            }
                        });
                mListener.invoke(seekBar, proxy);
            }
        } catch (Throwable ignored) {}
    }

    @Override
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (mSeekBar != null) mSeekBar.setEnabled(enabled);
        if (mValueView != null) mValueView.setEnabled(enabled);
    }
}
