package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.manhua.data.bean.ComicElement;
import org.json.JSONObject;
import org.litepal.LitePal;

/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class h3 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f1728do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ z2 f1729if;

    public h3(z2 z2Var, String str) {
        this.f1729if = z2Var;
        this.f1728do = str;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        try {
            this.f1729if.m2016do();
            if (this.f1729if.f6096for != null) {
                if ("my_release".equals(this.f1728do)) {
                    this.f1729if.f6096for.mo2231class(LitePal.where("type = ?", this.f1728do).find(ComicElement.class), this.f1728do);
                } else if ("my_collect".equals(this.f1728do)) {
                    this.f1729if.f6096for.mo2231class(LitePal.where("type = ?", this.f1728do).find(ComicElement.class), this.f1728do);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f1729if.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f1729if.m2017if();
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
                z2.m3135this(this.f1729if, this.f1728do, ze.l0(optJSONObject.optJSONArray("pub")), ze.l0(optJSONObject.optJSONArray("col")));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
