package a.a.b;

import a.a.a.a;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.apk.Cgoto;
/* loaded from: classes8.dex */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public Context f10588a;
    public a.a.a.a b;
    public d c;
    public ServiceConnection d = new a();

    /* loaded from: classes8.dex */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            b.this.b = a.AbstractBinderC0000a.a(iBinder);
            b.this.c.connectSuccess(true);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.this.b = null;
        }
    }

    public b(Context context) {
        this.f10588a = context;
    }

    public boolean a() {
        boolean isSupported;
        a.a.a.a aVar = this.b;
        if (aVar != null) {
            try {
                isSupported = aVar.isSupported();
            } catch (RemoteException e) {
                e.getMessage();
                e.printStackTrace();
            }
            StringBuilder m1016super = Cgoto.m1016super("isSupported:");
            m1016super.append(this.b);
            m1016super.toString();
            return isSupported;
        }
        isSupported = false;
        StringBuilder m1016super2 = Cgoto.m1016super("isSupported:");
        m1016super2.append(this.b);
        m1016super2.toString();
        return isSupported;
    }
}
