package androidx.core.database.sqlite;

import android.database.sqlite.SQLiteCursor;
import android.os.Build;
import androidx.annotation.NonNull;

/* loaded from: classes8.dex */
public final class SQLiteCursorCompat {
    public static void setFillWindowForwardOnly(@NonNull SQLiteCursor sQLiteCursor, boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            sQLiteCursor.setFillWindowForwardOnly(z);
        }
    }
}
