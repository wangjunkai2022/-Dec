package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_try19;

import android.os.Handler;

/* compiled from: BaseTask.java */
/* loaded from: classes8.dex */
public abstract class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public Handler f11091a;
    public final long b;
    public final long c;

    public a(Handler handler, long j, long j2) {
        this.f11091a = handler;
        this.b = j;
        this.c = j2;
    }

    public void a() {
        if (b() > 0) {
            this.f11091a.postDelayed(this, b());
        } else {
            this.f11091a.post(this);
        }
    }

    public long b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public void a(long j) {
        if (j > 0) {
            this.f11091a.postDelayed(this, j);
        } else {
            this.f11091a.post(this);
        }
    }
}
