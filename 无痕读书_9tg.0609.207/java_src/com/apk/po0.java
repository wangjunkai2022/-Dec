package com.apk;

import com.apk.ho0;
/* compiled from: TextNode.java */
/* loaded from: classes7.dex */
public class po0 extends mo0 {
    public po0(String str) {
        this.f3076new = str;
    }

    /* renamed from: interface  reason: not valid java name */
    public static boolean m2068interface(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    @Override // com.apk.no0
    /* renamed from: return */
    public String mo669return() {
        return "#text";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
        if (com.apk.bo0.m256try(m1740continue()) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
        if (com.apk.bo0.m256try(m1740continue()) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
        m1903native(r10, r11, r12);
     */
    @Override // com.apk.no0
    /* renamed from: switch */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo670switch(java.lang.Appendable r10, int r11, com.apk.ho0.Cdo r12) throws java.io.IOException {
        /*
            r9 = this;
            boolean r0 = r12.f1918try
            if (r0 == 0) goto L66
            int r1 = r9.f3282if
            if (r1 != 0) goto L20
            com.apk.no0 r1 = r9.f3281do
            boolean r2 = r1 instanceof com.apk.jo0
            if (r2 == 0) goto L20
            com.apk.jo0 r1 = (com.apk.jo0) r1
            com.apk.xo0 r1 = r1.f2398new
            boolean r1 = r1.f5717new
            if (r1 == 0) goto L20
            java.lang.String r1 = r9.m1740continue()
            boolean r1 = com.apk.bo0.m256try(r1)
            if (r1 == 0) goto L63
        L20:
            boolean r1 = r12.f1911case
            if (r1 == 0) goto L66
            com.apk.no0 r1 = r9.f3281do
            if (r1 != 0) goto L2d
            java.util.List r1 = java.util.Collections.emptyList()
            goto L53
        L2d:
            java.util.List r1 = r1.mo1385super()
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r1.size()
            int r3 = r3 + (-1)
            r2.<init>(r3)
            java.util.Iterator r1 = r1.iterator()
        L40:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L52
            java.lang.Object r3 = r1.next()
            com.apk.no0 r3 = (com.apk.no0) r3
            if (r3 == r9) goto L40
            r2.add(r3)
            goto L40
        L52:
            r1 = r2
        L53:
            int r1 = r1.size()
            if (r1 <= 0) goto L66
            java.lang.String r1 = r9.m1740continue()
            boolean r1 = com.apk.bo0.m256try(r1)
            if (r1 != 0) goto L66
        L63:
            r9.m1903native(r10, r11, r12)
        L66:
            r11 = 1
            r1 = 0
            if (r0 == 0) goto L74
            com.apk.no0 r2 = r9.f3281do
            boolean r2 = com.apk.jo0.a(r2)
            if (r2 != 0) goto L74
            r7 = 1
            goto L75
        L74:
            r7 = 0
        L75:
            if (r0 == 0) goto L7f
            com.apk.no0 r0 = r9.f3281do
            boolean r0 = r0 instanceof com.apk.ho0
            if (r0 == 0) goto L7f
            r8 = 1
            goto L80
        L7f:
            r8 = 0
        L80:
            java.lang.String r4 = r9.m1740continue()
            r6 = 0
            r3 = r10
            r5 = r12
            com.apk.ko0.m1541for(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.po0.mo670switch(java.lang.Appendable, int, com.apk.ho0$do):void");
    }

    @Override // com.apk.no0
    /* renamed from: throws */
    public void mo671throws(Appendable appendable, int i, ho0.Cdo cdo) {
    }

    @Override // com.apk.no0
    public String toString() {
        return mo1147static();
    }

    @Override // com.apk.no0
    /* renamed from: volatile */
    public po0 clone() {
        return (po0) super.clone();
    }
}
