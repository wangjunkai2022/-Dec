package com.apk;
/* compiled from: AsyncPoster.java */
/* loaded from: classes7.dex */
public class pl0 implements Runnable, am0 {

    /* renamed from: do  reason: not valid java name */
    public final zl0 f3682do = new zl0();

    /* renamed from: if  reason: not valid java name */
    public final rl0 f3683if;

    public pl0(rl0 rl0Var) {
        this.f3683if = rl0Var;
    }

    @Override // com.apk.am0
    /* renamed from: do */
    public void mo75do(em0 em0Var, Object obj) {
        this.f3682do.m3208do(yl0.m3084do(em0Var, obj));
        this.f3683if.f4113break.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        yl0 m3209if = this.f3682do.m3209if();
        if (m3209if != null) {
            this.f3683if.m2311for(m3209if);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
