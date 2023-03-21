package com.apk;

import java.io.IOException;
import java.util.List;
/* compiled from: TaskQueue.kt */
/* loaded from: classes7.dex */
public final class bj0 extends ph0 {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ int f343case;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ List f344else;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ xi0 f345try;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bj0(String str, boolean z, String str2, boolean z2, xi0 xi0Var, int i, List list) {
        super(str2, z2);
        this.f345try = xi0Var;
        this.f343case = i;
        this.f344else = list;
    }

    @Override // com.apk.ph0
    /* renamed from: do */
    public long mo56do() {
        if (this.f345try.f5634class.mo1351do(this.f343case, this.f344else)) {
            try {
                this.f345try.f5639extends.m1129extends(this.f343case, ti0.CANCEL);
                synchronized (this.f345try) {
                    this.f345try.f5648package.remove(Integer.valueOf(this.f343case));
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
        return -1L;
    }
}
