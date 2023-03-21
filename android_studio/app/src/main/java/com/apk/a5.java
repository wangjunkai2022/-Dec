package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.jni.crypt.project.CryptDesManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PublicPresenter.java */
/* loaded from: classes8.dex */
public class a5 extends JsonCallback<LzyResponse<List<Book>>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f24do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ x4 f25for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ long f26if;

    public a5(x4 x4Var, String str, long j) {
        this.f25for = x4Var;
        this.f24do = str;
        this.f26if = j;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<List<Book>>> iyVar) {
        super.onError(iyVar);
        w5 w5Var = this.f25for.f5453for;
        if (w5Var != null) {
            w5Var.mo2901do(this.f24do, new ArrayList(), false);
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<LzyResponse<List<Book>>> iyVar) {
        super.onFinish(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    List<Book> list = iyVar.f2262do.data;
                    v m2734do = v.m2734do();
                    if (list != null) {
                        list.size();
                    }
                    System.currentTimeMillis();
                    if (m2734do == null) {
                        throw null;
                    }
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (iyVar != null) {
            iyVar.m1292do();
            if (!TextUtils.isEmpty(iyVar.m1294new())) {
                iyVar.m1294new();
            } else if (iyVar.f2264if != null) {
                iyVar.f2264if.getMessage();
            }
        }
        v m2734do2 = v.m2734do();
        System.currentTimeMillis();
        if (m2734do2 == null) {
            throw null;
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<LzyResponse<List<Book>>, ? extends qy> qyVar) {
        super.onStart(qyVar);
        n2.m1821for("search_comic_history_key", this.f24do);
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
                if (list.size() > 0) {
                    CryptDesManager.decodeClass(list);
                }
                if (this.f25for.f5453for != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Book book : list) {
                        if (!w0.m2883native(book.getId())) {
                            arrayList.add(book);
                        }
                    }
                    boolean z = arrayList.size() > 8;
                    if (arrayList.size() > 0) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Book book2 = (Book) it.next();
                            book2.setItemType(3);
                            if (!TextUtils.isEmpty(book2.getId())) {
                                book2.setHaveShelf(mu.h(book2.getId()));
                            }
                        }
                    }
                    this.f25for.f5453for.mo2901do(this.f24do, arrayList, z);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
