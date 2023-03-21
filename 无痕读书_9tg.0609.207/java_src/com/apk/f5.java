package com.apk;

import android.text.TextUtils;
import com.hjq.toast.ToastUtils;
/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class f5 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public String f1224do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f1225for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f1226if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f1227new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ g5 f1228try;

    public f5(g5 g5Var, String str, String str2, String str3) {
        this.f1228try = g5Var;
        this.f1226if = str;
        this.f1225for = str2;
        this.f1227new = str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b1  */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean doInBackground() {
        /*
            r12 = this;
            java.lang.String r0 = "result"
            java.lang.String r1 = "data"
            java.lang.String r2 = "username"
            java.lang.String r3 = "action"
            java.lang.String r4 = r12.f1226if
            r5 = -1
            java.util.HashMap r6 = new java.util.HashMap     // Catch: java.lang.Exception -> L3e
            r6.<init>()     // Catch: java.lang.Exception -> L3e
            java.lang.String r7 = "checkusername"
            r6.put(r3, r7)     // Catch: java.lang.Exception -> L3e
            r6.put(r2, r4)     // Catch: java.lang.Exception -> L3e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3e
            r4.<init>()     // Catch: java.lang.Exception -> L3e
            java.lang.String r7 = com.apk.p0.m2000const()     // Catch: java.lang.Exception -> L3e
            r4.append(r7)     // Catch: java.lang.Exception -> L3e
            java.lang.String r7 = "/BookAction.aspx"
            r4.append(r7)     // Catch: java.lang.Exception -> L3e
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L3e
            org.json.JSONObject r4 = com.apk.x4.m2953extends(r4, r6)     // Catch: java.lang.Exception -> L3e
            if (r4 == 0) goto L42
            org.json.JSONObject r4 = r4.optJSONObject(r1)     // Catch: java.lang.Exception -> L3e
            if (r4 == 0) goto L42
            int r4 = r4.optInt(r0)     // Catch: java.lang.Exception -> L3e
            goto L43
        L3e:
            r4 = move-exception
            r4.printStackTrace()
        L42:
            r4 = -1
        L43:
            r6 = 2131755701(0x7f1002b5, float:1.9142289E38)
            r7 = 1
            if (r4 != 0) goto Lb1
            java.lang.String r4 = r12.f1226if
            java.lang.String r8 = r12.f1225for
            java.lang.String r9 = r12.f1227new
            java.util.HashMap r10 = new java.util.HashMap     // Catch: java.lang.Exception -> L9a
            r10.<init>()     // Catch: java.lang.Exception -> L9a
            java.lang.String r11 = "newuser"
            r10.put(r3, r11)     // Catch: java.lang.Exception -> L9a
            r10.put(r2, r4)     // Catch: java.lang.Exception -> L9a
            java.lang.String r2 = "password"
            r10.put(r2, r8)     // Catch: java.lang.Exception -> L9a
            java.lang.String r2 = "repassword"
            r10.put(r2, r8)     // Catch: java.lang.Exception -> L9a
            java.lang.String r2 = "email"
            r10.put(r2, r9)     // Catch: java.lang.Exception -> L9a
            java.lang.String r2 = "extinfo"
            java.lang.String r3 = com.apk.v0.m2735if()     // Catch: java.lang.Exception -> L9a
            r10.put(r2, r3)     // Catch: java.lang.Exception -> L9a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L9a
            r2.<init>()     // Catch: java.lang.Exception -> L9a
            java.lang.String r3 = com.apk.p0.m2000const()     // Catch: java.lang.Exception -> L9a
            r2.append(r3)     // Catch: java.lang.Exception -> L9a
            java.lang.String r3 = "/Register.aspx"
            r2.append(r3)     // Catch: java.lang.Exception -> L9a
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L9a
            org.json.JSONObject r2 = com.apk.x4.m2953extends(r2, r10)     // Catch: java.lang.Exception -> L9a
            if (r2 == 0) goto L9e
            org.json.JSONObject r1 = r2.optJSONObject(r1)     // Catch: java.lang.Exception -> L9a
            if (r1 == 0) goto L9e
            int r5 = r1.optInt(r0)     // Catch: java.lang.Exception -> L9a
            goto L9e
        L9a:
            r0 = move-exception
            r0.printStackTrace()
        L9e:
            if (r5 != 0) goto Laa
            r0 = 2131755705(0x7f1002b9, float:1.9142297E38)
            java.lang.String r0 = com.apk.ze.q(r0)
            r12.f1224do = r0
            goto Lc4
        Laa:
            java.lang.String r0 = com.apk.ze.q(r6)
            r12.f1224do = r0
            goto Lc3
        Lb1:
            if (r4 != r7) goto Lbd
            r0 = 2131755706(0x7f1002ba, float:1.9142299E38)
            java.lang.String r0 = com.apk.ze.q(r0)
            r12.f1224do = r0
            goto Lc3
        Lbd:
            java.lang.String r0 = com.apk.ze.q(r6)
            r12.f1224do = r0
        Lc3:
            r7 = 0
        Lc4:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f5.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        x5 x5Var;
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        this.f1228try.m2016do();
        if (!TextUtils.isEmpty(this.f1224do)) {
            ToastUtils.show((CharSequence) this.f1224do);
        }
        if (!bool2.booleanValue() || (x5Var = this.f1228try.f1508for) == null) {
            return;
        }
        x5Var.mo2980else(this.f1226if, this.f1225for);
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f1228try.m2017if();
    }
}
