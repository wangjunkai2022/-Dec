package com.apk;

import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicFootprint;
import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;
import org.litepal.LitePal;
/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class g3 extends JsonCallback<LzyResponse<ComicBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ z2 f1501do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g3(z2 z2Var, String str) {
        super(str);
        this.f1501do = z2Var;
    }

    /* renamed from: do  reason: not valid java name */
    public static void m938do(ComicBean comicBean) {
        CryptDesManager.decodeClass(comicBean);
        try {
            LitePal.deleteAll(ComicFootprint.class, "novelId = ?", String.valueOf(comicBean.getId()));
            ComicFootprint comicFootprint = new ComicFootprint();
            comicFootprint.setName(comicBean.getName());
            comicFootprint.setAuthor(comicBean.getAuthor());
            comicFootprint.setCategory(comicBean.getCName());
            comicFootprint.setContent(comicBean.getDesc());
            comicFootprint.setIcon(comicBean.getImg());
            comicFootprint.setNovelId(String.valueOf(comicBean.getId()));
            comicFootprint.setSaveTime(String.valueOf(System.currentTimeMillis()));
            comicFootprint.save();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (LitePal.count(ComicFootprint.class) > 50) {
            ((ComicFootprint) LitePal.findFirst(ComicFootprint.class)).delete();
        }
        String id = comicBean.getId();
        try {
            String str = "BOOKDETAIL_ADD_HIT_KEY#COMIC#" + id;
            String m1498if = kg.m1498if();
            if (m1498if.equals(ze.n(str))) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("action", "addhit");
            hashMap.put("bookid", id);
            if (x4.m2949class(p0.m2014try() + "/BookAction.aspx", hashMap, 0L, xw.DEFAULT)) {
                tt.f4763do.putString(str, m1498if);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<ComicBean>> iyVar) {
        ComicBean comicBean;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (comicBean = iyVar.f2262do.data) == null) {
                    return;
                }
                CryptDesManager.decodeClass(comicBean);
                if (this.f1501do.f6096for != null) {
                    this.f1501do.f6096for.mo2238if(comicBean);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<ComicBean>> iyVar) {
        super.onError(iyVar);
        r5 r5Var = this.f1501do.f6096for;
        if (r5Var != null) {
            r5Var.mo2242throw();
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<LzyResponse<ComicBean>> iyVar) {
        LzyResponse<ComicBean> lzyResponse;
        final ComicBean comicBean;
        super.onFinish(iyVar);
        if (iyVar == null || !iyVar.m1293for() || (lzyResponse = iyVar.f2262do) == null || (comicBean = lzyResponse.data) == null) {
            return;
        }
        z2 z2Var = this.f1501do;
        Runnable runnable = new Runnable() { // from class: com.apk.s2
            @Override // java.lang.Runnable
            public final void run() {
                g3.m938do(ComicBean.this);
            }
        };
        if (z2Var != null) {
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
    public void onSuccess(iy<LzyResponse<ComicBean>> iyVar) {
        ComicBean comicBean;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (comicBean = iyVar.f2262do.data) == null) {
                    return;
                }
                CryptDesManager.decodeClass(comicBean);
                if (this.f1501do.f6096for != null) {
                    this.f1501do.f6096for.mo2238if(comicBean);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
