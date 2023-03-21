package com.apk;

import com.biquge.ebook.app.helper.req.convert.Convert;
import com.expand.videoplayer.bean.VideoDetail;
import com.jni.crypt.project.CryptDesManager;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ExpandPresenter.java */
/* loaded from: classes8.dex */
public class t3 extends c1<Object> {

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f4631for;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ int f4633new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ q3 f4634try;

    /* renamed from: do  reason: not valid java name */
    public boolean f4630do = false;

    /* renamed from: if  reason: not valid java name */
    public List<VideoDetail> f4632if = null;

    public t3(q3 q3Var, String str, int i) {
        this.f4634try = q3Var;
        this.f4631for = str;
        this.f4633new = i;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        JSONObject optJSONObject;
        JSONObject m2961super = x4.m2961super(this.f4631for, 43200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST);
        if (m2961super != null && (optJSONObject = m2961super.optJSONObject("data")) != null) {
            this.f4630do = optJSONObject.optBoolean("HasNext");
            JSONArray optJSONArray = optJSONObject.optJSONArray("Lists");
            if (optJSONArray != null) {
                List<VideoDetail> list = null;
                try {
                    list = (List) Convert.fromJson(optJSONArray.toString(), new zt().getType());
                } catch (Exception unused) {
                }
                this.f4632if = list;
                if (list != null) {
                    CryptDesManager.decodeClass(list);
                }
            }
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        t5 t5Var = this.f4634try.f3791for;
        if (t5Var != null) {
            t5Var.mo2575new(this.f4632if, this.f4630do, this.f4633new);
        }
    }
}
