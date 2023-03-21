package com.apk;

import com.biquge.ebook.app.ui.activity.MainActivity;
import com.google.android.material.bottomnavigation.BottomNavigationItemView;
import kimi.wuhends.ebooks.R;
/* compiled from: MainActivity.java */
/* loaded from: classes8.dex */
public class x7 extends c1<Object> {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ MainActivity f5482case;

    /* renamed from: do  reason: not valid java name */
    public boolean f5483do;

    /* renamed from: for  reason: not valid java name */
    public boolean f5484for;

    /* renamed from: if  reason: not valid java name */
    public boolean f5485if;

    /* renamed from: new  reason: not valid java name */
    public boolean f5486new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ boolean f5487try;

    public x7(MainActivity mainActivity, boolean z) {
        this.f5482case = mainActivity;
        this.f5487try = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
        if (((r0.f1376while == null || !r0.m808final() || com.apk.Cfinally.m796do(r0.f1376while, "swlpopup") == null) ? false : true) != false) goto L23;
     */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doInBackground() {
        /*
            r4 = this;
            java.lang.String r0 = "SP_STORE_SEARCH_SHOW_RED_KEY"
            r1 = 1
            boolean r0 = com.apk.ze.m3179private(r0, r1)
            r4.f5483do = r0
            com.biquge.ebook.app.ui.activity.MainActivity r0 = r4.f5482case
            boolean r0 = com.biquge.ebook.app.ui.activity.MainActivity.p(r0)
            if (r0 == 0) goto L19
            java.lang.String r0 = "SP_IS_VISIBLE_GAME_TAG_VIEW_KEY"
            boolean r0 = com.apk.ze.m3179private(r0, r1)
            r4.f5485if = r0
        L19:
            boolean r0 = com.apk.w0.m2880if()
            r4.f5484for = r0
            r2 = 0
            if (r0 != 0) goto L32
            com.apk.continue r0 = com.apk.Ccontinue.m379if()
            com.biquge.ebook.app.bean.MyInfoMsgBean r0 = r0.f727throws
            if (r0 == 0) goto L32
            java.lang.String r0 = "SP_MYINFO_MSG_KEY"
            boolean r0 = com.apk.ze.m3179private(r0, r2)
            r4.f5484for = r0
        L32:
            boolean r0 = r4.f5487try
            if (r0 == 0) goto L67
            boolean r0 = com.apk.eg.m600implements()
            if (r0 == 0) goto L67
            com.biquge.ebook.app.ui.activity.MainActivity r0 = r4.f5482case
            com.apk.x4 r0 = r0.f6691import
            boolean r0 = r0.m2977while(r2)
            if (r0 != 0) goto L64
            com.apk.finally r0 = com.apk.Cfinally.m797else()
            org.json.JSONObject r3 = r0.f1376while
            if (r3 == 0) goto L60
            boolean r3 = r0.m808final()
            if (r3 == 0) goto L60
            org.json.JSONObject r0 = r0.f1376while
            java.lang.String r3 = "swlpopup"
            org.json.JSONObject r0 = com.apk.Cfinally.m796do(r0, r3)
            if (r0 == 0) goto L60
            r0 = 1
            goto L61
        L60:
            r0 = 0
        L61:
            if (r0 == 0) goto L64
            goto L65
        L64:
            r1 = 0
        L65:
            r4.f5486new = r1
        L67:
            java.lang.Object r0 = super.doInBackground()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.x7.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        BottomNavigationItemView bottomNavigationItemView;
        BottomNavigationItemView bottomNavigationItemView2;
        super.onPostExecute(obj);
        if (this.f5486new) {
            Cabstract cabstract = new Cabstract();
            cabstract.f77do = this.f5482case;
            new b1().m141do(new Cprivate(cabstract));
        }
        MainActivity mainActivity = this.f5482case;
        if (this.f5483do) {
            if (mainActivity.f6696super == null && (bottomNavigationItemView2 = (BottomNavigationItemView) mainActivity.mBottomNavigationView.findViewById(R.id.menu_main_tab_ranking)) != null) {
                xp0 xp0Var = new xp0(mainActivity);
                mainActivity.f6696super = xp0Var;
                xp0Var.m3031do(bottomNavigationItemView2);
                xp0Var.m3037this(mainActivity.f6684case, 9.0f, true);
                xp0Var.m3034goto(-1);
            }
        } else {
            xp0 xp0Var2 = mainActivity.f6696super;
            if (xp0Var2 != null) {
                xp0Var2.m3034goto(0);
            }
        }
        MainActivity mainActivity2 = this.f5482case;
        if (this.f5484for) {
            if (mainActivity2.f6701while == null && (bottomNavigationItemView = (BottomNavigationItemView) mainActivity2.mBottomNavigationView.findViewById(R.id.menu_main_tab_info)) != null) {
                xp0 xp0Var3 = new xp0(mainActivity2);
                mainActivity2.f6701while = xp0Var3;
                xp0Var3.m3031do(bottomNavigationItemView);
                xp0Var3.m3037this(mainActivity2.f6684case, 9.0f, true);
                xp0Var3.m3034goto(-1);
            }
        } else {
            xp0 xp0Var4 = mainActivity2.f6701while;
            if (xp0Var4 != null) {
                xp0Var4.m3034goto(0);
            }
        }
        this.f5482case.r(this.f5485if);
    }
}
