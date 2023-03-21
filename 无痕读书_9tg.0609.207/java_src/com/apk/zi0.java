package com.apk;

import java.io.IOException;
/* compiled from: TaskQueue.kt */
/* loaded from: classes7.dex */
public final class zi0 extends ph0 {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ int f6207case;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ rk0 f6208else;

    /* renamed from: goto  reason: not valid java name */
    public final /* synthetic */ int f6209goto;

    /* renamed from: this  reason: not valid java name */
    public final /* synthetic */ boolean f6210this;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ xi0 f6211try;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zi0(String str, boolean z, String str2, boolean z2, xi0 xi0Var, int i, rk0 rk0Var, int i2, boolean z3) {
        super(str2, z2);
        this.f6211try = xi0Var;
        this.f6207case = i;
        this.f6208else = rk0Var;
        this.f6209goto = i2;
        this.f6210this = z3;
    }

    @Override // com.apk.ph0
    /* renamed from: do */
    public long mo56do() {
        try {
            boolean mo1354new = this.f6211try.f5634class.mo1354new(this.f6207case, this.f6208else, this.f6209goto, this.f6210this);
            if (mo1354new) {
                this.f6211try.f5639extends.m1129extends(this.f6207case, ti0.CANCEL);
            }
            if (mo1354new || this.f6210this) {
                synchronized (this.f6211try) {
                    this.f6211try.f5648package.remove(Integer.valueOf(this.f6207case));
                }
                return -1L;
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
