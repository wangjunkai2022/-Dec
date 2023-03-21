package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class x2 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5448do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ z2 f5449if;

    public x2(z2 z2Var, String str) {
        this.f5449if = z2Var;
        this.f5448do = str;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    z2.m3128catch(this.f5449if, iyVar.f2262do, this.f5448do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f5449if.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        r5 r5Var = this.f5449if.f6096for;
        if (r5Var != null) {
            r5Var.mo2241this(false, null);
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f5449if.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f5449if.m2017if();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    z2.m3128catch(this.f5449if, iyVar.f2262do, this.f5448do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
