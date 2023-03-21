package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes8.dex */
public class g0 {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f10624a;

    public static String a(Context context, j2 j2Var) {
        if (TextUtils.isEmpty(f10624a)) {
            synchronized (g0.class) {
                if (!TextUtils.isEmpty(f10624a)) {
                    return f10624a;
                }
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                String id = advertisingIdInfo != null ? advertisingIdInfo.getId() : null;
                if (TextUtils.isEmpty(id)) {
                    id = j2Var.w().getString("google_aid", null);
                } else if (!TextUtils.equals(j2Var.w().getString("google_aid", null), id)) {
                    a(context, id, j2Var);
                }
                f10624a = id;
            }
        }
        return f10624a;
    }

    public static void a(Context context, String str, j2 j2Var) {
        if (TextUtils.isEmpty(str) || context == null) {
            return;
        }
        j2Var.w().edit().putString("google_aid", str).apply();
    }
}
