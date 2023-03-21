package com.apk;

import androidx.core.app.NotificationCompat;
import com.manhua.data.bean.ComicBean;
import java.util.HashMap;
import org.json.JSONObject;

/* compiled from: PublicPresenter.java */
/* loaded from: classes8.dex */
public class z4 extends c1<ComicBean> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f6118do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ boolean f6119for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f6120if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f6121new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ x4 f6122try;

    public z4(x4 x4Var, String str, String str2, boolean z, String str3) {
        this.f6122try = x4Var;
        this.f6118do = str;
        this.f6120if = str2;
        this.f6119for = z;
        this.f6121new = str3;
    }

    @Override // com.apk.c1
    public ComicBean doInBackground() {
        String str;
        JSONObject m2953extends;
        JSONObject optJSONObject;
        ComicBean comicBean = new ComicBean();
        String str2 = this.f6118do;
        String str3 = this.f6120if;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("action", "bookid");
            hashMap.put("bookname", str2);
            hashMap.put(NotificationCompat.CarExtender.KEY_AUTHOR, str3);
            m2953extends = x4.m2953extends(p0.m2014try() + "/BookAction.aspx", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (m2953extends != null && (optJSONObject = m2953extends.optJSONObject("data")) != null) {
            str = optJSONObject.optString("bookid");
            comicBean.setId(str);
            comicBean.setName(this.f6118do);
            comicBean.setAuthor(this.f6120if);
            return comicBean;
        }
        str = null;
        comicBean.setId(str);
        comicBean.setName(this.f6118do);
        comicBean.setAuthor(this.f6120if);
        return comicBean;
    }

    @Override // com.apk.c1
    public void onPostExecute(ComicBean comicBean) {
        ComicBean comicBean2 = comicBean;
        super.onPostExecute(comicBean2);
        if (comicBean2 != null) {
            this.f6122try.m2971private(comicBean2, this.f6119for, this.f6121new);
        }
    }
}
