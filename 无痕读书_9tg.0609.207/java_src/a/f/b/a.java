package a.f.b;

import a.f.a.a;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
/* loaded from: classes8.dex */
public class a {
    public a.f.a.a b;
    public ServiceConnection c;

    /* renamed from: a  reason: collision with root package name */
    public Context f10605a = null;
    public b d = null;

    /* renamed from: a.f.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class ServiceConnectionC0009a implements ServiceConnection {
        public ServiceConnectionC0009a() {
        }

        @Override // android.content.ServiceConnection
        public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            a.this.b = a.AbstractBinderC0007a.a(iBinder);
            a aVar = a.this;
            b bVar = aVar.d;
            if (bVar != null) {
                bVar.serviceConnected("Deviceid Service Connected", aVar);
            }
            if (a.this == null) {
                throw null;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            a.this.b = null;
        }
    }

    /* loaded from: classes8.dex */
    public interface b<T> {
        void serviceConnected(T t, a aVar);
    }

    public int a(Context context, b<String> bVar) {
        if (context != null) {
            this.f10605a = context;
            this.d = bVar;
            this.c = new ServiceConnectionC0009a();
            Intent intent = new Intent();
            intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
            return this.f10605a.bindService(intent, this.c, 1) ? 1 : -1;
        }
        throw new NullPointerException("Context can not be null.");
    }
}
