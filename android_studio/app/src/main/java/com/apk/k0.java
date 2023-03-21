package com.apk;

import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import java.util.List;

/* compiled from: AppInitHelper.java */
/* loaded from: classes8.dex */
public final class k0 extends JsonCallback<LzyResponse<List<NewReadFont>>> {
    public k0(String str) {
        super(str);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<List<NewReadFont>>> iyVar) {
        List<NewReadFont> list;
        NewReadFont newReadFont;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null || list.size() <= 0) {
                    return;
                }
                v3.m2754default(list, true);
                if (list.size() <= 3 || (newReadFont = list.get(3)) == null) {
                    return;
                }
                m0.m1678do(newReadFont);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
