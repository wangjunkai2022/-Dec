package com.tr.danmu.sdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.apk.ab0;
import com.apk.bb0;
import com.apk.fa0;
import com.apk.gb0;
import com.apk.hb0;
import com.apk.jb0;
import com.apk.k40;
import com.apk.kb0;
import com.apk.ky;
import com.apk.ly;
import com.apk.mb0;
import com.apk.q80;
import com.apk.sb0;
import com.apk.wb0;
import com.apk.xb0;
import com.apk.xw;
import com.baidu.tts.client.SpeechSynthesizer;
import com.tr.comment.sdk.bean.TrSourceType;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class TrDanMuSdk {

    /* renamed from: com.tr.danmu.sdk.TrDanMuSdk$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends ab0<JSONObject> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f10488do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f10489for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f10490if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ q80 f10491new;

        public Cdo(String str, String str2, String str3, q80 q80Var) {
            this.f10488do = str;
            this.f10490if = str2;
            this.f10489for = str3;
            this.f10491new = q80Var;
        }

        @Override // com.apk.ab0
        /* renamed from: do */
        public JSONObject mo39do() {
            if (TextUtils.isEmpty(jb0.m1306for())) {
                jb0.m1308new();
            }
            return jb0.m1305do(fa0.m773this(this.f10488do, this.f10490if, this.f10489for), 0L, xw.NO_CACHE);
        }

        @Override // com.apk.ab0
        /* renamed from: if */
        public void mo40if(JSONObject jSONObject) {
            JSONObject jSONObject2 = jSONObject;
            q80 q80Var = this.f10491new;
            if (q80Var != null) {
                if (jSONObject2 != null) {
                    q80Var.success(jSONObject2);
                } else {
                    q80Var.failed(-3, "response is null");
                }
            }
        }
    }

    public static String getHost(String str) {
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        return sharedPreferences != null ? sharedPreferences.getString("SP_SDK_REQUEST_HOST_KEY", str) : str;
    }

    public static void getRequestBarrages(String str, String str2, q80 q80Var) {
        getRequestBarrages(fa0.m762for(null), str, str2, q80Var);
    }

    public static JSONObject getRequestBarragesSync(String str, String str2) {
        return getRequestBarragesSync(fa0.m762for(null), str, str2);
    }

    public static void loadBarrageCount(String str, String str2, xb0 xb0Var) {
        loadBarrageCount(fa0.m762for(null), str, str2, xb0Var);
    }

    public static void setHost(String str) {
        mb0 mb0Var = (mb0) sb0.m2408do();
        SharedPreferences.Editor editor = mb0Var.f3001if;
        if (editor != null) {
            editor.putString("SP_SDK_REQUEST_HOST_KEY", str);
        }
        mb0Var.m1689do();
    }

    public static void submitComment(TrSourceType trSourceType, String str, String str2, String str3, String str4, String str5, q80 q80Var) {
        submitComment(fa0.m762for(trSourceType), str, str2, str3, str4, str5, q80Var);
    }

    public static void getRequestBarrages(TrSourceType trSourceType, String str, String str2, q80 q80Var) {
        getRequestBarrages(fa0.m762for(trSourceType), str, str2, q80Var);
    }

    public static JSONObject getRequestBarragesSync(TrSourceType trSourceType, String str, String str2) {
        return getRequestBarragesSync(fa0.m762for(trSourceType), str, str2);
    }

    public static void loadBarrageCount(TrSourceType trSourceType, String str, String str2, xb0 xb0Var) {
        loadBarrageCount(fa0.m762for(trSourceType), str, str2, xb0Var);
    }

    public static void submitComment(String str, String str2, String str3, String str4, String str5, String str6, q80 q80Var) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("userIn", str);
            jSONObject2.put("userId", fa0.m775throws());
            jSONObject2.put("userName", fa0.m757default());
            jSONObject2.put("equipment", fa0.m774throw());
            jSONObject2.put("bookId", str2);
            if (TextUtils.isEmpty(str3)) {
                str3 = SpeechSynthesizer.REQUEST_DNS_OFF;
            }
            jSONObject2.put("chapterId", str3);
            jSONObject2.put("content", str6);
            jSONObject2.put("tags", str4);
            jSONObject2.put("color", str5);
            jSONObject.put("sign", k40.m1452import(kb0.m1470do(jSONObject2)));
            jSONObject2.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        hb0 hb0Var = new hb0(q80Var);
        xw xwVar = xw.NO_CACHE;
        ly lyVar = new ly(fa0.m755class() + "/Api/Barrage/Add");
        lyVar.m2194if(0L);
        lyVar.f3957case = xwVar;
        lyVar.m1796final(jSONObject);
        lyVar.m2195new(hb0Var);
    }

    public static void getRequestBarrages(String str, String str2, String str3, q80 q80Var) {
        new bb0().m166do(new Cdo(str, str2, str3, q80Var));
    }

    public static JSONObject getRequestBarragesSync(String str, String str2, String str3) {
        if (TextUtils.isEmpty(jb0.m1306for())) {
            jb0.m1308new();
        }
        String m773this = fa0.m773this(str, str2, str3);
        long m768public = fa0.m768public();
        return jb0.m1305do(m773this, m768public, m768public > 0 ? xw.ALWAYS_FIRST_CACHE_THEN_REQUEST : xw.NO_CACHE);
    }

    public static void loadBarrageCount(String str, String str2, String str3, xb0 xb0Var) {
        if (jb0.f2304for == null) {
            synchronized (jb0.class) {
                if (jb0.f2304for == null) {
                    jb0.f2304for = new jb0();
                }
            }
        }
        jb0 jb0Var = jb0.f2304for;
        if (jb0Var != null) {
            String m996else = Cgoto.m996else(str2, "&", str3);
            wb0<String, Integer> wb0Var = jb0Var.f2305do;
            if (wb0Var != null && wb0Var.containsKey(m996else)) {
                if (xb0Var != null) {
                    xb0Var.m2988do(str2, str3, jb0Var.f2305do.get(m996else).intValue());
                    return;
                }
                return;
            }
            wb0<String, String> wb0Var2 = jb0Var.f2306if;
            if (wb0Var2 != null && wb0Var2.size() > 0) {
                if (jb0Var.f2306if.containsKey(m996else)) {
                    return;
                }
                jb0Var.f2306if.put(m996else, str2);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(fa0.m755class());
            sb.append("/Api/Barrage/Count/");
            sb.append(str);
            sb.append("/");
            sb.append(str2);
            String m991class = Cgoto.m991class(sb, "/", str3);
            long m768public = fa0.m768public();
            xw xwVar = m768public > 0 ? xw.ALWAYS_FIRST_CACHE_THEN_REQUEST : xw.NO_CACHE;
            gb0 gb0Var = new gb0(jb0Var, m996else, str2, str3, xb0Var);
            ky kyVar = new ky(m991class);
            if (m768public <= -1) {
                m768public = -1;
            }
            kyVar.f3965goto = m768public;
            kyVar.f3957case = xwVar;
            kyVar.m2195new(gb0Var);
            return;
        }
        throw null;
    }
}
