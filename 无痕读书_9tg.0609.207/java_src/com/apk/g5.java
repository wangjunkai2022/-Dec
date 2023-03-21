package com.apk;

import android.app.Activity;
import android.text.TextUtils;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import com.jni.crypt.project.CryptDesManager;
import com.lxj.xpopup.core.BasePopupView;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class g5 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final x5 f1508for;

    /* renamed from: new  reason: not valid java name */
    public BasePopupView f1509new;

    /* compiled from: UserPresenter.java */
    /* renamed from: com.apk.g5$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends PublicCallback {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f1510do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f1511for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f1512if;

        public Cdo(int i, String str, String str2) {
            this.f1510do = i;
            this.f1512if = str;
            this.f1511for = str2;
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            g5.this.m2016do();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            g5.this.m2017if();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            x5 x5Var;
            JSONObject optJSONObject;
            super.onSuccess(iyVar);
            boolean z = false;
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        String str = iyVar.f2262do;
                        if (!TextUtils.isEmpty(str) && (optJSONObject = new JSONObject(str).optJSONObject("data")) != null) {
                            if (optJSONObject.optInt("Status", -1) == 1) {
                                try {
                                    v0 m2736try = v0.m2736try();
                                    ch0 ch0Var = iyVar.f2265new;
                                    m2736try.m2744final(ch0Var == null ? null : ch0Var.f611else);
                                    v0.m2736try().m2748super(true, this.f1510do, this.f1512if, this.f1511for, optJSONObject);
                                    z = true;
                                } catch (Exception e) {
                                    e = e;
                                    z = true;
                                    e.printStackTrace();
                                    if (z) {
                                        return;
                                    }
                                    return;
                                }
                            }
                            String optString = optJSONObject.optString("Message");
                            if (!TextUtils.isEmpty(optString)) {
                                ToastUtils.show((CharSequence) optString);
                            }
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
            if (z || (x5Var = g5.this.f1508for) == null) {
                return;
            }
            x5Var.mo2986try();
        }
    }

    /* compiled from: UserPresenter.java */
    /* renamed from: com.apk.g5$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends PublicCallback {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f1514do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f1516if;

        public Cif(String str, String str2) {
            this.f1514do = str;
            this.f1516if = str2;
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            g5.this.m2016do();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            g5.this.m2017if();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            JSONObject optJSONObject;
            super.onSuccess(iyVar);
            boolean z = false;
            String str = null;
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        try {
                            String str2 = iyVar.f2262do;
                            if (!TextUtils.isEmpty(str2) && (optJSONObject = new JSONObject(str2).optJSONObject("data")) != null) {
                                str = optJSONObject.optString("Message");
                                if (optJSONObject.optInt("Status") == 1) {
                                    z = true;
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (z) {
                if (g5.this.f1508for != null) {
                    g5.this.f1508for.mo2983if(this.f1514do, this.f1516if);
                    return;
                }
                return;
            }
            if (str == null) {
                str = ze.q(R.string.element_detail_failed_txt);
            }
            ToastUtils.show((CharSequence) str);
        }
    }

    public g5(Activity activity, x5 x5Var) {
        this.f3559do = activity;
        this.f1508for = x5Var;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m939for(g5 g5Var, boolean z, boolean z2) {
        if (g5Var == null) {
            throw null;
        }
        b1 b1Var = new b1();
        b1Var.m143if(g5Var.f3559do);
        b1Var.m141do(new e5(g5Var, z, z2));
    }

    /* renamed from: try  reason: not valid java name */
    public static void m940try(int i, String str, String str2) {
        JSONObject optJSONObject;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("action", "userlogin");
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                jSONObject.put("username", str);
                jSONObject.put("password", str2);
            } else if (!TextUtils.isEmpty(str)) {
                jSONObject.put("username", str);
            }
            jSONObject.put("extinfo", v0.m2735if());
            jSONObject.put("deviceno", eg.m613super());
            jSONObject.put("ver", "1");
            jSONObject.put("ts", System.currentTimeMillis() + "");
            jSONObject.put("phone", "");
            p0.m2011super("SP_TEMP_PHONE_LOGIN_TAG_KEY", jSONObject.toString());
            hashMap.put("data", CryptDesManager.encodeContent(jSONObject.toString()));
            JSONObject m2953extends = x4.m2953extends(w.m2852native(), hashMap);
            if (m2953extends == null || (optJSONObject = m2953extends.optJSONObject("data")) == null || optJSONObject.optInt("Status", -1) != 1) {
                return;
            }
            v0.m2736try().m2748super(true, i, str, str2, optJSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m941case(String str, String str2, String str3) {
        HashMap m1012public = Cgoto.m1012public("action", "bindphone", "username", str);
        m1012public.put("phone", str2);
        m1012public.put("msgcode", str3);
        x4.m2951default(w.m2846final(), m1012public, new Cif(str, str2));
    }

    /* renamed from: new  reason: not valid java name */
    public final void m942new(int i, String str, String str2, String str3, String str4) {
        HashMap hashMap = new HashMap();
        try {
            if (i == 2) {
                hashMap.put("action", "msgcodelogin");
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("phone", str3);
                    jSONObject.put("msgcode", str4);
                    jSONObject.put("extinfo", v0.m2735if());
                    jSONObject.put("deviceno", eg.m613super());
                    jSONObject.put("ver", "1");
                    jSONObject.put("ts", System.currentTimeMillis() + "");
                    p0.m2011super("SP_TEMP_PHONE_LOGIN_TAG_KEY", jSONObject.toString());
                    hashMap.put("data", CryptDesManager.encodeContent(jSONObject.toString()));
                } catch (Exception unused) {
                }
            } else {
                hashMap.put("action", "userlogin");
                JSONObject jSONObject2 = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject2.put("username", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    jSONObject2.put("password", str2);
                }
                jSONObject2.put("extinfo", v0.m2735if());
                jSONObject2.put("deviceno", eg.m613super());
                jSONObject2.put("ver", "1");
                jSONObject2.put("ts", System.currentTimeMillis() + "");
                jSONObject2.put("phone", "");
                p0.m2011super("SP_TEMP_PHONE_LOGIN_TAG_KEY", jSONObject2.toString());
                hashMap.put("data", CryptDesManager.encodeContent(jSONObject2.toString()));
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            x4.m2951default(w.m2852native(), hashMap, new Cdo(i, str, str2));
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
        }
    }
}
