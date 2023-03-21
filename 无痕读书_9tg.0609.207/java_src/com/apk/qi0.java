package com.apk;

import com.apk.sg0;
import org.jetbrains.annotations.NotNull;
/* compiled from: HeadersReader.kt */
/* loaded from: classes7.dex */
public final class qi0 {

    /* renamed from: do  reason: not valid java name */
    public long f3878do;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final tk0 f3879if;

    public qi0(@NotNull tk0 tk0Var) {
        nd0.m1875new(tk0Var, "source");
        this.f3879if = tk0Var;
        this.f3878do = 262144;
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public final sg0 m2140do() {
        sg0.Cdo cdo = new sg0.Cdo();
        while (true) {
            String m2141if = m2141if();
            if (m2141if.length() == 0) {
                return cdo.m2462new();
            }
            cdo.m2461if(m2141if);
        }
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public final String m2141if() {
        String mo855goto = this.f3879if.mo855goto(this.f3878do);
        this.f3878do -= mo855goto.length();
        return mo855goto;
    }
}
