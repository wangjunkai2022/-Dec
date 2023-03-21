package com.apk;

import android.content.ContentValues;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.bean.CacheFailedBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.SetActivity;
import com.hjq.toast.ToastUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* compiled from: SetActivity.java */
/* loaded from: classes8.dex */
public class m8 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SetActivity f2991do;

    public m8(SetActivity setActivity) {
        this.f2991do = setActivity;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        o0 m1925else;
        try {
            o0.m1925else().m1942while();
            List<CollectBook> m1826instanceof = n2.m1826instanceof();
            if (m1826instanceof != null && m1826instanceof.size() > 0) {
                for (CollectBook collectBook : m1826instanceof) {
                    if (!collectBook.isLocalBook()) {
                        ze.m3173import(collectBook.getCollectId());
                    }
                }
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(NotificationCompat.CATEGORY_PROGRESS, (Integer) 0);
            contentValues.put("state", (Integer) 1);
            LitePal.updateAll(CollectBook.class, contentValues, new String[0]);
            LitePal.deleteAll(CacheFailedBean.class, new String[0]);
            m1925else = o0.m1925else();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (m1925else != null) {
            try {
                if (m1925else.f3335if != null) {
                    Iterator it = ((HashSet) m1925else.f3335if.entrySet()).iterator();
                    while (it.hasNext()) {
                        ((CollectBook) ((Map.Entry) it.next()).getValue()).setProgress(0);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return super.doInBackground();
        }
        throw null;
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        try {
            this.f2991do.hideBaseLoading();
            SetActivity.l(this.f2991do);
            ToastUtils.show((int) R.string.tips_clear_finish_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f2991do.showBaseLoading(ze.q(R.string.tips_clear_in_txt));
    }
}
