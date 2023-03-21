package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import android.content.ContentResolver;
import android.net.Uri;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.f;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.g;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.apk.Cgoto;

/* compiled from: EventProviderImpl.java */
/* loaded from: classes8.dex */
public class a {
    public static ContentResolver a() {
        try {
            if (j.l().d() != null) {
                return j.l().d().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b() {
        return g.b + "/ad_log_event/";
    }

    public static void c() {
        c.a("start()");
        if (j.l().d() == null) {
            return;
        }
        try {
            ContentResolver a2 = a();
            if (a2 != null) {
                a2.getType(Uri.parse(b() + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        if (aVar == null) {
            return;
        }
        try {
            ContentResolver a2 = a();
            if (a2 != null) {
                String a3 = f.a(aVar.f());
                a2.getType(Uri.parse(b() + "adLogDispatch?event=" + a3));
                c.a("dispatch event getType end ");
            }
        } catch (Throwable th) {
            StringBuilder m1016super = Cgoto.m1016super("dispatch event Throwable:");
            m1016super.append(th.toString());
            c.b(m1016super.toString());
        }
    }
}
