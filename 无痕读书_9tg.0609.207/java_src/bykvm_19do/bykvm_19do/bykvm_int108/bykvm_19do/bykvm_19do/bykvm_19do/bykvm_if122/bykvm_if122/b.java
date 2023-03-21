package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import android.content.Context;
import android.net.Uri;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.f;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.g;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.h;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.apk.Cgoto;
/* compiled from: OverSeasEventProviderImpl.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static h f11032a;

    public static h a(Context context) {
        try {
            c.a("getResolver");
            if (f11032a == null) {
                f11032a = j.l().b().i();
            }
        } catch (Exception unused) {
        }
        return f11032a;
    }

    public static void b() {
        c.a("EventProviderImpl#start");
        if (j.l().d() == null) {
            return;
        }
        try {
            h a2 = a(j.l().d());
            if (a2 != null) {
                Uri parse = Uri.parse(a() + "adLogStart");
                c.a("EventProviderImpl#gettype");
                a2.a(parse);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        if (aVar == null) {
            return;
        }
        try {
            c.a("dispatch event getResolver before");
            h a2 = a(j.l().d());
            c.a("dispatch event getResolver end");
            if (a2 != null) {
                String a3 = f.a(aVar.f());
                Uri parse = Uri.parse(a() + "adLogDispatch?event=" + a3);
                c.a("dispatch event getType:");
                a2.a(parse);
                c.a("dispatch event getType end ");
            }
        } catch (Throwable th) {
            StringBuilder m1016super = Cgoto.m1016super("dispatch event Throwable:");
            m1016super.append(th.toString());
            c.b(m1016super.toString());
        }
    }

    public static String a() {
        return g.b + "/ad_log_event/";
    }
}
