package androidx.core.graphics;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.apk.Cgoto;
/* loaded from: classes8.dex */
public final class Insets {
    @NonNull
    public static final Insets NONE = new Insets(0, 0, 0, 0);
    public final int bottom;
    public final int left;
    public final int right;

    /* renamed from: top  reason: collision with root package name */
    public final int f10610top;

    public Insets(int i, int i2, int i3, int i4) {
        this.left = i;
        this.f10610top = i2;
        this.right = i3;
        this.bottom = i4;
    }

    @NonNull
    public static Insets of(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return NONE;
        }
        return new Insets(i, i2, i3, i4);
    }

    @NonNull
    @RequiresApi(api = 29)
    public static Insets toCompatInsets(@NonNull android.graphics.Insets insets) {
        return of(insets.left, insets.top, insets.right, insets.bottom);
    }

    @NonNull
    @Deprecated
    @RequiresApi(api = 29)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Insets wrap(@NonNull android.graphics.Insets insets) {
        return toCompatInsets(insets);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Insets.class != obj.getClass()) {
            return false;
        }
        Insets insets = (Insets) obj;
        return this.bottom == insets.bottom && this.left == insets.left && this.right == insets.right && this.f10610top == insets.f10610top;
    }

    public int hashCode() {
        return (((((this.left * 31) + this.f10610top) * 31) + this.right) * 31) + this.bottom;
    }

    @NonNull
    @RequiresApi(api = 29)
    public android.graphics.Insets toPlatformInsets() {
        return android.graphics.Insets.of(this.left, this.f10610top, this.right, this.bottom);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Insets{left=");
        m1016super.append(this.left);
        m1016super.append(", top=");
        m1016super.append(this.f10610top);
        m1016super.append(", right=");
        m1016super.append(this.right);
        m1016super.append(", bottom=");
        m1016super.append(this.bottom);
        m1016super.append('}');
        return m1016super.toString();
    }

    @NonNull
    public static Insets of(@NonNull Rect rect) {
        return of(rect.left, rect.top, rect.right, rect.bottom);
    }
}
