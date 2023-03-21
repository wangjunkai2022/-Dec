package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.pangle.servermanager.AbsServerManager;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.umeng.analytics.pro.ak;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f10647a = {"ab_version", ak.F, ak.N, "os_api", ak.z, "google_aid", "build_serial", ak.P, "install_id", AbsServerManager.PACKAGE_QUERY_BINDER, "app_version", "device_model", "udid", "density_dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", "aid"};
    public static final String[] b = {"ab_version", ak.F, ak.N, "os_api", ak.z, "google_aid", "build_serial", ak.P, "iid", "app_name", NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, ak.ai, "uuid", "dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", "aid"};

    public static String a(Context context, JSONObject jSONObject, String str, boolean z, b bVar) {
        HashMap<String, String> a2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        HashMap hashMap = new HashMap(f10647a.length + 10);
        int i = 0;
        while (true) {
            String[] strArr = f10647a;
            if (i >= strArr.length) {
                break;
            }
            String optString = jSONObject.optString(strArr[i], null);
            if (!TextUtils.isEmpty(optString)) {
                hashMap.put(b[i], optString);
            }
            i++;
        }
        if (bVar != null) {
            try {
                a2 = bVar.a(context);
            } catch (Exception e) {
                l0.a(e);
            }
        } else {
            a2 = null;
        }
        if (m0.b(context) && a2 != null) {
            hashMap.putAll(a2);
        }
        try {
            HashMap<String, String> a3 = a.i() == null ? null : a.i().a();
            if (a3 != null) {
                hashMap.putAll(a3);
            }
        } catch (Exception e2) {
            l0.a(e2);
        }
        if (a.f.size() > 0) {
            hashMap.putAll(a.f);
        }
        if (z) {
            hashMap.put("ssmix", "a");
        }
        String b2 = h0.b(context);
        if (!TextUtils.isEmpty(b2)) {
            hashMap.put("ac", b2);
        }
        String str2 = (String) a.a("tweaked_channel", "");
        if (TextUtils.isEmpty(str2)) {
            str2 = (String) a.a("channel", "");
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("channel", str2);
        }
        String optString2 = jSONObject.optString(ak.y, null);
        if (optString2 != null && optString2.length() > 10) {
            optString2 = optString2.substring(0, 10);
        }
        hashMap.put(ak.y, optString2);
        hashMap.put("_rticket", String.valueOf(System.currentTimeMillis()));
        hashMap.put("device_platform", "android");
        int intValue = ((Integer) a.a("version_code", -1)).intValue();
        if (intValue != -1) {
            hashMap.put("version_code", String.valueOf(intValue));
        }
        int intValue2 = ((Integer) a.a("manifest_version_code", -1)).intValue();
        if (intValue2 != -1) {
            hashMap.put("manifest_version_code", String.valueOf(intValue2));
        }
        int intValue3 = ((Integer) a.a("update_version_code", -1)).intValue();
        if (intValue3 != -1) {
            hashMap.put("update_version_code", String.valueOf(intValue3));
        }
        String a4 = s0.a(jSONObject.optJSONObject(com.umeng.commonsdk.statistics.idtracking.h.d));
        if (!TextUtils.isEmpty(a4)) {
            hashMap.put(com.umeng.commonsdk.statistics.idtracking.h.d, a4);
        }
        String optString3 = jSONObject.optString("cdid");
        if (!TextUtils.isEmpty(optString3)) {
            hashMap.put("cdid", optString3);
        }
        if (!str.endsWith("/")) {
            str = Cgoto.m989case(str, "/");
        }
        StringBuilder m1016super = Cgoto.m1016super(str);
        m1016super.append(str.indexOf(63) >= 0 ? '&' : '?');
        return m0.a(m1016super.toString(), hashMap, "UTF-8");
    }

    public static String[] a(v1 v1Var, Context context, JSONObject jSONObject) {
        String[] strArr = v1Var.f().f2891for;
        String[] strArr2 = new String[strArr.length];
        String str = a.h() ? "?tt_data=a" : "?";
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = a(context, jSONObject, Cgoto.m991class(new StringBuilder(), strArr[i], str), true, a.j());
            strArr2[i] = s.a(strArr2[i], s.d);
        }
        return strArr2;
    }
}
