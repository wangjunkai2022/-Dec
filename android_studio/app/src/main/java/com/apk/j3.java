package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.data.bean.ComicInfoEntity;

/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class j3 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ z2 f2276do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j3(z2 z2Var, String str) {
        super(str);
        this.f2276do = z2Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        ComicInfoEntity m3126break;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (m3126break = z2.m3126break(iyVar.f2262do)) == null) {
                    return;
                }
                CryptDesManager.decodeClass(m3126break);
                if (this.f2276do.f6096for != null) {
                    this.f2276do.f6096for.mo2243try(m3126break);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        r5 r5Var = this.f2276do.f6096for;
        if (r5Var != null) {
            r5Var.mo2243try(null);
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        ComicInfoEntity m3126break;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (m3126break = z2.m3126break(iyVar.f2262do)) == null) {
                    return;
                }
                CryptDesManager.decodeClass(m3126break);
                if (this.f2276do.f6096for != null) {
                    this.f2276do.f6096for.mo2243try(m3126break);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
