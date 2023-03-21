package butterknife.internal;

import android.view.View;
import com.apk.Ctry;
/* loaded from: classes8.dex */
public abstract class DebouncingOnClickListener implements View.OnClickListener {
    public static final Runnable ENABLE_AGAIN = Ctry.f4762do;
    public static boolean enabled = true;

    public abstract void doClick(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (enabled) {
            enabled = false;
            view.post(ENABLE_AGAIN);
            doClick(view);
        }
    }
}
