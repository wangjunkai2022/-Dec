package com.apk;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.app.AppContext;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.swl.gg.sdk.TrAdSdk;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* compiled from: AdLoadManager.java */
/* renamed from: com.apk.finally  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cfinally {
    public static Cfinally t;

    /* renamed from: a  reason: collision with root package name */
    public JSONObject f11100a;

    /* renamed from: abstract  reason: not valid java name */
    public JSONObject f1338abstract;
    public JSONObject b;

    /* renamed from: break  reason: not valid java name */
    public JSONObject f1339break;
    public JSONObject c;

    /* renamed from: case  reason: not valid java name */
    public JSONObject f1340case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f1341catch;

    /* renamed from: class  reason: not valid java name */
    public JSONObject f1342class;

    /* renamed from: const  reason: not valid java name */
    public JSONObject f1343const;

    /* renamed from: continue  reason: not valid java name */
    public JSONObject f1344continue;
    public JSONObject d;

    /* renamed from: default  reason: not valid java name */
    public JSONObject f1345default;
    public JSONObject e;

    /* renamed from: else  reason: not valid java name */
    public JSONObject f1347else;

    /* renamed from: extends  reason: not valid java name */
    public JSONObject f1348extends;
    public JSONObject f;

    /* renamed from: final  reason: not valid java name */
    public JSONObject f1349final;

    /* renamed from: finally  reason: not valid java name */
    public int f1350finally;

    /* renamed from: for  reason: not valid java name */
    public JSONObject f1351for;
    public JSONObject g;

    /* renamed from: goto  reason: not valid java name */
    public JSONObject f1352goto;
    public JSONObject h;
    public JSONObject i;

    /* renamed from: if  reason: not valid java name */
    public int f1353if;

    /* renamed from: implements  reason: not valid java name */
    public JSONObject f1354implements;

    /* renamed from: import  reason: not valid java name */
    public JSONObject f1355import;

    /* renamed from: instanceof  reason: not valid java name */
    public JSONObject f1356instanceof;

    /* renamed from: interface  reason: not valid java name */
    public JSONObject f1357interface;
    public JSONObject j;
    public JSONObject k;
    public JSONObject n;

    /* renamed from: native  reason: not valid java name */
    public JSONObject f1358native;

    /* renamed from: new  reason: not valid java name */
    public JSONObject f1359new;
    public JSONObject o;
    public JSONObject p;

    /* renamed from: package  reason: not valid java name */
    public JSONObject f1360package;

    /* renamed from: private  reason: not valid java name */
    public JSONObject f1361private;

    /* renamed from: protected  reason: not valid java name */
    public JSONObject f1362protected;

    /* renamed from: public  reason: not valid java name */
    public JSONObject f1363public;
    public JSONObject q;
    public List<g> r;

    /* renamed from: return  reason: not valid java name */
    public JSONObject f1364return;
    public int s;

    /* renamed from: static  reason: not valid java name */
    public JSONObject f1365static;

    /* renamed from: strictfp  reason: not valid java name */
    public JSONObject f1366strictfp;

    /* renamed from: super  reason: not valid java name */
    public JSONObject f1367super;

    /* renamed from: switch  reason: not valid java name */
    public JSONObject f1368switch;

    /* renamed from: synchronized  reason: not valid java name */
    public JSONObject f1369synchronized;

    /* renamed from: this  reason: not valid java name */
    public JSONObject f1370this;

    /* renamed from: throw  reason: not valid java name */
    public JSONObject f1371throw;

    /* renamed from: throws  reason: not valid java name */
    public JSONObject f1372throws;

    /* renamed from: transient  reason: not valid java name */
    public JSONObject f1373transient;

    /* renamed from: try  reason: not valid java name */
    public JSONObject f1374try;

    /* renamed from: volatile  reason: not valid java name */
    public JSONObject f1375volatile;

    /* renamed from: while  reason: not valid java name */
    public JSONObject f1376while;

    /* renamed from: do  reason: not valid java name */
    public boolean f1346do = false;
    public long l = TTAdConstant.AD_MAX_EVENT_TIME;
    public int m = -1;

    /* compiled from: AdLoadManager.java */
    /* renamed from: com.apk.finally$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements ft {
        @Override // com.apk.ft
        public void onClick() {
            AppContext appContext = AppContext.f6392case;
            Intent launchIntentForPackage = appContext.getPackageManager().getLaunchIntentForPackage(appContext.getPackageName());
            launchIntentForPackage.addFlags(67108864);
            ((AlarmManager) appContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis(), PendingIntent.getActivity(appContext, 0, launchIntentForPackage, 1073741824));
            Process.killProcess(Process.myPid());
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static int m792break() {
        return ze.m3174instanceof("SP_VIDEO_FREE_AD_KEY", 0);
    }

    public static List<g> c(JSONArray jSONArray, int i, int i2) {
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i3);
                g gVar = new g(optJSONObject.optString("adpt"), optJSONObject.optString("adid"));
                gVar.f1482for = i;
                gVar.f1484new = i2;
                arrayList.add(gVar);
            }
            return arrayList;
        }
        return null;
    }

    /* renamed from: case  reason: not valid java name */
    public static int m793case() {
        return (int) (Math.min(eg.m614switch(), eg.m611static()) / 6.2f);
    }

    /* renamed from: catch  reason: not valid java name */
    public static int m794catch() {
        int next_spgg = Ccontinue.m379if().m382for() != null ? Ccontinue.m379if().m382for().getNext_spgg() : 0;
        if (next_spgg == 0) {
            return 3;
        }
        return next_spgg;
    }

    /* renamed from: const  reason: not valid java name */
    public static boolean m795const(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("close")) {
            return false;
        }
        return "1".equals(jSONObject.optString("close"));
    }

    public static List<g> d(JSONArray jSONArray, String str) {
        String[] split;
        List<g> c = jSONArray != null ? c(jSONArray, 0, 0) : null;
        try {
            if (TextUtils.isEmpty(str) || (split = str.split(":")) == null || split.length <= 0) {
                return c;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < split.length; i++) {
                if (i < c.size()) {
                    int parseInt = Integer.parseInt(split[i]);
                    for (int i2 = 0; i2 < parseInt; i2++) {
                        arrayList.add(c.get(i));
                    }
                }
            }
            return arrayList.size() > 0 ? arrayList : c;
        } catch (Exception e) {
            e.printStackTrace();
            return c;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static JSONObject m796do(JSONObject jSONObject, String str) {
        int i;
        JSONArray optJSONArray;
        if (jSONObject == null || TrAdSdk.isDayMax(str, m798for(jSONObject))) {
            return null;
        }
        if (jSONObject.has("free_time_h")) {
            i = jSONObject.optInt("free_time_h");
        } else {
            i = m797else().f1353if;
        }
        if (i > 0) {
            try {
                if (w0.m2894this() < i * 60 * 60 * 1000) {
                    if (!jSONObject.has("inst_list") || (optJSONArray = jSONObject.optJSONArray("inst_list")) == null || optJSONArray.length() <= 0) {
                        return null;
                    }
                    jSONObject.put(LitePalParser.NODE_LIST, optJSONArray);
                    jSONObject.remove("inst_list");
                    return jSONObject;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray(LitePalParser.NODE_LIST);
        if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
            return null;
        }
        return jSONObject;
    }

    public static List<g> e(JSONObject jSONObject) {
        if (jSONObject != null) {
            return c(jSONObject.optJSONArray(LitePalParser.NODE_LIST), m801new(jSONObject), m798for(jSONObject));
        }
        return null;
    }

    /* renamed from: else  reason: not valid java name */
    public static Cfinally m797else() {
        if (t == null) {
            synchronized (Cfinally.class) {
                if (t == null) {
                    t = new Cfinally();
                }
            }
        }
        return t;
    }

    public static List<g> f(JSONObject jSONObject, String str) {
        String[] split;
        List<g> c = jSONObject != null ? c(jSONObject.optJSONArray(LitePalParser.NODE_LIST), m801new(jSONObject), m798for(jSONObject)) : null;
        try {
            if (TextUtils.isEmpty(str) || (split = str.split(":")) == null || split.length <= 0) {
                return c;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < split.length; i++) {
                if (i < c.size()) {
                    int parseInt = Integer.parseInt(split[i]);
                    for (int i2 = 0; i2 < parseInt; i2++) {
                        arrayList.add(c.get(i));
                    }
                }
            }
            return arrayList.size() > 0 ? arrayList : c;
        } catch (Exception e) {
            e.printStackTrace();
            return c;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static int m798for(JSONObject jSONObject) {
        return jSONObject.optInt("day_max");
    }

    public static List<g> g(JSONObject jSONObject) {
        if (jSONObject != null) {
            return c(jSONObject.optJSONArray("video_list"), m801new(jSONObject), m798for(jSONObject));
        }
        return null;
    }

    /* renamed from: goto  reason: not valid java name */
    public static long m799goto(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optLong("Interval", 0L) * 1000;
        }
        return 0L;
    }

    public static void h(Context context) {
        eg.j(context, tt.m2620do("SP_RESTART_APP_TIPS_KEY", ze.q(R.string.restart_app_tips_msg)), new Cdo(), false, false);
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m800if() {
        return m792break() >= m794catch();
    }

    /* renamed from: new  reason: not valid java name */
    public static int m801new(JSONObject jSONObject) {
        return jSONObject.optInt("per_req");
    }

    /* renamed from: try  reason: not valid java name */
    public static boolean m802try(JSONObject jSONObject) {
        if (jSONObject.has("adrandom")) {
            return jSONObject.optBoolean("adrandom");
        }
        return ze.m3179private("SP_AD_RANDOM_LOAD_KEY", false);
    }

    public boolean a() {
        return (this.e == null || !m808final() || m796do(this.e, "toptotal") == null) ? false : true;
    }

    /* renamed from: abstract  reason: not valid java name */
    public boolean m803abstract() {
        return (this.f1372throws == null || !m808final() || m796do(this.f1372throws, "rectbdetail") == null) ? false : true;
    }

    public boolean b() {
        return (this.c == null || !m808final() || m796do(this.c, "topweek") == null) ? false : true;
    }

    /* renamed from: class  reason: not valid java name */
    public boolean m804class() {
        this.f1341catch = false;
        if (this.f1342class == null || !m808final() || m796do(this.f1342class, "besttopad2") == null) {
            return (this.f1343const == null || !m808final() || m796do(this.f1343const, "besttopad") == null) ? false : true;
        }
        this.f1341catch = true;
        return true;
    }

    /* renamed from: continue  reason: not valid java name */
    public boolean m805continue() {
        return (this.f1368switch == null || !m808final() || m796do(this.f1368switch, "rectbsy1") == null) ? false : true;
    }

    /* renamed from: default  reason: not valid java name */
    public boolean m806default() {
        return (this.f1338abstract == null || !m808final() || m796do(this.f1338abstract, "textlink") == null) ? false : true;
    }

    /* renamed from: extends  reason: not valid java name */
    public boolean m807extends() {
        return (this.f1355import == null || !m822super(false) || m796do(this.f1355import, "insertstsw2") == null) ? false : true;
    }

    /* renamed from: final  reason: not valid java name */
    public final boolean m808final() {
        return m822super(true);
    }

    /* renamed from: finally  reason: not valid java name */
    public boolean m809finally() {
        return (this.d == null || !m808final() || m796do(this.d, "topmonth") == null) ? false : true;
    }

    /* renamed from: implements  reason: not valid java name */
    public boolean m810implements() {
        return (this.f11100a == null || !m808final() || m796do(this.f11100a, "topicrecommend") == null) ? false : true;
    }

    /* renamed from: import  reason: not valid java name */
    public boolean m811import() {
        return (this.f1373transient == null || !m808final() || m796do(this.f1373transient, "bshomelist") == null) ? false : true;
    }

    /* renamed from: instanceof  reason: not valid java name */
    public boolean m812instanceof() {
        return (this.f1356instanceof == null || !m808final() || m796do(this.f1356instanceof, "topichot") == null) ? false : true;
    }

    /* renamed from: interface  reason: not valid java name */
    public boolean m813interface() {
        return (this.k == null || !m808final() || m796do(this.k, "shelfrect") == null) ? false : true;
    }

    /* renamed from: native  reason: not valid java name */
    public boolean m814native() {
        return (this.f1370this == null || !m808final() || m796do(this.f1370this, "bsinfonative") == null) ? false : true;
    }

    /* renamed from: package  reason: not valid java name */
    public boolean m815package() {
        return (this.f1348extends == null || !m808final() || m796do(this.f1348extends, "myfootprint") == null) ? false : true;
    }

    /* renamed from: private  reason: not valid java name */
    public boolean m816private() {
        return (this.f1361private == null || !m808final() || m796do(this.f1361private, "readoverVideos") == null) ? false : true;
    }

    /* renamed from: protected  reason: not valid java name */
    public boolean m817protected() {
        return (this.j == null || !m822super(false) || m796do(this.j, "toforeground") == null) ? false : true;
    }

    /* renamed from: public  reason: not valid java name */
    public boolean m818public() {
        return (this.h == null || !m808final() || m796do(this.h, "categorylist") == null) ? false : true;
    }

    /* renamed from: return  reason: not valid java name */
    public boolean m819return() {
        return (this.f1349final == null || !m808final() || m796do(this.f1349final, "chaptersmid2") == null) ? false : true;
    }

    /* renamed from: static  reason: not valid java name */
    public boolean m820static() {
        return (this.f1367super == null || !m808final() || m796do(this.f1367super, "chaptersmid_mh2") == null) ? false : true;
    }

    /* renamed from: strictfp  reason: not valid java name */
    public boolean m821strictfp() {
        return (this.f1365static == null || !m808final() || m796do(this.f1365static, "rectsddetail") == null) ? false : true;
    }

    /* renamed from: super  reason: not valid java name */
    public final boolean m822super(boolean z) {
        if (!z || eg.m600implements()) {
            return this.f1346do;
        }
        return false;
    }

    /* renamed from: switch  reason: not valid java name */
    public boolean m823switch() {
        return this.f1359new != null && m822super(true) && i.m1177new("dir_insert", this.f1359new.optInt("showInterval"), this.f1359new.optInt("maxcount")) && m796do(this.f1359new, "dir_insert") != null;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public boolean m824synchronized() {
        return (this.b == null || !m808final() || m796do(this.b, "topicnew") == null) ? false : true;
    }

    /* renamed from: this  reason: not valid java name */
    public int m825this(List<g> list) {
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return dg.f857do.nextInt(list.size());
    }

    /* renamed from: throw  reason: not valid java name */
    public boolean m826throw() {
        return (this.f1358native == null || !m822super(false) || m796do(this.f1358native, "bannerlastpage2") == null) ? false : true;
    }

    /* renamed from: throws  reason: not valid java name */
    public boolean m827throws() {
        return this.f1374try != null && m822super(true) && i.m1177new("dir_rect", this.f1374try.optInt("showInterval"), this.f1374try.optInt("maxcount")) && m796do(this.f1374try, "dir_rect") != null;
    }

    /* renamed from: transient  reason: not valid java name */
    public boolean m828transient() {
        return (this.f1369synchronized == null || !m808final() || m796do(this.f1369synchronized, "topiccollect") == null) ? false : true;
    }

    /* renamed from: volatile  reason: not valid java name */
    public boolean m829volatile() {
        return (this.f1375volatile == null || !m808final() || m796do(this.f1375volatile, "sddetaillist") == null) ? false : true;
    }

    /* renamed from: while  reason: not valid java name */
    public boolean m830while() {
        return (this.f1366strictfp == null || !m808final() || m796do(this.f1366strictfp, "blocknative") == null) ? false : true;
    }
}
