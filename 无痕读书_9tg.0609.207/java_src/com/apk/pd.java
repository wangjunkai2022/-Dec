package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.ui.webread.entity.WebContentBean;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
/* compiled from: WebPresenter.java */
/* loaded from: classes8.dex */
public class pd extends c1<Object> {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ boolean f3618case;

    /* renamed from: do  reason: not valid java name */
    public WebSiteBean f3619do;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ boolean f3620else;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f3621for;

    /* renamed from: goto  reason: not valid java name */
    public final /* synthetic */ boolean f3622goto;

    /* renamed from: if  reason: not valid java name */
    public WebContentBean f3623if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ boolean f3624new;

    /* renamed from: this  reason: not valid java name */
    public final /* synthetic */ qd f3625this;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ String f3626try;

    public pd(qd qdVar, String str, boolean z, String str2, boolean z2, boolean z3, boolean z4) {
        this.f3625this = qdVar;
        this.f3621for = str;
        this.f3624new = z;
        this.f3626try = str2;
        this.f3618case = z2;
        this.f3620else = z3;
        this.f3622goto = z4;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        try {
            if (!TextUtils.isEmpty(this.f3621for)) {
                if (this.f3624new) {
                    this.f3619do = nd.m1852catch(this.f3626try, this.f3621for);
                } else if (this.f3618case) {
                    this.f3623if = nd.m1850break(this.f3626try, this.f3621for, null);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        md mdVar = this.f3625this.f3830for;
        if (mdVar != null) {
            mdVar.mo1691if(this.f3620else, this.f3622goto, this.f3624new, this.f3618case, this.f3619do, this.f3623if);
        }
    }
}
