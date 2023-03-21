package com.apk;

import com.tr.comment.sdk.bean.TrGgBean;
import com.tr.comment.sdk.ggs.view.TrAdViewRectangle;
import java.util.List;
import org.json.JSONObject;
/* compiled from: TrAdViewRectangle.java */
/* loaded from: classes7.dex */
public class aa0 extends ab0<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ JSONObject f73do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ TrAdViewRectangle f74if;

    public aa0(TrAdViewRectangle trAdViewRectangle, JSONObject jSONObject) {
        this.f74if = trAdViewRectangle;
        this.f73do = jSONObject;
    }

    @Override // com.apk.ab0
    /* renamed from: do  reason: not valid java name */
    public Object mo39do() {
        this.f74if.f10434goto = cb0.m323case(this.f73do);
        List<TrGgBean> list = this.f74if.f10434goto;
        if (list == null || list.size() <= 0) {
            return null;
        }
        this.f74if.f10432else = cb0.m324do(this.f73do);
        return null;
    }

    @Override // com.apk.ab0
    /* renamed from: if  reason: not valid java name */
    public void mo40if(Object obj) {
        List<TrGgBean> list = this.f74if.f10434goto;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f74if.mo2788do();
    }
}
