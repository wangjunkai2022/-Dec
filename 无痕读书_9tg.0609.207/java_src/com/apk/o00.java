package com.apk;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
/* compiled from: ComicShelfModel.java */
/* loaded from: classes8.dex */
public final class o00 implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Context f3353do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f3354if;

    public o00(Context context, boolean z) {
        this.f3353do = context;
        this.f3354if = z;
    }

    @Override // com.apk.ft
    public void onClick() {
        ze.M(this.f3353do);
        try {
            if (this.f3354if) {
                ((AppCompatActivity) this.f3353do).finish();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
