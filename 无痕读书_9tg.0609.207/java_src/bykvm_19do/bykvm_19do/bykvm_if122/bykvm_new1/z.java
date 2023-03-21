package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.text.TextUtils;
/* compiled from: OAIDHelper.java */
/* loaded from: classes8.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f11012a = "";

    static {
        try {
            if (TextUtils.isEmpty(f11012a)) {
                f11012a = c0.a("tt_device_info", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).a(com.umeng.commonsdk.statistics.idtracking.h.d, "");
            }
        } catch (Throwable unused) {
        }
    }

    public static String a() {
        try {
            if (TextUtils.isEmpty(f11012a)) {
                f11012a = p.d();
                a(f11012a);
            }
        } catch (Throwable unused) {
        }
        return f11012a == null ? "" : f11012a;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c0.a("tt_device_info", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).b(com.umeng.commonsdk.statistics.idtracking.h.d, str);
    }
}
