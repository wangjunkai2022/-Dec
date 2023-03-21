package com.apk;

import com.biquge.ebook.app.bean.BookElement;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import org.json.JSONObject;
import org.litepal.LitePal;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class l4 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2745do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ v3 f2746if;

    public l4(v3 v3Var, String str) {
        this.f2746if = v3Var;
        this.f2745do = str;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        try {
            this.f2746if.m2016do();
            if (this.f2746if.f4987for != null) {
                if ("my_release".equals(this.f2745do)) {
                    this.f2746if.f4987for.mo2689throw(LitePal.where("type = ?", this.f2745do).find(BookElement.class), this.f2745do);
                } else if ("my_collect".equals(this.f2745do)) {
                    this.f2746if.f4987for.mo2689throw(LitePal.where("type = ?", this.f2745do).find(BookElement.class), this.f2745do);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f2746if.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2746if.m2017if();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        JSONObject optJSONObject;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (optJSONObject = new JSONObject(iyVar.f2262do).optJSONObject("data")) == null) {
                    return;
                }
                v3.m2752catch(this.f2746if, this.f2745do, ze.j0(optJSONObject.optJSONArray("pub")), ze.j0(optJSONObject.optJSONArray("col")));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
