package com.apk;

import java.io.File;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RequestBody.kt */
/* loaded from: classes7.dex */
public final class ah0 extends bh0 {

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ vg0 f88for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ File f89if;

    public ah0(File file, vg0 vg0Var) {
        this.f89if = file;
        this.f88for = vg0Var;
    }

    @Override // com.apk.bh0
    /* renamed from: do  reason: not valid java name */
    public long mo48do() {
        return this.f89if.length();
    }

    @Override // com.apk.bh0
    /* renamed from: for  reason: not valid java name */
    public void mo49for(@NotNull sk0 sk0Var) {
        nd0.m1875new(sk0Var, "sink");
        ll0 m206for = bl0.m206for(this.f89if);
        try {
            sk0Var.mo638const(m206for);
            sb0.m2417import(m206for, null);
        } finally {
        }
    }

    @Override // com.apk.bh0
    @Nullable
    /* renamed from: if  reason: not valid java name */
    public vg0 mo50if() {
        return this.f88for;
    }
}
