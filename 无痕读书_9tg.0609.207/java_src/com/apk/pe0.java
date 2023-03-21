package com.apk;

import android.app.Activity;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import me.imid.swipebacklayout.lib.SwipeBackLayout;
/* compiled from: SwipeBackListenerActivityAdapter.java */
/* loaded from: classes7.dex */
public class pe0 implements SwipeBackLayout.Cfor {

    /* renamed from: do  reason: not valid java name */
    public final WeakReference<Activity> f3630do;

    public pe0(@NonNull Activity activity) {
        this.f3630do = new WeakReference<>(activity);
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.Cif
    /* renamed from: do  reason: not valid java name */
    public void mo2029do(int i, float f) {
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.Cif
    /* renamed from: for  reason: not valid java name */
    public void mo2030for() {
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.Cfor
    /* renamed from: if  reason: not valid java name */
    public void mo2031if() {
        Activity activity = this.f3630do.get();
        if (activity == null || activity.isFinishing()) {
            return;
        }
        activity.finish();
        activity.overridePendingTransition(0, 0);
    }

    @Override // me.imid.swipebacklayout.lib.SwipeBackLayout.Cif
    /* renamed from: new  reason: not valid java name */
    public void mo2032new(int i) {
        Activity activity = this.f3630do.get();
        if (activity != null) {
            sb0.m2425public(activity);
        }
    }
}
