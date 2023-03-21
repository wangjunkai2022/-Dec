package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class k4 extends PublicCallback {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ JSONArray f2459case;

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2460do;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ v3 f2461else;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f2462for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f2463if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f2464new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ String f2465try;

    public k4(v3 v3Var, String str, boolean z, String str2, String str3, String str4, JSONArray jSONArray) {
        this.f2461else = v3Var;
        this.f2460do = str;
        this.f2463if = z;
        this.f2462for = str2;
        this.f2464new = str3;
        this.f2465try = str4;
        this.f2459case = jSONArray;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f2461else.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2461else.m2017if();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    String str = iyVar.f2262do;
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject(str);
                    String optString = jSONObject.optString("info");
                    if (!TextUtils.isEmpty(optString)) {
                        ToastUtils.show((CharSequence) optString);
                    }
                    JSONObject optJSONObject = jSONObject.optJSONObject("data");
                    if (optJSONObject != null) {
                        String optString2 = optJSONObject.optString("listid");
                        if (optJSONObject.optInt("result") == 1) {
                            v3.m2750break(this.f2460do, optString2, this.f2463if, this.f2462for, this.f2464new, this.f2465try, this.f2459case.length());
                            if (this.f2461else.f4987for != null) {
                                this.f2461else.f4987for.mo2691while(optString);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
