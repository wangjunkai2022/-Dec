package androidx.core.content.pm;

import android.annotation.SuppressLint;
import android.content.pm.PermissionInfo;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes8.dex */
public final class PermissionInfoCompat {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes8.dex */
    public @interface Protection {
    }

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes8.dex */
    public @interface ProtectionFlags {
    }

    @SuppressLint({"WrongConstant"})
    public static int getProtection(@NonNull PermissionInfo permissionInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return permissionInfo.getProtection();
        }
        return permissionInfo.protectionLevel & 15;
    }

    @SuppressLint({"WrongConstant"})
    public static int getProtectionFlags(@NonNull PermissionInfo permissionInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return permissionInfo.getProtectionFlags();
        }
        return permissionInfo.protectionLevel & (-16);
    }
}
