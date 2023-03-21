package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.l;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
import com.apk.Cgoto;
import com.ss.android.download.api.constant.BaseConstants;
import com.umeng.analytics.pro.ak;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Header.java */
/* loaded from: classes8.dex */
public final class b {
    public static final String[] c = {"version_code", "manifest_version_code", "aid", "update_version_code"};

    /* renamed from: a  reason: collision with root package name */
    public Context f11066a;
    public JSONObject b = new JSONObject();

    public b(Context context) {
        this.f11066a = context;
    }

    public static b a(Context context) {
        b bVar = new b(context);
        JSONObject a2 = bVar.a();
        bVar.a(a2);
        bVar.d(a2);
        bVar.e(a2);
        bVar.g(a2);
        bVar.f(a2);
        bVar.b(a2);
        bVar.c(a2);
        return bVar;
    }

    private String b() {
        try {
            StringBuilder sb = new StringBuilder();
            if (Build.SUPPORTED_ABIS.length > 0) {
                for (int i = 0; i < Build.SUPPORTED_ABIS.length; i++) {
                    sb.append(Build.SUPPORTED_ABIS[i]);
                    if (i != Build.SUPPORTED_ABIS.length - 1) {
                        sb.append(", ");
                    }
                }
            } else {
                sb = new StringBuilder(Build.CPU_ABI);
            }
            return TextUtils.isEmpty(sb.toString()) ? "unknown" : sb.toString();
        } catch (Exception e) {
            j.b(e);
            return "unknown";
        }
    }

    private void c(JSONObject jSONObject) {
        Map<String, Object> b;
        Object obj;
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.a e = i.e();
        if (e == null || jSONObject == null || (b = e.b()) == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (String str : b.keySet()) {
                if (!TextUtils.isEmpty(str) && (obj = b.get(str)) != null) {
                    jSONObject2.put(str, obj);
                }
            }
            jSONObject.put("custom", jSONObject2);
        } catch (Exception e2) {
            j.b(e2);
        }
    }

    private void d(JSONObject jSONObject) {
        try {
            DisplayMetrics displayMetrics = this.f11066a.getResources().getDisplayMetrics();
            int i = displayMetrics.densityDpi;
            String str = i != 120 ? i != 240 ? i != 320 ? "mdpi" : "xhdpi" : "hdpi" : "ldpi";
            jSONObject.put("density_dpi", i);
            jSONObject.put("display_density", str);
            jSONObject.put(ak.z, displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
        } catch (Exception unused) {
        }
    }

    private void e(JSONObject jSONObject) {
        try {
            String language = this.f11066a.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(ak.N, language);
            }
            String country = Locale.getDefault().getCountry();
            if (!TextUtils.isEmpty(country)) {
                jSONObject.put("region", country);
            }
            int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
            if (rawOffset < -12) {
                rawOffset = -12;
            }
            if (rawOffset > 12) {
                rawOffset = 12;
            }
            jSONObject.put(ak.M, rawOffset);
        } catch (Exception unused) {
        }
    }

    private void f(JSONObject jSONObject) {
        try {
            jSONObject.put(ak.Q, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.i.a(this.f11066a));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void g(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        try {
            if (bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.c.d()) {
                sb.append("MIUI-");
            } else if (bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.c.b()) {
                sb.append("FLYME-");
            } else {
                String a2 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.c.a();
                if (bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.c.b(a2)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(a2)) {
                    sb.append(a2);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
            if (sb.length() > 0) {
                jSONObject.put("rom", sb.toString());
            }
            jSONObject.put("rom_version", l.i());
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"MissingPermission"})
    private void a(JSONObject jSONObject) {
        int i;
        try {
            PackageInfo packageInfo = this.f11066a.getPackageManager().getPackageInfo(this.f11066a.getPackageName(), 0);
            if (packageInfo.applicationInfo != null && (i = packageInfo.applicationInfo.labelRes) > 0) {
                jSONObject.put(ak.s, this.f11066a.getString(i));
            }
            jSONObject.put("sdk_version", 2010056);
            jSONObject.put("sdk_version_name", "2.1.0-alpha.36");
            jSONObject.put(ak.x, "Android");
            jSONObject.put(ak.y, c());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(ak.F, Build.BRAND);
            jSONObject.put(ak.H, Build.MANUFACTURER);
            jSONObject.put("cpu_abi", b());
        } catch (Exception unused) {
        }
    }

    private String c() {
        String str = Build.VERSION.RELEASE;
        return str.contains(".") ? str : Cgoto.m989case(str, ".0");
    }

    private void b(JSONObject jSONObject) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.f11066a.getSystemService("phone");
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!TextUtils.isEmpty(networkOperatorName)) {
                    jSONObject.put(ak.P, networkOperatorName);
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (TextUtils.isEmpty(networkOperator)) {
                    return;
                }
                jSONObject.put("mcc_mnc", networkOperator);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public JSONObject b(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.b.put("user_id", str);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this.b;
    }

    public JSONObject a(@Nullable Map<String, Object> map) {
        String[] strArr;
        if (map == null) {
            return this.b;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!this.b.has(entry.getKey())) {
                this.b.put(entry.getKey(), entry.getValue());
            }
        }
        for (String str : c) {
            if (map.containsKey(str)) {
                try {
                    this.b.put(str, Integer.parseInt((String) map.get(str)));
                } catch (Exception unused) {
                    this.b.put(str, map.get(str));
                }
            }
        }
        if (map.containsKey("version_code") && !map.containsKey("manifest_version_code")) {
            this.b.put("manifest_version_code", Integer.parseInt((String) map.get("version_code")));
        }
        if (map.containsKey("iid")) {
            this.b.put("udid", map.get("iid"));
            this.b.remove("iid");
        }
        return this.b;
    }

    public JSONObject a(String str) {
        try {
            this.b.put("device_id", str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this.b;
    }

    public JSONObject a() {
        return this.b;
    }
}
