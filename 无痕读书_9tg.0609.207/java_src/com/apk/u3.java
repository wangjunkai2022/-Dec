package com.apk;

import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.Footprint;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.jni.crypt.project.CryptDesManager;
import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;
import org.litepal.LitePal;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class u3 extends JsonCallback<LzyResponse<Book>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f4839do;

    public u3(v3 v3Var) {
        this.f4839do = v3Var;
    }

    /* renamed from: do  reason: not valid java name */
    public static void m2668do(Book book) {
        CryptDesManager.decodeClass(book);
        try {
            LitePal.deleteAll(Footprint.class, "novelId = ?", String.valueOf(book.getId()));
            Footprint footprint = new Footprint();
            footprint.setName(book.getName());
            footprint.setAuthor(book.getAuthor());
            footprint.setCategory(book.getCName());
            footprint.setContent(book.getDesc());
            footprint.setIcon(book.getImg());
            footprint.setNovelId(String.valueOf(book.getId()));
            footprint.setSaveTime(String.valueOf(System.currentTimeMillis()));
            footprint.save();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (LitePal.count(Footprint.class) > 50) {
            ((Footprint) LitePal.findFirst(Footprint.class)).delete();
        }
        String id = book.getId();
        try {
            String str = "BOOKDETAIL_ADD_HIT_KEY#NOVEL#" + id;
            String m1498if = kg.m1498if();
            if (m1498if.equals(ze.n(str))) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("action", "addhit");
            hashMap.put("bookid", id);
            if (x4.m2949class(p0.m2009new() + "/BookAction.aspx", hashMap, 0L, xw.DEFAULT)) {
                tt.f4763do.putString(str, m1498if);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<Book>> iyVar) {
        Book book;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (book = iyVar.f2262do.data) == null) {
                    return;
                }
                CryptDesManager.decodeClass(book);
                if (this.f4839do.f4987for != null) {
                    this.f4839do.f4987for.mo2679if(book);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<Book>> iyVar) {
        super.onError(iyVar);
        u5 u5Var = this.f4839do.f4987for;
        if (u5Var != null) {
            u5Var.mo2687switch();
        }
        if (x4.m2950const(iyVar)) {
            v3.m2759new();
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<LzyResponse<Book>> iyVar) {
        LzyResponse<Book> lzyResponse;
        final Book book;
        super.onFinish(iyVar);
        if (iyVar == null || !iyVar.m1293for() || (lzyResponse = iyVar.f2262do) == null || (book = lzyResponse.data) == null) {
            return;
        }
        v3 v3Var = this.f4839do;
        Runnable runnable = new Runnable() { // from class: com.apk.t2
            @Override // java.lang.Runnable
            public final void run() {
                u3.m2668do(Book.this);
            }
        };
        if (v3Var != null) {
            ThreadPoolExecutor threadPoolExecutor = o.m1921for().f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<Book>> iyVar) {
        Book book;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (book = iyVar.f2262do.data) == null) {
                    return;
                }
                CryptDesManager.decodeClass(book);
                if (this.f4839do.f4987for != null) {
                    this.f4839do.f4987for.mo2679if(book);
                }
                v3.m2753class(book);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
