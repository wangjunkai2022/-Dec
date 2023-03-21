package com.apk;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: CustomTarget.java */
/* loaded from: classes8.dex */
public abstract class ir<T> implements pr<T> {

    /* renamed from: do  reason: not valid java name */
    public final int f2224do;
    @Nullable

    /* renamed from: for  reason: not valid java name */
    public zq f2225for;

    /* renamed from: if  reason: not valid java name */
    public final int f2226if;

    public ir(int i, int i2) {
        if (gs.m1034const(i, i2)) {
            this.f2224do = i;
            this.f2226if = i2;
            return;
        }
        throw new IllegalArgumentException(Cgoto.m1018synchronized("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ", i, " and height: ", i2));
    }

    @Override // com.apk.pr
    /* renamed from: break */
    public final void mo268break(@NonNull or orVar) {
        orVar.mo886if(this.f2224do, this.f2226if);
    }

    @Override // com.apk.pr
    /* renamed from: do */
    public final void mo271do(@NonNull or orVar) {
    }

    @Override // com.apk.pr
    /* renamed from: else */
    public void mo272else(@Nullable Drawable drawable) {
    }

    @Override // com.apk.pr
    /* renamed from: for */
    public final void mo273for(@Nullable zq zqVar) {
        this.f2225for = zqVar;
    }

    @Override // com.apk.pr
    @Nullable
    /* renamed from: goto */
    public final zq mo274goto() {
        return this.f2225for;
    }

    @Override // com.apk.eq
    public void onDestroy() {
    }

    @Override // com.apk.eq
    public void onStart() {
    }

    @Override // com.apk.eq
    public void onStop() {
    }

    @Override // com.apk.pr
    /* renamed from: try */
    public void mo278try(@Nullable Drawable drawable) {
    }
}
