package com.apk;

import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import com.tr.comment.sdk.bean.TrSortType;
import com.tr.comment.sdk.bean.TrSourceType;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TrRequestManager.java */
/* loaded from: classes7.dex */
public class ja0 {

    /* renamed from: do  reason: not valid java name */
    public static ThreadPoolExecutor f2299do;

    /* compiled from: TrRequestManager.java */
    /* renamed from: com.apk.ja0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends ma0 {

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ q80 f2300for;

        public Cdo(q80 q80Var) {
            this.f2300for = q80Var;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<String> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        q80 q80Var = this.f2300for;
                        if (q80Var != null) {
                            q80Var.success(new JSONObject(iyVar.f2262do));
                        }
                    } else {
                        q80 q80Var2 = this.f2300for;
                        if (q80Var2 != null) {
                            q80Var2.failed(iyVar.m1292do(), iyVar.m1294new());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            try {
                q80 q80Var = this.f2300for;
                if (q80Var != null) {
                    q80Var.failed(iyVar.m1292do(), iyVar.m1294new());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        q80 q80Var = this.f2300for;
                        if (q80Var != null) {
                            q80Var.success(new JSONObject(iyVar.f2262do));
                        }
                    } else {
                        q80 q80Var2 = this.f2300for;
                        if (q80Var2 != null) {
                            q80Var2.failed(iyVar.m1292do(), iyVar.m1294new());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: TrRequestManager.java */
    /* renamed from: com.apk.ja0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cfor extends ma0 {

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ List f2301for;

        public Cfor(List list) {
            this.f2301for = list;
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        this.f2301for.add(new JSONObject(iyVar.f2262do));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: TrRequestManager.java */
    /* renamed from: com.apk.ja0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends ma0 {

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ List f2302for;

        public Cif(List list) {
            this.f2302for = list;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<String> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        this.f2302for.add(new JSONObject(iyVar.f2262do));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.apk.ma0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        this.f2302for.add(new JSONObject(iyVar.f2262do));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static <T> void m1297case(String str, Map<String, String> map, JSONObject jSONObject, mx<T> mxVar) {
        xw xwVar = xw.NO_CACHE;
        if (map != null) {
            ly lyVar = new ly(str);
            lyVar.m2194if(0L);
            lyVar.f3957case = xwVar;
            lyVar.m2191class(map, new boolean[0]);
            lyVar.f3136while = map.size() > 0;
            lyVar.m2195new(mxVar);
        } else if (jSONObject != null) {
            ly lyVar2 = new ly(str);
            lyVar2.m2194if(0L);
            lyVar2.f3957case = xwVar;
            lyVar2.m1796final(jSONObject);
            lyVar2.m2195new(mxVar);
        } else {
            ly lyVar3 = new ly(str);
            lyVar3.m2194if(0L);
            lyVar3.f3957case = xwVar;
            lyVar3.m2195new(mxVar);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1298do(Activity activity) {
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        int i = sharedPreferences != null ? sharedPreferences.getInt("SP_SOFTKEY_HEIGHT", 0) : 0;
        return i == 0 ? (int) ((activity.getResources().getDisplayMetrics().density * 280.0f) + 0.5f) : i;
    }

    /* renamed from: else  reason: not valid java name */
    public static boolean m1299else(View view) {
        if (view == null) {
            return false;
        }
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        return ((float) (view.getBottom() - rect.bottom)) > view.getResources().getDisplayMetrics().density * 100.0f;
    }

    /* renamed from: for  reason: not valid java name */
    public static JSONObject m1300for(String str, long j, xw xwVar) {
        ArrayList arrayList = new ArrayList();
        Cif cif = new Cif(arrayList);
        ky kyVar = new ky(str);
        if (j <= -1) {
            j = -1;
        }
        kyVar.f3965goto = j;
        kyVar.f3957case = xwVar;
        kyVar.m2189case(cif);
        if (arrayList.size() > 0) {
            return (JSONObject) arrayList.get(0);
        }
        return null;
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m1301goto() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("AppId", fa0.m761final());
            jSONObject2.put("Timestamp", System.currentTimeMillis() + "");
            jSONObject.put("sign", k40.m1452import(jSONObject2.toString()));
        } catch (JSONException unused) {
        }
        JSONObject m1303new = m1303new(fa0.m765import(), null, jSONObject);
        if (m1303new != null) {
            fa0.m765import();
            m1303new.toString();
            JSONObject optJSONObject = m1303new.optJSONObject("Data");
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("Token");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                mb0 mb0Var = (mb0) sb0.m2408do();
                SharedPreferences.Editor editor = mb0Var.f3001if;
                if (editor != null) {
                    editor.putString("SP_SDK_REQUEST_TOKEN_KEY", optString);
                }
                mb0Var.m1689do();
                return;
            }
            return;
        }
        fa0.m765import();
    }

    /* renamed from: if  reason: not valid java name */
    public static String m1302if(TrSourceType trSourceType, String str, String str2, int i, int i2, TrSortType trSortType) {
        if (i != -1) {
            str2 = str2 + "_" + i;
        }
        return fa0.m776try(trSourceType.toString(), str, str2, trSortType.getName(), i2);
    }

    /* renamed from: new  reason: not valid java name */
    public static JSONObject m1303new(String str, Map<String, String> map, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        Cfor cfor = new Cfor(arrayList);
        xw xwVar = xw.NO_CACHE;
        if (map != null) {
            ly lyVar = new ly(str);
            lyVar.m2194if(0L);
            lyVar.f3957case = xwVar;
            lyVar.m2191class(map, new boolean[0]);
            lyVar.f3136while = map.size() > 0;
            lyVar.m2189case(cfor);
        } else if (jSONObject != null) {
            ly lyVar2 = new ly(str);
            lyVar2.m2194if(0L);
            lyVar2.f3957case = xwVar;
            lyVar2.m1796final(jSONObject);
            lyVar2.m2189case(cfor);
        } else {
            ly lyVar3 = new ly(str);
            lyVar3.m2194if(0L);
            lyVar3.f3957case = xwVar;
            lyVar3.m2189case(cfor);
        }
        if (arrayList.size() > 0) {
            return (JSONObject) arrayList.get(0);
        }
        return null;
    }

    /* renamed from: try  reason: not valid java name */
    public static void m1304try(String str, long j, xw xwVar, q80 q80Var) {
        Cdo cdo = new Cdo(q80Var);
        ky kyVar = new ky(str);
        if (j <= -1) {
            j = -1;
        }
        kyVar.f3965goto = j;
        kyVar.f3957case = xwVar;
        kyVar.m2195new(cdo);
    }
}
