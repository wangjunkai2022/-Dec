package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.bytedance.pangle.servermanager.AbsServerManager;
import com.umeng.analytics.pro.ak;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class m extends e2 {
    public final Context e;
    public final j2 f;

    public m(Context context, j2 j2Var) {
        super(false, false);
        this.e = context;
        this.f = j2Var;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        int i;
        int i2;
        String packageName = this.e.getPackageName();
        PackageInfo packageInfo = null;
        if (TextUtils.isEmpty(this.f.q())) {
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, packageName);
        } else {
            if (l0.f10634a) {
                l0.a("has zijie pkg", null);
            }
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, this.f.q());
            jSONObject.put("real_package_name", packageName);
        }
        try {
            packageInfo = this.e.getPackageManager().getPackageInfo(packageName, 0);
        } catch (Throwable unused) {
        }
        if (packageInfo != null) {
            try {
                i = packageInfo.versionCode;
            } catch (Throwable th) {
                l0.a(th);
                return false;
            }
        } else {
            i = 0;
        }
        if (!TextUtils.isEmpty(this.f.g())) {
            jSONObject.put("app_version", this.f.g());
        } else {
            jSONObject.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        }
        if (!TextUtils.isEmpty(this.f.l())) {
            jSONObject.put("app_version_minor", this.f.l());
        } else {
            jSONObject.put("app_version_minor", "");
        }
        if (this.f.d() != 0) {
            jSONObject.put("version_code", this.f.d());
        } else {
            jSONObject.put("version_code", i);
        }
        if (this.f.e() != 0) {
            jSONObject.put("update_version_code", this.f.e());
        } else {
            jSONObject.put("update_version_code", i);
        }
        if (this.f.f() != 0) {
            jSONObject.put("manifest_version_code", this.f.f());
        } else {
            jSONObject.put("manifest_version_code", i);
        }
        if (!TextUtils.isEmpty(this.f.c())) {
            jSONObject.put("app_name", this.f.c());
        }
        if (!TextUtils.isEmpty(this.f.h())) {
            jSONObject.put("tweaked_channel", this.f.h());
        }
        if (packageInfo == null || packageInfo.applicationInfo == null || (i2 = packageInfo.applicationInfo.labelRes) <= 0) {
            return true;
        }
        jSONObject.put(ak.s, this.e.getString(i2));
        return true;
    }
}
