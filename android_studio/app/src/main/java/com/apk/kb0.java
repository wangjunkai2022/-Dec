package com.apk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.core.app.NotificationCompatJellybean;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.baidu.tts.client.SpeechSynthesizer;
import com.tr.comment.sdk.R$string;
import com.tr.comment.sdk.bean.TrCommentBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TrCommentPresenter.java */
/* loaded from: classes7.dex */
public class kb0 extends eb0<lb0> {

    /* compiled from: TrCommentPresenter.java */
    /* renamed from: com.apk.kb0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo extends ma0 {

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f2501for;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ int f2502new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ String f2503try;

        public Cdo(boolean z, int i, String str) {
            this.f2501for = z;
            this.f2502new = i;
            this.f2503try = str;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<String> iyVar) {
            GV gv;
            super.onCacheSuccess(iyVar);
            if (!this.f2501for && (gv = kb0.this.f1029do) != 0) {
                ((lb0) gv).mo1622for();
            }
            if (iyVar != null && iyVar.m1293for()) {
                kb0.m1471if(kb0.this, iyVar.f2262do, this.f2502new, this.f2501for);
            }
            if (iyVar != null) {
                String str = iyVar.f2262do;
            }
        }

        @Override // com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            fa0.m769return();
            if (iyVar != null) {
                iyVar.m1292do();
            }
            GV gv = kb0.this.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1625try(null, this.f2502new, false, this.f2501for);
            }
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            GV gv;
            super.onFinish(iyVar);
            if (this.f2501for || (gv = kb0.this.f1029do) == 0) {
                return;
            }
            ((lb0) gv).mo1622for();
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            GV gv;
            super.onStart(qyVar);
            if (this.f2501for || (gv = kb0.this.f1029do) == 0) {
                return;
            }
            ((lb0) gv).mo1623goto();
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null && iyVar.m1293for()) {
                kb0.m1471if(kb0.this, iyVar.f2262do, this.f2502new, this.f2501for);
                if (iyVar.m1292do() == 401) {
                    mb0 mb0Var = (mb0) sb0.m2408do();
                    SharedPreferences.Editor editor = mb0Var.f3001if;
                    if (editor != null) {
                        editor.remove("SP_SDK_REQUEST_TOKEN_KEY");
                    }
                    mb0Var.m1689do();
                }
            }
            if (iyVar != null) {
                String str = iyVar.f2262do;
            }
        }
    }

    /* compiled from: TrCommentPresenter.java */
    /* renamed from: com.apk.kb0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cfor extends ma0 {

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f2504for;

        public Cfor(String str) {
            this.f2504for = str;
        }

        @Override // com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            fa0.m766native();
            if (iyVar != null) {
                iyVar.m1292do();
            }
            fa0.m756const(k40.m1467while(R$string.tr_sdk_comment_request_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            GV gv = kb0.this.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1622for();
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            GV gv = kb0.this.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1623goto();
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        JSONObject jSONObject = new JSONObject(iyVar.f2262do);
                        fa0.m766native();
                        jSONObject.toString();
                        String optString = jSONObject.optString("Info");
                        if (!TextUtils.isEmpty(optString)) {
                            fa0.m756const(optString);
                        }
                        JSONObject optJSONObject = jSONObject.optJSONObject("Data");
                        if (optJSONObject == null || optJSONObject.optInt("Result") != 1 || kb0.this.f1029do == 0) {
                            return;
                        }
                        ((lb0) kb0.this.f1029do).mo1624new(this.f2504for);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: TrCommentPresenter.java */
    /* renamed from: com.apk.kb0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif extends ma0 {

        /* renamed from: case  reason: not valid java name */
        public final /* synthetic */ String f2506case;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f2508for;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f2509new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ String f2510try;

        public Cif(String str, String str2, String str3, String str4) {
            this.f2508for = str;
            this.f2509new = str2;
            this.f2510try = str3;
            this.f2506case = str4;
        }

