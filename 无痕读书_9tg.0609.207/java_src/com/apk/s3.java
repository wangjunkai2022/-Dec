package com.apk;

import com.biquge.ebook.app.helper.req.convert.Convert;
import com.expand.listen.bean.ListenDetail;
import com.jni.crypt.project.CryptDesManager;
import com.ss.android.download.api.constant.BaseConstants;
import java.lang.reflect.Type;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ExpandPresenter.java */
/* loaded from: classes8.dex */
public class s3 extends c1<List<ListenDetail>> {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ q3 f4262case;

    /* renamed from: do  reason: not valid java name */
    public boolean f4263do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f4264for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f4265if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f4266new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ int f4267try;

    public s3(q3 q3Var, String str, String str2, String str3, int i) {
        this.f4262case = q3Var;
        this.f4265if = str;
        this.f4264for = str2;
        this.f4266new = str3;
        this.f4267try = i;
    }

    @Override // com.apk.c1
    public List<ListenDetail> doInBackground() {
        long currentTimeMillis = System.currentTimeMillis();
        String str = this.f4265if;
        String str2 = this.f4264for;
        String str3 = this.f4266new;
        String valueOf = String.valueOf(this.f4267try);
        StringBuilder sb = new StringBuilder();
        sb.append(eg.m604native());
        sb.append("/top/");
        sb.append(str);
        sb.append("/top/");
        sb.append(str2);
        Cgoto.m993continue(sb, "/", str3, "/", valueOf);
        sb.append(".html");
        JSONObject m2961super = x4.m2961super(sb.toString(), this.f4267try == 1 ? BaseConstants.Time.DAY : 0, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST);
        List<ListenDetail> list = null;
        if (m2961super != null) {
            try {
                JSONObject optJSONObject = m2961super.optJSONObject("data");
                this.f4263do = optJSONObject.optBoolean("HasNext");
                JSONArray optJSONArray = optJSONObject.optJSONArray("BookList");
                try {
                    Type type = new wt().getType();
                    if (optJSONArray != null) {
                        list = (List) Convert.fromJson(optJSONArray.toString(), type);
                    }
                } catch (Exception unused) {
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (list != null && list.size() > 0) {
            try {
                CryptDesManager.decodeClass(list);
            } catch (Exception unused2) {
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (currentTimeMillis2 < 250) {
            try {
                Thread.sleep(250 - currentTimeMillis2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return list;
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ListenDetail> list) {
        List<ListenDetail> list2 = list;
        super.onPostExecute(list2);
        if (list2 != null) {
            t5 t5Var = this.f4262case.f3791for;
            if (t5Var != null) {
                t5Var.mo2572do(list2, this.f4263do, this.f4267try);
                return;
            }
            return;
        }
        t5 t5Var2 = this.f4262case.f3791for;
        if (t5Var2 != null) {
            t5Var2.mo2576try();
        }
    }
}
