package com.apk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.SuppressSignatureCheck;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Jdk9Platform.kt */
/* loaded from: classes7.dex */
public class sj0 extends uj0 {

    /* renamed from: new  reason: not valid java name */
    public static final boolean f4397new;

    /* renamed from: try  reason: not valid java name */
    public static final Cdo f4398try = new Cdo(null);

    /* compiled from: Jdk9Platform.kt */
    /* renamed from: com.apk.sj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0082, code lost:
        if (r1.intValue() < 9) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0071 A[SYNTHETIC] */
    static {
        /*
            com.apk.sj0$do r0 = new com.apk.sj0$do
            r1 = 0
            r0.<init>(r1)
            com.apk.sj0.f4398try = r0
            java.lang.String r0 = "java.specification.version"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L7a
            java.lang.String r4 = "$this$toIntOrNull"
            com.apk.nd0.m1875new(r0, r4)
            com.apk.nd0.m1875new(r0, r4)
            r4 = 10
            com.apk.sb0.m2438while(r4)
            int r5 = r0.length()
            if (r5 != 0) goto L26
            goto L7a
        L26:
            char r6 = r0.charAt(r3)
            r7 = 48
            int r7 = com.apk.nd0.m1877try(r6, r7)
            r8 = -2147483647(0xffffffff80000001, float:-1.4E-45)
            if (r7 >= 0) goto L47
            if (r5 != r2) goto L38
            goto L7a
        L38:
            r7 = 45
            if (r6 != r7) goto L41
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 1
            r7 = 1
            goto L49
        L41:
            r7 = 43
            if (r6 != r7) goto L7a
            r6 = 1
            goto L48
        L47:
            r6 = 0
        L48:
            r7 = 0
        L49:
            r9 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
            r10 = 0
            r11 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
        L50:
            if (r6 >= r5) goto L71
            char r12 = r0.charAt(r6)
            int r12 = java.lang.Character.digit(r12, r4)
            if (r12 >= 0) goto L5d
            goto L7a
        L5d:
            if (r10 >= r11) goto L66
            if (r11 != r9) goto L7a
            int r11 = r8 / 10
            if (r10 >= r11) goto L66
            goto L7a
        L66:
            int r10 = r10 * 10
            int r13 = r8 + r12
            if (r10 >= r13) goto L6d
            goto L7a
        L6d:
            int r10 = r10 - r12
            int r6 = r6 + 1
            goto L50
        L71:
            if (r7 == 0) goto L74
            goto L75
        L74:
            int r10 = -r10
        L75:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r10)
            r1 = r0
        L7a:
            if (r1 == 0) goto L87
            int r0 = r1.intValue()
            r1 = 9
            if (r0 < r1) goto L85
            goto L90
        L85:
            r2 = 0
            goto L90
        L87:
            java.lang.Class<javax.net.ssl.SSLSocket> r0 = javax.net.ssl.SSLSocket.class
            java.lang.String r1 = "getApplicationProtocol"
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L85
            r0.getMethod(r1, r4)     // Catch: java.lang.NoSuchMethodException -> L85
        L90:
            com.apk.sj0.f4397new = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.sj0.<clinit>():void");
    }

    @Override // com.apk.uj0
    @SuppressSignatureCheck
    @Nullable
    /* renamed from: case */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        try {
            String applicationProtocol = sSLSocket.getApplicationProtocol();
            if (applicationProtocol != null) {
                if (applicationProtocol.hashCode() != 0) {
                    return applicationProtocol;
                }
                if (!applicationProtocol.equals("")) {
                    return applicationProtocol;
                }
            }
        } catch (UnsupportedOperationException unused) {
        }
        return null;
    }

    @Override // com.apk.uj0
    @SuppressSignatureCheck
    /* renamed from: new */
    public void mo1885new(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        nd0.m1875new(list, "protocols");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((yg0) next) != yg0.HTTP_1_0) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(sb0.m2420native(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((yg0) it2.next()).f5947do);
        }
        nd0.m1872for(sSLParameters, "sslParameters");
        Object[] array = arrayList2.toArray(new String[0]);
        if (array != null) {
            sSLParameters.setApplicationProtocols((String[]) array);
            sSLSocket.setSSLParameters(sSLParameters);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