        @Override // com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            fa0.m769return();
            if (iyVar != null) {
                iyVar.m1292do();
            }
            fa0.m756const(k40.m1467while(R$string.tr_sdk_comment_request_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            GV gv = kb0.this.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1622for();
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            GV gv = kb0.this.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1623goto();
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        JSONObject jSONObject = new JSONObject(iyVar.f2262do);
                        fa0.m769return();
                        jSONObject.toString();
                        String optString = jSONObject.optString("Info");
                        if (!TextUtils.isEmpty(optString)) {
                            fa0.m756const(optString);
                        }
                        JSONObject optJSONObject = jSONObject.optJSONObject("Data");
                        if (optJSONObject == null || optJSONObject.optInt("Result") != 1) {
                            return;
                        }
                        String optString2 = optJSONObject.optString("CommentId");
                        TrCommentBean trCommentBean = new TrCommentBean();
                        trCommentBean.setUserAdd(true);
                        trCommentBean.setId(optString2);
                        trCommentBean.setBookId(this.f2508for);
                        trCommentBean.setChapterId(this.f2509new);
                        trCommentBean.setContent(this.f2510try);
                        trCommentBean.setCommendCount(0);
                        trCommentBean.setUpdateTime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
                        trCommentBean.setUserFace(fa0.m772switch());
                        trCommentBean.setUserId(fa0.m775throws());
                        String m757default = fa0.m757default();
                        if (k40.m1439catch(m757default)) {
                            try {
                                if (!TextUtils.isEmpty(m757default)) {
                                    m757default = m757default.replaceAll("(\\d{3})\\d{5}(\\d{3})", "$1****$2");
                                }
                            } catch (Exception unused) {
                            }
                        }
                        trCommentBean.setUserName(m757default);
                        if (kb0.this.f1029do != 0) {
                            ((lb0) kb0.this.f1029do).mo1621else(trCommentBean, this.f2506case);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: TrCommentPresenter.java */
    /* renamed from: com.apk.kb0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cnew extends ma0 {
        public Cnew() {
        }

        @Override // com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            fa0.m764if();
            if (iyVar != null) {
                iyVar.m1292do();
            }
            fa0.m756const(k40.m1467while(R$string.tr_sdk_comment_request_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            GV gv = kb0.this.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1622for();
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            GV gv = kb0.this.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1623goto();
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        JSONObject jSONObject = new JSONObject(iyVar.f2262do);
                        fa0.m764if();
                        jSONObject.toString();
                        String optString = jSONObject.optString("Info");
                        if (TextUtils.isEmpty(optString)) {
                            return;
                        }
                        fa0.m756const(optString);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public kb0(Context context, lb0 lb0Var) {
        super(context, lb0Var);
    }

    /* renamed from: do  reason: not valid java name */
    public static String m1470do(JSONObject jSONObject) {
        try {
            jSONObject.put("Timestamp", System.currentTimeMillis() + "");
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static void m1471if(kb0 kb0Var, String str, int i, boolean z) {
        JSONObject optJSONObject;
        List<TrCommentBean> list = null;
        if (kb0Var != null) {
            ArrayList arrayList = new ArrayList();
            boolean z2 = false;
            try {
                if (!TextUtils.isEmpty(str) && (optJSONObject = new JSONObject(str).optJSONObject("Data")) != null) {
                    z2 = optJSONObject.optBoolean("HasNext");
                    String optString = optJSONObject.optString("List");
                    if (!TextUtils.isEmpty(optString) && !"[]".equals(optString)) {
                        try {
                            String m1450goto = k40.m1450goto(optString);
                            if (new JSONArray(m1450goto).length() > 0) {
                                try {
                                    list = (List) q90.f3823do.fromJson(m1450goto, new p90().getType());
                                } catch (Exception unused) {
                                }
                                if (list != null) {
                                    for (TrCommentBean trCommentBean : list) {
                                        trCommentBean.setUserName(k40.m1458return(trCommentBean.getUserName()));
                                    }
                                    arrayList.addAll(list);
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            GV gv = kb0Var.f1029do;
            if (gv != 0) {
                ((lb0) gv).mo1625try(arrayList, i, z2, z);
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: case  reason: not valid java name */
    public final void m1472case(String str, int i, boolean z) {
        if (!z) {
            JSONObject jSONObject = fa0.f1264do != null ? Ccontinue.m379if().f718native : null;
            if (jSONObject != null && jSONObject.has("content")) {
                String optString = jSONObject.optString(NotificationCompatJellybean.KEY_TITLE, k40.m1467while(R$string.tr_sdk_official_author_title));
                String optString2 = jSONObject.optString("userFace");
                String optString3 = jSONObject.optString("content");
                String optString4 = jSONObject.optString("clicktype");
                String optString5 = jSONObject.optString("apk_pkg");
                String optString6 = jSONObject.optString(AnimatedVectorDrawableCompat.TARGET);
                TrCommentBean trCommentBean = new TrCommentBean();
                trCommentBean.setUserName(optString);
                trCommentBean.setUserFace(optString2);
                trCommentBean.setContent(optString3);
                trCommentBean.setClicktype(optString4);
                trCommentBean.setApk_pkg(optString5);
                trCommentBean.setTarget(optString6);
                GV gv = this.f1029do;
                if (gv != 0) {
                    ((lb0) gv).mo1620case(trCommentBean);
                }
            }
        }
        long m768public = i == 1 ? fa0.m768public() : 0L;
        xw xwVar = m768public > 0 ? xw.ALWAYS_FIRST_CACHE_THEN_REQUEST : xw.NO_CACHE;
        Cdo cdo = new Cdo(z, i, str);
        ky kyVar = new ky(str);
        if (m768public <= -1) {
            m768public = -1;
        }
        kyVar.f3965goto = m768public;
        kyVar.f3957case = xwVar;
        kyVar.m2195new(cdo);
    }

    /* renamed from: for  reason: not valid java name */
    public void m1473for(String str, String str2, String str3, TrCommentBean trCommentBean, String str4) {
        Context context = this.f1030if;
        if (context == null || fa0.m754catch(context)) {
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("userIn", str);
                jSONObject2.put("equipment", fa0.m774throw());
                jSONObject2.put("infoUserName", fa0.m757default());
                jSONObject2.put("infoUserId", fa0.m775throws());
                jSONObject2.put("infoUserFace", fa0.m772switch());
                jSONObject2.put("mUserId", trCommentBean.getUserId());
                jSONObject2.put("userName", trCommentBean.getUserName());
                jSONObject2.put("userFace", trCommentBean.getUserFace());
                jSONObject2.put("bookId", str2);
                if (TextUtils.isEmpty(str3)) {
                    str3 = SpeechSynthesizer.REQUEST_DNS_OFF;
                }
                jSONObject2.put("chapterId", str3);
                jSONObject2.put("commentId", trCommentBean.getId());
                jSONObject2.put("forType", str4);
                jSONObject.put("sign", k40.m1452import(m1470do(jSONObject2)));
            } catch (Exception e) {
                e.printStackTrace();
            }
            ja0.m1297case(fa0.m764if(), null, jSONObject, new Cnew());
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m1474new(String str, String str2, String str3, String str4) {
        Context context = this.f1030if;
        if (context == null || fa0.m754catch(context)) {
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("userIn", str);
                jSONObject2.put("userId", fa0.m775throws());
                jSONObject2.put("equipment", fa0.m774throw());
                jSONObject2.put("bookId", str2);
                if (TextUtils.isEmpty(str3)) {
                    str3 = SpeechSynthesizer.REQUEST_DNS_OFF;
                }
                jSONObject2.put("chapterId", str3);
                jSONObject2.put("userName", fa0.m757default());
                jSONObject2.put("userFace", fa0.m772switch());
                jSONObject2.put("commentId", str4);
                jSONObject.put("sign", k40.m1452import(m1470do(jSONObject2)));
            } catch (Exception e) {
                e.printStackTrace();
            }
            ja0.m1297case(fa0.m766native(), null, jSONObject, new Cfor(str4));
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m1475try(String str, String str2, String str3, String str4, String str5) {
        Context context = this.f1030if;
        if (context == null || fa0.m754catch(context)) {
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("userIn", str);
                jSONObject2.put("userId", fa0.m775throws());
                jSONObject2.put("userName", fa0.m757default());
                jSONObject2.put("userFace", fa0.m772switch());
                jSONObject2.put("equipment", fa0.m774throw());
                boolean isEmpty = TextUtils.isEmpty(str5);
                String str6 = SpeechSynthesizer.REQUEST_DNS_OFF;
                jSONObject2.put("parentId", !isEmpty ? str5 : SpeechSynthesizer.REQUEST_DNS_OFF);
                jSONObject2.put("bookId", str2);
                if (!TextUtils.isEmpty(str3)) {
                    str6 = str3;
                }
                jSONObject2.put("chapterId", str6);
                jSONObject2.put("content", str4);
                jSONObject.put("sign", k40.m1452import(m1470do(jSONObject2)));
            } catch (Exception e) {
                e.printStackTrace();
            }
            ja0.m1297case(fa0.m769return(), null, jSONObject, new Cif(str2, str3, str4, str5));
        }
    }
}
