package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do;

import android.content.Context;
import androidx.annotation.NonNull;
/* compiled from: CrashANRHandler.java */
/* loaded from: classes8.dex */
public class f {
    public static volatile f b;

    /* renamed from: a  reason: collision with root package name */
    public final c f11048a;

    public f(@NonNull Context context) {
        this.f11048a = new c(context);
    }

    public static f a(Context context) {
        if (b == null) {
            synchronized (f.class) {
                if (b == null) {
                    b = new f(context);
                }
            }
        }
        return b;
    }

    public void a() {
        this.f11048a.a();
    }
}
