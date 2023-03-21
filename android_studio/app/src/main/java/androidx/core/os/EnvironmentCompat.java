package androidx.core.os;

import android.os.Environment;
import androidx.annotation.NonNull;
import java.io.File;

/* loaded from: classes8.dex */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = "unknown";
    public static final String TAG = "EnvironmentCompat";

    @NonNull
    public static String getStorageState(@NonNull File file) {
        return Environment.getExternalStorageState(file);
    }
}
