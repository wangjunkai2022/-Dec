package com.apk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import org.json.JSONObject;
/* compiled from: TrCommentManager.java */
/* loaded from: classes7.dex */
public final class ea0 extends ab0<Object> {
    @Override // com.apk.ab0
    /* renamed from: do */
    public Object mo39do() {
        JSONObject optJSONObject;
        if (TextUtils.isEmpty(fa0.m770static())) {
            ja0.m1301goto();
        }
        try {
            JSONObject m1300for = ja0.m1300for(fa0.m752break(), 0L, xw.NO_CACHE);
            fa0.m752break();
            if (m1300for != null) {
                m1300for.toString();
            }
            if (m1300for == null || (optJSONObject = m1300for.optJSONObject("data")) == null) {
                return null;
            }
            String optString = optJSONObject.optString("thiscloud");
            if (!TextUtils.isEmpty(optString)) {
                mb0 mb0Var = (mb0) sb0.m2408do();
                SharedPreferences.Editor editor = mb0Var.f3001if;
                if (editor != null) {
                    editor.putString("SP_CLOUD_CONFIG_HOST_KEY", optString);
                }
                mb0Var.m1689do();
            }
            String optString2 = optJSONObject.optString("tokenhost");
            if (!TextUtils.isEmpty(optString2)) {
                mb0 mb0Var2 = (mb0) sb0.m2408do();
                SharedPreferences.Editor editor2 = mb0Var2.f3001if;
                if (editor2 != null) {
                    editor2.putString("SP_GET_TOKEN_HOST_KEY", optString2);
                }
                mb0Var2.m1689do();
            }
            String optString3 = optJSONObject.optString("dynamichost");
            if (!TextUtils.isEmpty(optString3)) {
                mb0 mb0Var3 = (mb0) sb0.m2408do();
                SharedPreferences.Editor editor3 = mb0Var3.f3001if;
                if (editor3 != null) {
                    editor3.putString("SP_DYNAMIC_HOST_KEY", optString3);
                }
                mb0Var3.m1689do();
            }
            String optString4 = optJSONObject.optString("statichost");
            if (TextUtils.isEmpty(optString4)) {
                return null;
            }
            mb0 mb0Var4 = (mb0) sb0.m2408do();
            SharedPreferences.Editor editor4 = mb0Var4.f3001if;
            if (editor4 != null) {
                editor4.putString("SP_STATIC_HOST_KEY", optString4);
            }
            mb0Var4.m1689do();
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
