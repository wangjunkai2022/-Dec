package com.apk;

import com.tr.comment.sdk.bean.TrGgBean;
import com.tr.comment.sdk.ggs.view.TrAdViewBangDan;
import java.util.List;
import org.json.JSONObject;
/* compiled from: TrAdViewBangDan.java */
/* loaded from: classes7.dex */
public class w90 extends ab0<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ JSONObject f5247do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ TrAdViewBangDan f5248if;

    public w90(TrAdViewBangDan trAdViewBangDan, JSONObject jSONObject) {
        this.f5248if = trAdViewBangDan;
        this.f5247do = jSONObject;
    }

    @Override // com.apk.ab0
    /* renamed from: do */
    public Object mo39do() {
        this.f5248if.f10409else = cb0.m323case(this.f5247do);
        List<TrGgBean> list = this.f5248if.f10409else;
        if (list == null || list.size() <= 0) {
            return null;
        }
        this.f5248if.f10411goto = cb0.m324do(this.f5247do);
        return null;
    }

    @Override // com.apk.ab0
    /* renamed from: if */
    public void mo40if(Object obj) {
        List<TrGgBean> list = this.f5248if.f10409else;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f5248if.mo2788do();
    }
}
