package com.apk;

/* compiled from: Collector.java */
/* loaded from: classes7.dex */
public class dp0 implements kp0 {

    /* renamed from: do  reason: not valid java name */
    public final jo0 f953do;

    /* renamed from: for  reason: not valid java name */
    public final hp0 f954for;

    /* renamed from: if  reason: not valid java name */
    public final gp0 f955if;

    public dp0(jo0 jo0Var, gp0 gp0Var, hp0 hp0Var) {
        this.f953do = jo0Var;
        this.f955if = gp0Var;
        this.f954for = hp0Var;
    }

    @Override // com.apk.kp0
    /* renamed from: do  reason: not valid java name */
    public void mo502do(no0 no0Var, int i) {
        if (no0Var instanceof jo0) {
            jo0 jo0Var = (jo0) no0Var;
            if (this.f954for.mo872do(this.f953do, jo0Var)) {
                this.f955if.add(jo0Var);
            }
        }
    }

    @Override // com.apk.kp0
    /* renamed from: if  reason: not valid java name */
    public void mo503if(no0 no0Var, int i) {
    }
}
