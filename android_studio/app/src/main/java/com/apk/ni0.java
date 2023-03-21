package com.apk;

import com.apk.vg0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: RealResponseBody.kt */
/* loaded from: classes7.dex */
public final class ni0 extends dh0 {

    /* renamed from: for  reason: not valid java name */
    public final String f3237for;

    /* renamed from: new  reason: not valid java name */
    public final long f3238new;

    /* renamed from: try  reason: not valid java name */
    public final tk0 f3239try;

    public ni0(@Nullable String str, long j, @NotNull tk0 tk0Var) {
        nd0.m1875new(tk0Var, "source");
        this.f3237for = str;
        this.f3238new = j;
        this.f3239try = tk0Var;
    }

    @Override // com.apk.dh0
    @NotNull
    /* renamed from: extends */
    public tk0 mo454extends() {
        return this.f3239try;
    }

    @Override // com.apk.dh0
    /* renamed from: throw */
    public long mo457throw() {
        return this.f3238new;
    }

    @Override // com.apk.dh0
    @Nullable
    /* renamed from: throws */
    public vg0 mo458throws() {
        String str = this.f3237for;
        if (str != null) {
            vg0.Cdo cdo = vg0.f5075else;
            return vg0.Cdo.m2794if(str);
        }
        return null;
    }
}
