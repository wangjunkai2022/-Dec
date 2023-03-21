package com.apk;

import android.content.ContentValues;
import android.text.TextUtils;
import com.biquge.ebook.app.bean.ReadFootprint;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import org.litepal.LitePal;

/* compiled from: ComicReadPresenter.java */
/* loaded from: classes8.dex */
public class g00 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f1491do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ f00 f1492if;

    public g00(f00 f00Var, String str) {
        this.f1492if = f00Var;
        this.f1491do = str;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        f00 f00Var = this.f1492if;
        String str = this.f1491do;
        ComicCollectBean m1766finally = mu.m1766finally(f00Var.m702catch());
        if (m1766finally != null) {
            f00Var.f1192this = true;
        }
        if (!TextUtils.isEmpty(str)) {
            f00Var.f1195try = str;
            f00Var.f1175else = 0;
        } else if (m1766finally != null) {
            String readChapterId = m1766finally.getReadChapterId();
            f00Var.f1195try = readChapterId;
            if (TextUtils.isEmpty(readChapterId)) {
                f00Var.f1195try = m1766finally.getFirstChapterId();
            }
            f00Var.f1175else = m1766finally.getReadPage();
            ContentValues contentValues = new ContentValues();
            contentValues.put("saveTime", String.valueOf(System.currentTimeMillis()));
            contentValues.put("isNew", Boolean.FALSE);
            LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", f00Var.m702catch());
        } else {
            ReadFootprint comicFootprint = ReadFootprint.getComicFootprint(f00Var.m702catch());
            if (comicFootprint != null) {
                f00Var.f1195try = comicFootprint.getChapterId();
                f00Var.f1175else = comicFootprint.getReadPage();
            } else {
                ComicBean comicBean = f00Var.f1179for;
                if (comicBean != null) {
                    f00Var.f1195try = comicBean.getFirstChapterId();
                }
                f00Var.f1175else = 0;
            }
        }
        f00Var.h();
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        k30 m1427catch = k30.m1427catch();
        f00 f00Var = this.f1492if;
        m1427catch.m1431const(f00Var.f1195try, f00Var.f1169case, f00Var.f1181import);
    }
}
