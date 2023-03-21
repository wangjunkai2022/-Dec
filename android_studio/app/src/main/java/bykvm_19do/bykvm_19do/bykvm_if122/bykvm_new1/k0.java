package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.msdk.adapter.util.Logger;

/* compiled from: TestHelperUtils.java */
/* loaded from: classes8.dex */
public class k0 {

    /* renamed from: a  reason: collision with root package name */
    public static String f10997a;

    public static String a(String str) {
        try {
            if (b()) {
                String a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a();
                return TextUtils.isEmpty(a2) ? str : Uri.parse(str).buildUpon().appendQueryParameter(a(), a2).appendQueryParameter("aid", "5001121").toString();
            }
            return str;
        } catch (Throwable unused) {
            return str;
        }
    }

    public static boolean b() {
        return Logger.isDebug() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().t() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().u();
    }

    public static String a() {
        if (TextUtils.isEmpty(f10997a)) {
            f10997a = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return f10997a;
    }
}
