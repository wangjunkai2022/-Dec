package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.CacheBean;
import com.biquge.ebook.app.bean.User;
import org.litepal.LitePal;
/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class d5 implements uv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ g5 f820do;

    public d5(g5 g5Var) {
        this.f820do = g5Var;
    }

    @Override // com.apk.uv
    public void onConfirm() {
        CacheBean m648for;
        User m2743else = v0.m2736try().m2743else();
        if (m2743else != null) {
            StringBuilder m1016super = Cgoto.m1016super("SP_REMOVE_ACCOUNT_KEY");
            m1016super.append(m2743else.getName());
            String sb = m1016super.toString();
            if (!TextUtils.isEmpty(sb) && (m648for = Celse.m648for(sb)) != null) {
                try {
                    LitePal.deleteAll(CacheBean.class, "url = ?", m648for.getUrl());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            Celse.m645case(sb);
            g5.m939for(this.f820do, false, false);
        }
    }
}
