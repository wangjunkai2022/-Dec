package com.apk;

import java.io.IOException;
import java.util.List;

/* compiled from: TaskQueue.kt */
/* loaded from: classes7.dex */
public final class aj0 extends ph0 {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ int f96case;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ List f97else;

    /* renamed from: goto  reason: not valid java name */
    public final /* synthetic */ boolean f98goto;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ xi0 f99try;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aj0(String str, boolean z, String str2, boolean z2, xi0 xi0Var, int i, List list, boolean z3) {
        super(str2, z2);
        this.f99try = xi0Var;
        this.f96case = i;
        this.f97else = list;
        this.f98goto = z3;
    }

    @Override // com.apk.ph0
    /* renamed from: do  reason: not valid java name */
    public long mo56do() {
        boolean mo1353if = this.f99try.f5634class.mo1353if(this.f96case, this.f97else, this.f98goto);
        if (mo1353if) {
            try {
                this.f99try.f5639extends.m1129extends(this.f96case, ti0.CANCEL);
            } catch (IOException unused) {
                return -1L;
            }
        }
        if (mo1353if || this.f98goto) {
            synchronized (this.f99try) {
                this.f99try.f5648package.remove(Integer.valueOf(this.f96case));
            }
            return -1L;
        }
        return -1L;
    }
}
