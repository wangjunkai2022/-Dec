package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12;

import android.content.Context;
import java.util.HashMap;

/* compiled from: TncInstanceManager.java */
/* loaded from: classes8.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static volatile h f10673a;
    public static HashMap<Integer, f> b;
    public static HashMap<Integer, a> c;

    public h() {
        b = new HashMap<>();
        c = new HashMap<>();
    }

    public static synchronized h a() {
        h hVar;
        synchronized (h.class) {
            if (f10673a == null) {
                synchronized (h.class) {
                    if (f10673a == null) {
                        f10673a = new h();
                    }
                }
            }
            hVar = f10673a;
        }
        return hVar;
    }

    public f a(int i) {
        if (b.get(Integer.valueOf(i)) == null) {
            b.put(Integer.valueOf(i), new f(i));
        }
        return b.get(Integer.valueOf(i));
    }

    public a a(int i, Context context) {
        if (c.get(Integer.valueOf(i)) == null) {
            c.put(Integer.valueOf(i), new a(context, i));
        }
        return c.get(Integer.valueOf(i));
    }
}
