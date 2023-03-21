package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class y2 extends PublicCallback {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ JSONArray f5833case;

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5834do;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ z2 f5835else;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f5836for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f5837if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f5838new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ String f5839try;

    public y2(z2 z2Var, String str, boolean z, String str2, String str3, String str4, JSONArray jSONArray) {
        this.f5835else = z2Var;
        this.f5834do = str;
        this.f5837if = z;
        this.f5836for = str2;
        this.f5838new = str3;
        this.f5839try = str4;
        this.f5833case = jSONArray;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f5835else.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f5835else.m2017if();
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
                            z2.m3131for(this.f5834do, optString2, this.f5837if, this.f5836for, this.f5838new, this.f5839try, this.f5833case.length());
                            if (this.f5835else.f6096for != null) {
                                this.f5835else.f6096for.mo2232const(optString);
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
