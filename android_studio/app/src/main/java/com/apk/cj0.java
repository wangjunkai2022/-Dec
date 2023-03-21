package com.apk;

/* compiled from: TaskQueue.kt */
/* loaded from: classes7.dex */
public final class cj0 extends ph0 {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ int f640case;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ ti0 f641else;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ xi0 f642try;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cj0(String str, boolean z, String str2, boolean z2, xi0 xi0Var, int i, ti0 ti0Var) {
        super(str2, z2);
        this.f642try = xi0Var;
        this.f640case = i;
        this.f641else = ti0Var;
    }

    @Override // com.apk.ph0
    /* renamed from: do */
    public long mo56do() {
        this.f642try.f5634class.mo1352for(this.f640case, this.f641else);
        synchronized (this.f642try) {
            this.f642try.f5648package.remove(Integer.valueOf(this.f640case));
        }
        return -1L;
    }
}
