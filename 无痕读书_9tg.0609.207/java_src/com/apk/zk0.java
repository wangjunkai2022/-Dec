package com.apk;

import java.io.IOException;
import java.util.zip.Inflater;
import org.jetbrains.annotations.NotNull;
/* compiled from: InflaterSource.kt */
/* loaded from: classes7.dex */
public final class zk0 implements ll0 {

    /* renamed from: do  reason: not valid java name */
    public int f6213do;

    /* renamed from: for  reason: not valid java name */
    public final tk0 f6214for;

    /* renamed from: if  reason: not valid java name */
    public boolean f6215if;

    /* renamed from: new  reason: not valid java name */
    public final Inflater f6216new;

    public zk0(@NotNull tk0 tk0Var, @NotNull Inflater inflater) {
        nd0.m1875new(tk0Var, "source");
        nd0.m1875new(inflater, "inflater");
        this.f6214for = tk0Var;
        this.f6216new = inflater;
    }

    @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f6215if) {
            return;
        }
        this.f6216new.end();
        this.f6215if = true;
        this.f6214for.close();
    }

    @Override // com.apk.ll0
    @NotNull
    /* renamed from: if */
    public ml0 mo71if() {
        return this.f6214for.mo71if();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0099 A[SYNTHETIC] */
    @Override // com.apk.ll0
    /* renamed from: import */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo72import(@org.jetbrains.annotations.NotNull com.apk.rk0 r10, long r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.zk0.mo72import(com.apk.rk0, long):long");
    }
}
