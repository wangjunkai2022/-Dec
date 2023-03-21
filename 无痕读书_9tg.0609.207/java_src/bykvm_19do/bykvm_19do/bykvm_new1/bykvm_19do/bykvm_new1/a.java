package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import android.content.Context;
import android.content.pm.PackageInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.HashMap;
import java.util.Map;
/* compiled from: CommonParams.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public Context f11073a;
    public bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e b;
    public Map<String, Object> c;

    public a(@NonNull Context context, @NonNull bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e eVar) {
        this.f11073a = context;
        this.b = eVar;
    }

    public static boolean a(Map<String, Object> map) {
        return map == null || map.isEmpty() || !((map.containsKey("app_version") || map.containsKey(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME)) && map.containsKey("version_code") && map.containsKey("update_version_code"));
    }

    @Nullable
    public Map<String, Object> b() {
        if (this.c == null) {
            this.c = this.b.e();
        }
        return this.c;
    }

    public String c() {
        return this.b.c();
    }

    @Nullable
    public Map<String, Object> d() {
        Map<String, Object> f = this.b.f();
        if (f == null) {
            f = new HashMap<>(4);
        }
        if (a(f)) {
            try {
                PackageInfo packageInfo = this.f11073a.getPackageManager().getPackageInfo(this.f11073a.getPackageName(), 128);
                f.put(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, packageInfo.versionName);
                f.put("version_code", Integer.valueOf(packageInfo.versionCode));
                if (f.get("update_version_code") == null) {
                    Object obj = packageInfo.applicationInfo.metaData != null ? packageInfo.applicationInfo.metaData.get("UPDATE_VERSION_CODE") : null;
                    if (obj == null) {
                        obj = f.get("version_code");
                    }
                    f.put("update_version_code", obj);
                }
            } catch (Throwable unused) {
                f.put(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.d(this.f11073a));
                f.put("version_code", Integer.valueOf(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.c(this.f11073a)));
                if (f.get("update_version_code") == null) {
                    f.put("update_version_code", f.get("version_code"));
                }
            }
        }
        return f;
    }

    public String e() {
        return bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.b(this.f11073a);
    }

    @NonNull
    public bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.e a() {
        return this.b;
    }
}
