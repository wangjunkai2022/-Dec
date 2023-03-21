package com.apk;

import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

/* compiled from: SupportRequestManagerFragment.java */
/* loaded from: classes8.dex */
public final class tu extends Fragment {

    /* renamed from: do  reason: not valid java name */
    public ku f4764do;

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        ku kuVar = this.f4764do;
        if (kuVar != null) {
            kuVar.m1565do(getResources().getConfiguration());
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ku kuVar = this.f4764do;
        if (kuVar != null) {
            kuVar.m1567if(configuration);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ku kuVar = this.f4764do;
        if (kuVar != null) {
            kuVar.m1566for();
            this.f4764do = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ku kuVar = this.f4764do;
        if (kuVar != null) {
            kuVar.m1568new();
        }
    }
}
