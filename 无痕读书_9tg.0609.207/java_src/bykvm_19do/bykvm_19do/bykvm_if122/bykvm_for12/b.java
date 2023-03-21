package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.f;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.j;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: AdEventDispatcher.java */
/* loaded from: classes8.dex */
public class b<T extends j> {

    /* renamed from: a  reason: collision with root package name */
    public f<T> f10947a;
    public Handler b;
    public AtomicBoolean c = new AtomicBoolean(false);

    public b(String str, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a<T> aVar, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<T> aVar2, f.b bVar, f.a aVar3) {
        this.f10947a = new f<>(str, aVar, aVar2, bVar, aVar3);
    }

    public void a() {
        if (this.c.get()) {
            Message obtainMessage = this.b.obtainMessage();
            obtainMessage.what = 2;
            this.b.sendMessage(obtainMessage);
        }
    }

    public synchronized void b() {
        AtomicBoolean atomicBoolean = this.c;
        if ((atomicBoolean == null || !atomicBoolean.get()) && this.f10947a.getLooper() == null) {
            AtomicBoolean atomicBoolean2 = this.c;
            if (atomicBoolean2 != null && !atomicBoolean2.get()) {
                this.f10947a.start();
                Handler handler = new Handler(this.f10947a.getLooper(), this.f10947a);
                this.b = handler;
                Message obtainMessage = handler.obtainMessage();
                obtainMessage.what = 5;
                this.b.sendMessage(obtainMessage);
                this.c.set(true);
            }
        }
    }

    public void a(@NonNull T t) {
        if (this.c.get()) {
            Message obtainMessage = this.b.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = t;
            this.b.sendMessage(obtainMessage);
        }
    }
}
