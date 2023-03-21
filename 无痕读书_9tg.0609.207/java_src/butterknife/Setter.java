package butterknife;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
/* loaded from: classes8.dex */
public interface Setter<T extends View, V> {
    @UiThread
    void set(@NonNull T t, @Nullable V v, int i);
}
