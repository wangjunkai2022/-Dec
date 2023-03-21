package com.apk;

import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: RequestManagerFragment.java */
/* loaded from: classes8.dex */
public final class qu extends Fragment {

    /* renamed from: do  reason: not valid java name */
    public ku f3942do;

    @Override // android.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        ku kuVar = this.f3942do;
        if (kuVar != null) {
            kuVar.m1565do(getResources().getConfiguration());
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ku kuVar = this.f3942do;
        if (kuVar != null) {
            kuVar.m1567if(configuration);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ku kuVar = this.f3942do;
        if (kuVar != null) {
            kuVar.m1566for();
            this.f3942do = null;
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        ku kuVar = this.f3942do;
        if (kuVar != null) {
            kuVar.m1568new();
        }
    }
}
