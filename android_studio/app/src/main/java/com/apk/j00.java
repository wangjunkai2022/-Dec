package com.apk;

import android.content.ContentValues;
import android.text.TextUtils;
import com.biquge.ebook.app.app.AppContext;
import com.manhua.data.bean.ComicChapterBean;
import java.io.File;
import java.util.Collections;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONException;
import org.litepal.LitePal;

/* compiled from: ComicReadPresenter.java */
/* loaded from: classes8.dex */
public class j00 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f2269do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ f00 f2270for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f2271if;

    public j00(f00 f00Var, boolean z, boolean z2) {
        this.f2270for = f00Var;
        this.f2269do = z;
        this.f2271if = z2;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        List<ComicChapterBean> m3136throw = z2.m3136throw(this.f2270for.m702catch());
        if (m3136throw != null && m3136throw.size() > 0) {
            Collections.reverse(m3136throw);
            for (ComicChapterBean comicChapterBean : m3136throw) {
                boolean z = this.f2269do && comicChapterBean.getOid().equals(this.f2270for.f1195try);
                String content = comicChapterBean.getContent();
                if (z || content.contains("MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY") || content.contains("MH_UNLOCK_CHAPTER_FALIED_TAG_KEY")) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("content", "");
                    LitePal.updateAll(ComicChapterBean.class, contentValues, "novelId = ? and oid = ?", comicChapterBean.getNovelId(), comicChapterBean.getOid());
                    ComicChapterBean m439case = da.m419else().m439case(comicChapterBean.getNovelId(), comicChapterBean.getOid());
                    if (m439case != null) {
                        m439case.setContent("");
                        da.m419else().m441do(m439case);
                    }
                }
            }
        }
        f00 f00Var = this.f2270for;
        if (f00Var != null) {
            try {
                ComicChapterBean m729throw = f00Var.m729throw();
                if (m729throw != null) {
                    String content2 = m729throw.getContent();
                    if (!TextUtils.isEmpty(content2)) {
                        JSONArray jSONArray = new JSONArray(content2);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            File m1777private = mu.m1777private(u.m2652new(jSONArray.optString(i)));
                            if (m1777private != null && m1777private.exists()) {
                                m1777private.delete();
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            gg<String, List<String>> ggVar = f00Var.f1168break.f978do;
            if (ggVar != null) {
                ggVar.clear();
            }
            f00Var.j(f00Var.f1175else);
            return super.doInBackground();
        }
        throw null;
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (this.f2271if) {
            ze.c0(this.f2270for.f3971if, ze.q(R.string.report_failed_success_can_refresh_txt), null, false);
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        mu.m1757catch(AppContext.f6392case);
    }
}
