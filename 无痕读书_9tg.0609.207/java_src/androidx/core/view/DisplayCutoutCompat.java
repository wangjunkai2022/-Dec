package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import androidx.annotation.RequiresApi;
import com.apk.Cgoto;
import java.util.List;
/* loaded from: classes8.dex */
public final class DisplayCutoutCompat {
    public final Object mDisplayCutout;

    public DisplayCutoutCompat(Rect rect, List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? new DisplayCutout(rect, list) : null);
    }

    public static DisplayCutoutCompat wrap(Object obj) {
        if (obj == null) {
            return null;
        }
        return new DisplayCutoutCompat(obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        DisplayCutoutCompat displayCutoutCompat = (DisplayCutoutCompat) obj;
        Object obj2 = this.mDisplayCutout;
        if (obj2 == null) {
            return displayCutoutCompat.mDisplayCutout == null;
        }
        return obj2.equals(displayCutoutCompat.mDisplayCutout);
    }

    public List<Rect> getBoundingRects() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getBoundingRects();
        }
        return null;
    }

    public int getSafeInsetBottom() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetBottom();
        }
        return 0;
    }

    public int getSafeInsetLeft() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetLeft();
        }
        return 0;
    }

    public int getSafeInsetRight() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetRight();
        }
        return 0;
    }

    public int getSafeInsetTop() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.mDisplayCutout).getSafeInsetTop();
        }
        return 0;
    }

    public int hashCode() {
        Object obj = this.mDisplayCutout;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("DisplayCutoutCompat{");
        m1016super.append(this.mDisplayCutout);
        m1016super.append("}");
        return m1016super.toString();
    }

    @RequiresApi(api = 28)
    public DisplayCutout unwrap() {
        return (DisplayCutout) this.mDisplayCutout;
    }

    public DisplayCutoutCompat(Object obj) {
        this.mDisplayCutout = obj;
    }
}
