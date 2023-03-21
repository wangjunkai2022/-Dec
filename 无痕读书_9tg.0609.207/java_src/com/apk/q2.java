package com.apk;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
/* compiled from: NovelShelfModel.java */
/* loaded from: classes8.dex */
public final class q2 implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Context f3788do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f3789if;

    public q2(Context context, boolean z) {
        this.f3788do = context;
        this.f3789if = z;
    }

    @Override // com.apk.ft
    public void onClick() {
        ze.M(this.f3788do);
        try {
            if (this.f3789if) {
                ((AppCompatActivity) this.f3788do).finish();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
