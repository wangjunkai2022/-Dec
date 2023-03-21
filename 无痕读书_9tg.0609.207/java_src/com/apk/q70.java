package com.apk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.swl.gg.sdk.TrAdSdk;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* compiled from: TrAdHelper.java */
/* loaded from: classes7.dex */
public class q70 {

    /* renamed from: if  reason: not valid java name */
    public static q70 f3819if;

    /* renamed from: do  reason: not valid java name */
    public Map<String, List<c50>> f3820do;

    /* renamed from: do  reason: not valid java name */
    public static q70 m2109do() {
        if (f3819if == null) {
            synchronized (q70.class) {
                if (f3819if == null) {
                    f3819if = new q70();
                }
            }
        }
        return f3819if;
    }

    /* renamed from: if  reason: not valid java name */
    public c50 m2110if(String str) {
        List<c50> list;
        ArrayList arrayList;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        TrAdSdk.isOpenLog();
        int i = 0;
        if (!TextUtils.isEmpty(str)) {
            if (this.f3820do == null) {
                this.f3820do = new HashMap();
            }
            if (this.f3820do.containsKey(str)) {
                TrAdSdk.isOpenLog();
                list = this.f3820do.get(str);
            } else {
                TrAdSdk.isOpenLog();
                JSONObject adJson = TrAdSdk.getAdJson(str);
                if (adJson != null) {
                    adJson.toString();
                    TrAdSdk.isOpenLog();
                    int optInt = adJson.optInt("per_req");
                    int optInt2 = adJson.optInt("day_max");
                    JSONArray optJSONArray = adJson.optJSONArray(LitePalParser.NODE_LIST);
                    if (optJSONArray != null) {
                        arrayList = new ArrayList();
                        int length = optJSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                            c50 c50Var = new c50(optJSONObject.optString("adpt"), optJSONObject.optString("adid"));
                            c50Var.f511for = optInt;
                            c50Var.f513new = optInt2;
                            arrayList.add(c50Var);
                        }
                    } else {
                        arrayList = null;
                    }
                    if (arrayList != null) {
                        if (adJson.optBoolean("adrandom")) {
                            Collections.shuffle(arrayList);
                        }
                        this.f3820do.put(str, arrayList);
                        list = arrayList;
                    }
                }
            }
            if (list != null || list.size() <= 0) {
                return null;
            }
            int m943do = g50.m943do("SP_TR_AD_LIST_INDEX_KEY" + str, 0);
            String m989case = Cgoto.m989case("SP_TR_AD_LIST_INDEX_DAY_KEY", str);
            String str2 = "";
            try {
                MMKV mmkv = g50.f1517do;
                if (mmkv != null) {
                    str2 = mmkv.decodeString(m989case, "");
                } else {
                    SharedPreferences sharedPreferences = v70.m2781if().f5027do;
                    if (sharedPreferences != null) {
                        str2 = sharedPreferences.getString(m989case, "");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            String m1462switch = k40.m1462switch();
            if (m1462switch.equals(str2)) {
                i = m943do;
            } else {
                try {
                    MMKV mmkv2 = g50.f1517do;
                    if (mmkv2 != null) {
                        mmkv2.putString(m989case, m1462switch);
                    } else {
                        v70 m2781if = v70.m2781if();
                        SharedPreferences.Editor editor = m2781if.f5028if;
                        if (editor != null) {
                            editor.putString(m989case, m1462switch);
                        }
                        m2781if.m2782do();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            g50.m946new("SP_TR_AD_LIST_INDEX_KEY" + str, i + 1);
            TrAdSdk.isOpenLog();
            return list.get(i % list.size());
        }
        list = null;
        if (list != null) {
        }
        return null;
    }
}
