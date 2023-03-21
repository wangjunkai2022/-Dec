package com.apk;

import com.apk.uj0;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;

/* compiled from: HttpHeaders.kt */
@JvmName(name = "HttpHeaders")
/* loaded from: classes7.dex */
public final class ki0 {

    /* renamed from: do  reason: not valid java name */
    public static final uk0 f2573do = uk0.f4913try.m2717if("\"\\");

    /* renamed from: if  reason: not valid java name */
    public static final uk0 f2574if = uk0.f4913try.m2717if("\t ,=");

    /* JADX WARN: Code restructure failed: missing block: B:87:0x01b0, code lost:
        if ((com.apk.nd0.m1870do(r2, r5) || (com.apk.ie0.m1198for(r2, r5, false, 2) && r2.charAt((r2.length() - r5.length()) + (-1)) == '.' && !com.apk.jh0.m1329if(r2))) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01c5, code lost:
        if (okhttp3.internal.publicsuffix.PublicSuffixDatabase.f10566else.m3730do(r5) == null) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x020b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01ce  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* renamed from: case  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void m1505case(@org.jetbrains.annotations.NotNull com.apk.kg0 r30, @org.jetbrains.annotations.NotNull com.apk.tg0 r31, @org.jetbrains.annotations.NotNull com.apk.sg0 r32) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ki0.m1505case(com.apk.kg0, com.apk.tg0, com.apk.sg0):void");
    }

    @Deprecated(level = hc0.ERROR, message = "No longer supported", replaceWith = @ReplaceWith(expression = "response.promisesBody()", imports = {}))
    /* renamed from: do  reason: not valid java name */
    public static final boolean m1506do(@NotNull ch0 ch0Var) {
        nd0.m1875new(ch0Var, "response");
        return m1508for(ch0Var);
    }

    /* renamed from: else  reason: not valid java name */
    public static final boolean m1507else(rk0 rk0Var) {
        boolean z = false;
        while (!rk0Var.mo853else()) {
            byte m2289default = rk0Var.m2289default(0L);
            if (m2289default == 9 || m2289default == 32) {
                rk0Var.readByte();
            } else if (m2289default != 44) {
                break;
            } else {
                rk0Var.readByte();
                z = true;
            }
        }
        return z;
    }

    /* renamed from: for  reason: not valid java name */
    public static final boolean m1508for(@NotNull ch0 ch0Var) {
        nd0.m1875new(ch0Var, "$this$promisesBody");
        if (nd0.m1870do(ch0Var.f615if.f6186for, "HEAD")) {
            return false;
        }
        int i = ch0Var.f618try;
        return (((i >= 100 && i < 200) || i == 204 || i == 304) && jh0.m1325final(ch0Var) == -1 && !ie0.m1203new("chunked", ch0.m336break(ch0Var, "Transfer-Encoding", null, 2), true)) ? false : true;
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public static final List<dg0> m1509if(@NotNull sg0 sg0Var, @NotNull String str) {
        nd0.m1875new(sg0Var, "$this$parseChallenges");
        nd0.m1875new(str, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = sg0Var.size();
        for (int i = 0; i < size; i++) {
            if (ie0.m1203new(str, sg0Var.m2455if(i), true)) {
                rk0 rk0Var = new rk0();
                rk0Var.j(sg0Var.m2456new(i));
                try {
                    m1510new(rk0Var, arrayList);
                } catch (EOFException e) {
                    uj0.Cdo cdo = uj0.f4907for;
                    uj0.f4906do.m2706this("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x00f8, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00f8, code lost:
        continue;
     */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void m1510new(com.apk.rk0 r18, java.util.List<com.apk.dg0> r19) throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 417
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ki0.m1510new(com.apk.rk0, java.util.List):void");
    }

    /* renamed from: try  reason: not valid java name */
    public static final String m1511try(rk0 rk0Var) {
        long m2291finally = rk0Var.m2291finally(f2574if);
        if (m2291finally == -1) {
            m2291finally = rk0Var.f4108if;
        }
        if (m2291finally != 0) {
            return rk0Var.m2302volatile(m2291finally);
        }
        return null;
    }
}
