package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1;

import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomInitConfig;

/* compiled from: AdNetworkConfValue.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f10869a;
    public String b;
    public GMCustomInitConfig c;

    public a(String str, String str2) {
        this.f10869a = str;
        this.b = str2;
        this.c = new GMCustomInitConfig();
    }

    public a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.f10869a = str2;
        this.b = str3;
        this.c = new GMCustomInitConfig(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12);
    }

    public String a() {
        return this.f10869a;
    }

    public String b() {
        return this.b;
    }

    public GMCustomInitConfig c() {
        return this.c;
    }

    public boolean d() {
        GMCustomInitConfig gMCustomInitConfig = this.c;
        return gMCustomInitConfig != null && gMCustomInitConfig.isCustom();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0003, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0041, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r4 = this;
            r0 = 55
            r1 = 0
        L3:
            r2 = 72
        L5:
            switch(r2) {
                case 72: goto L41;
                case 73: goto L18;
                case 74: goto L9;
                default: goto L8;
            }
        L8:
            goto L3
        L9:
            r2 = 52
            if (r1 == r2) goto L3
            r2 = 53
            if (r1 == r2) goto L12
            goto L41
        L12:
            switch(r0) {
                case 29: goto L1c;
                case 30: goto L3;
                case 31: goto L9;
                default: goto L15;
            }
        L15:
            r0 = 30
            goto L12
        L18:
            r2 = 57
            if (r1 > r2) goto L41
        L1c:
            java.lang.String r0 = "AdNetworkConfValue{mAppId='"
            java.lang.StringBuilder r0 = com.apk.Cgoto.m1016super(r0)
            java.lang.String r1 = r4.f10869a
            r2 = 39
            java.lang.String r3 = ", mAppKey='"
            com.apk.Cgoto.m987abstract(r0, r1, r2, r3)
            java.lang.String r1 = r4.b
            java.lang.String r3 = ", mGMCustomConfig="
            com.apk.Cgoto.m987abstract(r0, r1, r2, r3)
            com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomInitConfig r1 = r4.c
            r0.append(r1)
            r1 = 125(0x7d, float:1.75E-43)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        L41:
            r2 = 73
            r1 = 16
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a.toString():java.lang.String");
    }
}
