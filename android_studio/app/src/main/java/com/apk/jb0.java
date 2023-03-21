package com.apk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* compiled from: TrDanMuManager.java */
/* loaded from: classes7.dex */
public class jb0 {

    /* renamed from: for  reason: not valid java name */
    public static jb0 f2304for;

    /* renamed from: do  reason: not valid java name */
    public final wb0<String, Integer> f2305do = new wb0<>();

    /* renamed from: if  reason: not valid java name */
    public final wb0<String, String> f2306if = new wb0<>();

    /* compiled from: TrDanMuManager.java */
    /* renamed from: com.apk.jb0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends db0 {

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ List f2307for;

        public Cdo(List list) {
            this.f2307for = list;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<String> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        this.f2307for.add(new JSONObject(iyVar.f2262do));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.apk.db0, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        this.f2307for.add(new JSONObject(iyVar.f2262do));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static JSONObject m1305do(String str, long j, xw xwVar) {
        ArrayList arrayList = new ArrayList();
        Cdo cdo = new Cdo(arrayList);
        ky kyVar = new ky(str);
        if (j <= -1) {
            j = -1;
        }
        kyVar.f3965goto = j;
        kyVar.f3957case = xwVar;
        kyVar.m2189case(cdo);
        if (arrayList.size() > 0) {
            return (JSONObject) arrayList.get(0);
        }
        return null;
    }

    /* renamed from: for  reason: not valid java name */
    public static String m1306for() {
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        return sharedPreferences != null ? sharedPreferences.getString("SP_DANMU_SDK_REQUEST_TOKEN_KEY", "") : "";
    }

    /* renamed from: if  reason: not valid java name */
    public static void m1307if(jb0 jb0Var, String str, String str2, String str3, String str4, xb0 xb0Var) {
        if (jb0Var != null) {
            try {
                JSONObject optJSONObject = new JSONObject(str).optJSONObject("data");
                if (optJSONObject != null) {
                    int optInt = optJSONObject.optInt("count", 0);
                    if (xb0Var != null) {
                        xb0Var.m2988do(str3, str4, optInt);
                    }
                    if (optInt >= 0) {
                        jb0Var.f2305do.put(str2, Integer.valueOf(optInt));
                    }
                    wb0<String, String> wb0Var = jb0Var.f2306if;
                    if (wb0Var != null) {
                        wb0Var.remove(str2);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    /* renamed from: new  reason: not valid java name */
    public static String m1308new() {
        JSONObject m1305do = m1305do(fa0.m767new(fa0.m761final()), 0L, xw.NO_CACHE);
        if (m1305do != null) {
            String optString = m1305do.optString("data");
            if (TextUtils.isEmpty(optString)) {
                return optString;
            }
            mb0 mb0Var = (mb0) sb0.m2408do();
            SharedPreferences.Editor editor = mb0Var.f3001if;
            if (editor != null) {
                editor.putString("SP_DANMU_SDK_REQUEST_TOKEN_KEY", optString);
            }
            mb0Var.m1689do();
            return optString;
        }
        return null;
    }
}
