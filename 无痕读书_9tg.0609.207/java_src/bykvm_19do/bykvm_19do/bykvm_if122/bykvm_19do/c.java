package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.k0;
import com.apk.Cgoto;
/* compiled from: URLConst.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static String f10945a;
    public static String b;

    public static String a() {
        StringBuilder m1016super = Cgoto.m1016super("https://");
        m1016super.append(a.f().f());
        return k0.a(m1016super.toString());
    }

    public static String b() {
        return k0.a(c() + "/api/ad/union/mediation/exchange/");
    }

    public static String c() {
        String e = e();
        return !TextUtils.isEmpty(e) ? e : "https://pangolin.snssdk.com";
    }

    public static String d() {
        return k0.a(c() + "/api/ad/union/mediation/stats/");
    }

    public static String e() {
        String d = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c.J().d("server_dist_host");
        if (TextUtils.isEmpty(d)) {
            return null;
        }
        if (TextUtils.equals(d, f10945a) && !TextUtils.isEmpty(b)) {
            return b;
        }
        f10945a = d;
        b = null;
        if (!TextUtils.isEmpty(d)) {
            b = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(f10945a, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a());
        }
        if (TextUtils.isEmpty(b)) {
            return null;
        }
        StringBuilder m1016super = Cgoto.m1016super("https://");
        m1016super.append(b);
        String sb = m1016super.toString();
        b = sb;
        return sb;
    }

    public static String f() {
        return k0.a(c() + "/api/ad/union/mediation/reward_video/reward/");
    }

    public static String g() {
        return k0.a(c() + "/api/ad/union/mediation/config/");
    }
}
