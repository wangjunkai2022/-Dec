package com.apk;

import android.content.Context;
import android.content.Intent;

/* compiled from: Utils.java */
/* loaded from: classes8.dex */
public final class ig implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Context f2094do;

    public ig(Context context) {
        this.f2094do = context;
    }

    @Override // com.apk.ft
    public void onClick() {
        this.f2094do.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
    }
}
