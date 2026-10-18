package com.coui.appcompat.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;

public class COUIPreference extends Preference {
    public COUIPreference(Context context) {
        super(context);
    }

    public COUIPreference(Context context, AttributeSet attrs) {
        super(context);
    }

    public COUIPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context);
    }

    public void onBindViewHolder(PreferenceViewHolder holder) {}
    public void setLayoutResource(int resId) {}
    public void setSelectable(boolean selectable) {}
    public boolean isEnabled() { return true; }
    public void setEnabled(boolean enabled) {}
    public androidx.preference.PreferenceManager getPreferenceManager() { return null; }
    public int getPersistedInt(int def) { return def; }
    public void persistInt(int val) {}
}
