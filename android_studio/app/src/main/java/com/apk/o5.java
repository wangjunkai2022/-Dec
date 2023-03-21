package com.apk;

import com.biquge.ebook.app.ui.activity.WelComeActivity;
import org.json.JSONObject;

/* compiled from: WelComePresenter.java */
/* loaded from: classes8.dex */
public class o5 extends c1<g> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ JSONObject f3359do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ q5 f3360if;

    public o5(q5 q5Var, JSONObject jSONObject) {
        this.f3360if = q5Var;
        this.f3359do = jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0192, code lost:
        if (java.lang.System.currentTimeMillis() < r6) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0150, code lost:
        if ((r7 != null ? r7.isKingPower() : false) != false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0156  */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.apk.g doInBackground() {
        /*
            Method dump skipped, instructions count: 1868
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.o5.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(g gVar) {
        g gVar2 = gVar;
        super.onPostExecute(gVar2);
        y5 y5Var = this.f3360if.f3797for;
        if (y5Var != null) {
            ((WelComeActivity) y5Var).l(true, gVar2);
        }
    }
}
