package com.apk;

import android.content.ContentValues;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.ui.activity.SetActivity;
import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicCacheFailedBean;
import com.manhua.data.bean.ComicCollectBean;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* compiled from: SetActivity.java */
/* loaded from: classes8.dex */
public class n8 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SetActivity f3199do;

    public n8(SetActivity setActivity) {
        this.f3199do = setActivity;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        o0 m1925else;
        try {
            o0.m1925else().m1936import();
            SetActivity setActivity = this.f3199do;
            try {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    o m1921for = o.m1921for();
                    m30 m30Var = new m30(setActivity);
                    ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.execute(m30Var);
                    }
                } else {
                    ii.m1220new(setActivity).m1223if();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            mu.m1757catch(setActivity);
            ContentValues contentValues = new ContentValues();
            contentValues.put(NotificationCompat.CATEGORY_PROGRESS, (Integer) 0);
            contentValues.put("state", (Integer) 1);
            LitePal.updateAll(ComicCollectBean.class, contentValues, new String[0]);
            LitePal.deleteAll(ComicCacheFailedBean.class, new String[0]);
            m1925else = o0.m1925else();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (m1925else != null) {
            try {
                if (m1925else.f3336new != null) {
                    Iterator it = ((HashSet) m1925else.f3336new.entrySet()).iterator();
                    while (it.hasNext()) {
                        ((ComicCollectBean) ((Map.Entry) it.next()).getValue()).setProgress(0);
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            return super.doInBackground();
        }
        throw null;
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        try {
            this.f3199do.hideBaseLoading();
            SetActivity.l(this.f3199do);
            ToastUtils.show((int) R.string.tips_clear_finish_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f3199do.showBaseLoading(ze.q(R.string.tips_clear_in_txt));
    }
}
