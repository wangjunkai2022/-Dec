package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes8.dex */
public final class j1<SERVICE, RESULT> {

    /* renamed from: a  reason: collision with root package name */
    public final CountDownLatch f10630a = new CountDownLatch(1);
    public final Intent b;
    public final b<SERVICE, RESULT> c;
    public final Context d;

    /* loaded from: classes8.dex */
    public class a implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        public final CountDownLatch f10631a;
        public final b<SERVICE, RESULT> b;
        @Nullable
        public SERVICE c;

        public a(j1 j1Var, CountDownLatch countDownLatch, b<SERVICE, RESULT> bVar) {
            this.f10631a = countDownLatch;
            this.b = bVar;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            t0.b("Oaid#", "ServiceBlockBinder#onServiceConnected " + componentName);
            try {
                this.c = this.b.a(iBinder);
                try {
                    this.f10631a.countDown();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    t0.b("Oaid#", "ServiceBlockBinder#onServiceConnected", th);
                    try {
                        this.f10631a.countDown();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (Throwable th2) {
                    try {
                        this.f10631a.countDown();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    throw th2;
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            t0.b("Oaid#", "ServiceBlockBinder#onServiceDisconnected" + componentName);
            try {
                this.f10631a.countDown();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* loaded from: classes8.dex */
    public interface b<T, RESULT> {
        T a(IBinder iBinder);

        RESULT a(T t);
    }

    public j1(Context context, Intent intent, b<SERVICE, RESULT> bVar) {
        this.d = context;
        this.b = intent;
        this.c = bVar;
    }

    public RESULT a() {
        Throwable th;
        j1<SERVICE, RESULT>.a aVar;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return null;
        }
        try {
            aVar = new a(this, this.f10630a, this.c);
            this.d.bindService(this.b, aVar, 1);
            this.f10630a.await();
        } catch (Throwable th2) {
            th = th2;
            aVar = null;
        }
        try {
            return this.c.a((b<SERVICE, RESULT>) aVar.c);
        } catch (Throwable th3) {
            th = th3;
            try {
                th.printStackTrace();
                return null;
            } finally {
                a(aVar);
            }
        }
    }

    private void a(j1<SERVICE, RESULT>.a aVar) {
        if (aVar != null) {
            try {
                this.d.unbindService(aVar);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
