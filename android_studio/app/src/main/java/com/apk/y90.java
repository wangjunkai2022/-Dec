package com.apk;

import com.tr.comment.sdk.bean.TrGgBean;
import com.tr.comment.sdk.ggs.view.TrAdViewBanner;
import java.util.List;
import org.json.JSONObject;

/* compiled from: TrAdViewBanner.java */
/* loaded from: classes7.dex */
public class y90 extends ab0<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ JSONObject f5900do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ TrAdViewBanner f5901if;

    public y90(TrAdViewBanner trAdViewBanner, JSONObject jSONObject) {
        this.f5901if = trAdViewBanner;
        this.f5900do = jSONObject;
    }

    @Override // com.apk.ab0
    /* renamed from: do */
    public Object mo39do() {
        this.f5901if.f10427this = cb0.m323case(this.f5900do);
        List<TrGgBean> list = this.f5901if.f10427this;
        if (list == null || list.size() <= 0) {
            return null;
        }
        this.f5901if.f10416break = cb0.m324do(this.f5900do);
        return null;
    }

    @Override // com.apk.ab0
    /* renamed from: if */
    public void mo40if(Object obj) {
        List<TrGgBean> list = this.f5901if.f10427this;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f5901if.mo2788do();
    }
}
