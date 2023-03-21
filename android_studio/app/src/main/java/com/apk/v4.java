package com.apk;

import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.jni.crypt.project.CryptDesManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PublicPresenter.java */
/* loaded from: classes8.dex */
public class v4 extends JsonCallback<LzyResponse<List<Book>>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5008do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ x4 f5009for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f5010if;

    public v4(x4 x4Var, String str, int i) {
        this.f5009for = x4Var;
        this.f5008do = str;
        this.f5010if = i;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<List<Book>>> iyVar) {
        super.onError(iyVar);
        w5 w5Var = this.f5009for.f5453for;
        if (w5Var != null) {
            w5Var.mo2901do(this.f5008do, new ArrayList(), false);
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<LzyResponse<List<Book>>, ? extends qy> qyVar) {
        super.onStart(qyVar);
        n2.m1821for("search_history_key", this.f5008do);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<List<Book>>> iyVar) {
        List<Book> list;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null) {
                    return;
                }
                CryptDesManager.decodeClass(list);
                if (this.f5009for.f5453for != null) {
                    boolean z = list.size() > 8;
                    if (list.size() > 0) {
                        for (Book book : list) {
                            book.setItemType(this.f5010if);
                        }
                    }
                    this.f5009for.f5453for.mo2901do(this.f5008do, list, z);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
