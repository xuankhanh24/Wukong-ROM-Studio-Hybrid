package androidx.preference;
import android.content.Context;
public class Preference {
    public Preference(Context c) {}
    public Context getContext() { return null; }
    public void setKey(String k) {}
    public String getKey() { return null; }
    public void setPersistent(boolean b) {}
    public void setDefaultValue(Object o) {}
    public void setTitle(CharSequence t) {}
    public CharSequence getTitle() { return null; }
    public void setSummary(CharSequence s) {}
    public CharSequence getSummary() { return null; }
    public void setDependency(String d) {}
    public interface OnPreferenceClickListener {
        boolean onPreferenceClick(Preference preference);
    }
    public void setOnPreferenceClickListener(OnPreferenceClickListener l) {}
}
