package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.h;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
/* compiled from: LaunchScanner.java */
/* loaded from: classes8.dex */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public Context f11055a;

    public d(Context context) {
        this.f11055a = context;
    }

    public static void a(Context context, int i) {
        try {
            if (!i.e().e().equals(context.getPackageName())) {
                return;
            }
        } catch (Exception unused) {
        }
        h.a().postDelayed(new d(context), i);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.d(this.f11055a).a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.i.c(this.f11055a));
        } finally {
            try {
            } finally {
            }
        }
    }

    public static void a(Context context) {
        a(context, 0);
    }
}
