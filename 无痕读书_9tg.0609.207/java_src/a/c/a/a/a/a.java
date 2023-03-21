package a.c.a.a.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes8.dex */
public final class a implements ServiceConnection {
    public static final ThreadPoolExecutor c = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());

    /* renamed from: a  reason: collision with root package name */
    public boolean f10594a = false;
    public final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue<>(1);

    /* renamed from: a.c.a.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class RunnableC0006a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IBinder f10595a;

        public RunnableC0006a(IBinder iBinder) {
            this.f10595a = iBinder;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                System.currentTimeMillis();
                a.this.b.offer(this.f10595a);
            } catch (Throwable th) {
                th.getClass().getSimpleName();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        c.execute(new RunnableC0006a(iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        System.currentTimeMillis();
    }
}
