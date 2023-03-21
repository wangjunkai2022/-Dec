package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;

/* compiled from: PublicPresenter.java */
/* loaded from: classes8.dex */
public final class w4 extends PublicCallback {
    public w4(String str) {
        super(str);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    x4.m2965try(iyVar.f2262do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
