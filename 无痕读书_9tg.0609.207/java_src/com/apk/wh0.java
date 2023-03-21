package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.fi0;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;
/* compiled from: ExchangeFinder.kt */
/* loaded from: classes7.dex */
public final class wh0 {

    /* renamed from: break  reason: not valid java name */
    public final og0 f5283break;

    /* renamed from: case  reason: not valid java name */
    public fh0 f5284case;

    /* renamed from: do  reason: not valid java name */
    public fi0.Cdo f5285do;

    /* renamed from: else  reason: not valid java name */
    public final ci0 f5286else;

    /* renamed from: for  reason: not valid java name */
    public int f5287for;
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public final uf0 f5288goto;

    /* renamed from: if  reason: not valid java name */
    public fi0 f5289if;

    /* renamed from: new  reason: not valid java name */
    public int f5290new;

    /* renamed from: this  reason: not valid java name */
    public final xh0 f5291this;

    /* renamed from: try  reason: not valid java name */
    public int f5292try;

    public wh0(@NotNull ci0 ci0Var, @NotNull uf0 uf0Var, @NotNull xh0 xh0Var, @NotNull og0 og0Var) {
        nd0.m1875new(ci0Var, "connectionPool");
        nd0.m1875new(uf0Var, "address");
        nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
        nd0.m1875new(og0Var, "eventListener");
        this.f5286else = ci0Var;
        this.f5288goto = uf0Var;
        this.f5291this = xh0Var;
        this.f5283break = og0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0300 A[SYNTHETIC] */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.apk.bi0 m2910do(int r16, int r17, int r18, int r19, boolean r20, boolean r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 846
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.wh0.m2910do(int, int, int, int, boolean, boolean):com.apk.bi0");
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2911for(@NotNull IOException iOException) {
        nd0.m1875new(iOException, "e");
        this.f5284case = null;
        if ((iOException instanceof mj0) && ((mj0) iOException).f3063do == ti0.REFUSED_STREAM) {
            this.f5287for++;
        } else if (iOException instanceof si0) {
            this.f5290new++;
        } else {
            this.f5292try++;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m2912if(@NotNull tg0 tg0Var) {
        nd0.m1875new(tg0Var, "url");
        tg0 tg0Var2 = this.f5288goto.f4880do;
        return tg0Var.f4681case == tg0Var2.f4681case && nd0.m1870do(tg0Var.f4689try, tg0Var2.f4689try);
    }
}
