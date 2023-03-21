package com.apk;

import com.apk.zg0;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: HttpLoggingInterceptor.java */
/* loaded from: classes8.dex */
public class ey implements ug0 {

    /* renamed from: new  reason: not valid java name */
    public static final Charset f1137new = Charset.forName("UTF-8");

    /* renamed from: do  reason: not valid java name */
    public volatile Cdo f1138do = Cdo.NONE;

    /* renamed from: for  reason: not valid java name */
    public Logger f1139for;

    /* renamed from: if  reason: not valid java name */
    public Level f1140if;

    /* compiled from: HttpLoggingInterceptor.java */
    /* renamed from: com.apk.ey$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cdo {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public ey(String str) {
        this.f1139for = Logger.getLogger(str);
    }

    /* renamed from: for  reason: not valid java name */
    public static boolean m677for(vg0 vg0Var) {
        if (vg0Var == null) {
            return false;
        }
        String str = vg0Var.f5079if;
        if (str == null || !str.equals("text")) {
            String str2 = vg0Var.f5078for;
            if (str2 != null) {
                String lowerCase = str2.toLowerCase();
                if (lowerCase.contains("x-www-form-urlencoded") || lowerCase.contains("json") || lowerCase.contains("xml") || lowerCase.contains("html")) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c2 A[Catch: Exception -> 0x011a, all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:24:0x0048, B:26:0x004f, B:29:0x0076, B:31:0x007c, B:32:0x0094, B:34:0x009e, B:36:0x00a9, B:38:0x00b9, B:40:0x00c2, B:42:0x00d0, B:44:0x00d8, B:45:0x00f4, B:46:0x00f9, B:49:0x0104, B:51:0x010e, B:52:0x0112, B:65:0x012c), top: B:189:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010e A[Catch: Exception -> 0x011a, all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:24:0x0048, B:26:0x004f, B:29:0x0076, B:31:0x007c, B:32:0x0094, B:34:0x009e, B:36:0x00a9, B:38:0x00b9, B:40:0x00c2, B:42:0x00d0, B:44:0x00d8, B:45:0x00f4, B:46:0x00f9, B:49:0x0104, B:51:0x010e, B:52:0x0112, B:65:0x012c), top: B:189:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0112 A[Catch: Exception -> 0x011a, all -> 0x0125, TRY_LEAVE, TryCatch #2 {all -> 0x0125, blocks: (B:24:0x0048, B:26:0x004f, B:29:0x0076, B:31:0x007c, B:32:0x0094, B:34:0x009e, B:36:0x00a9, B:38:0x00b9, B:40:0x00c2, B:42:0x00d0, B:44:0x00d8, B:45:0x00f4, B:46:0x00f9, B:49:0x0104, B:51:0x010e, B:52:0x0112, B:65:0x012c), top: B:189:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015a  */
    /* JADX WARN: Type inference failed for: r4v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.lang.Object, com.apk.ch0] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.apk.ch0] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // com.apk.ug0
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.apk.ch0 mo678do(com.apk.ug0.Cdo r45) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ey.mo678do(com.apk.ug0$do):com.apk.ch0");
    }

    /* renamed from: if  reason: not valid java name */
    public final void m679if(zg0 zg0Var) {
        try {
            bh0 bh0Var = new zg0.Cdo(zg0Var).m3204if().f6189try;
            if (bh0Var == null) {
                return;
            }
            rk0 rk0Var = new rk0();
            bh0Var.mo49for(rk0Var);
            vg0 mo50if = bh0Var.mo50if();
            Charset m2792do = mo50if != null ? mo50if.m2792do(f1137new) : f1137new;
            if (m2792do == null) {
                m2792do = f1137new;
            }
            m680new("\tbody:" + rk0Var.mo851catch(m2792do));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m680new(String str) {
        this.f1139for.log(this.f1140if, str);
    }
}
