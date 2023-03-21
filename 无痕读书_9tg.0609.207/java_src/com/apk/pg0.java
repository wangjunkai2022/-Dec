package com.apk;

import com.apk.vg0;
import java.io.IOException;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* compiled from: FormBody.kt */
/* loaded from: classes7.dex */
public final class pg0 extends bh0 {

    /* renamed from: new  reason: not valid java name */
    public static final vg0 f3637new;

    /* renamed from: for  reason: not valid java name */
    public final List<String> f3638for;

    /* renamed from: if  reason: not valid java name */
    public final List<String> f3639if;

    static {
        vg0.Cdo cdo = vg0.f5075else;
        f3637new = vg0.Cdo.m2793do("application/x-www-form-urlencoded");
    }

    public pg0(@NotNull List<String> list, @NotNull List<String> list2) {
        nd0.m1875new(list, "encodedNames");
        nd0.m1875new(list2, "encodedValues");
        this.f3639if = jh0.m1320continue(list);
        this.f3638for = jh0.m1320continue(list2);
    }

    @Override // com.apk.bh0
    /* renamed from: do */
    public long mo48do() {
        return m2035new(null, true);
    }

    @Override // com.apk.bh0
    /* renamed from: for */
    public void mo49for(@NotNull sk0 sk0Var) throws IOException {
        nd0.m1875new(sk0Var, "sink");
        m2035new(sk0Var, false);
    }

    @Override // com.apk.bh0
    @NotNull
    /* renamed from: if */
    public vg0 mo50if() {
        return f3637new;
    }

    /* renamed from: new  reason: not valid java name */
    public final long m2035new(sk0 sk0Var, boolean z) {
        rk0 mo639do;
        if (z) {
            mo639do = new rk0();
        } else {
            nd0.m1874if(sk0Var);
            mo639do = sk0Var.mo639do();
        }
        int size = this.f3639if.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                mo639do.m2299synchronized(38);
            }
            mo639do.j(this.f3639if.get(i));
            mo639do.m2299synchronized(61);
            mo639do.j(this.f3638for.get(i));
        }
        if (z) {
            long j = mo639do.f4108if;
            mo639do.skip(j);
            return j;
        }
        return 0L;
    }
}
