package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do;

import android.os.FileObserver;
import android.os.SystemClock;
import android.text.TextUtils;

/* compiled from: ANRFileObserver.java */
/* loaded from: classes8.dex */
public class a extends FileObserver {

    /* renamed from: a  reason: collision with root package name */
    public final c f11043a;
    public volatile boolean b;

    /* compiled from: ANRFileObserver.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public final class C0053a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public int f11044a;

        public C0053a(int i) {
            this.f11044a = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SystemClock.sleep(this.f11044a);
            a.this.b = true;
        }
    }

    public a(c cVar, String str, int i) {
        super(str, i);
        this.b = true;
        if (cVar != null && !TextUtils.isEmpty(str)) {
            this.f11043a = cVar;
            return;
        }
        throw new IllegalArgumentException("params is not right path is null or ANRManager is null");
    }

    @Override // android.os.FileObserver
    public void onEvent(int i, String str) {
        c cVar;
        if (this.b && i == 8 && !TextUtils.isEmpty(str) && str.contains("trace") && (cVar = this.f11043a) != null) {
            this.b = false;
            cVar.a(200, "/data/anr/" + str, 80);
            new C0053a(5000).start();
        }
    }
}
