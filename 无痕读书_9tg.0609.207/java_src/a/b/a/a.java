package a.b.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.exifinterface.media.ExifInterface;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes8.dex */
public interface a extends IInterface {

    /* renamed from: a.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static abstract class AbstractBinderC0002a extends Binder implements a {

        /* renamed from: a.b.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0003a implements a {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10590a;

            public C0003a(IBinder iBinder) {
                this.f10590a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10590a;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0003a(iBinder) : (a) queryLocalInterface;
        }
    }

    /* loaded from: classes8.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public a f10591a = null;
        public String b = null;
        public String c = null;
        public final Object d = new Object();
        public ServiceConnection e = new ServiceConnectionC0004a();

        /* renamed from: a.b.a.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class ServiceConnectionC0004a implements ServiceConnection {
            public ServiceConnectionC0004a() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                b.this.f10591a = AbstractBinderC0002a.a(iBinder);
                synchronized (b.this.d) {
                    b.this.d.notify();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                b.this.f10591a = null;
            }
        }

        /* renamed from: a.b.a.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0005b {

            /* renamed from: a  reason: collision with root package name */
            public static final b f10593a = new b();
        }

        public synchronized String a(Context context, String str) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                return "";
            }
            if (this.f10591a != null) {
                try {
                    return b(context, str);
                } catch (RemoteException unused) {
                    return "";
                }
            }
            a(context);
            if (this.f10591a == null) {
                return "";
            }
            try {
                return b(context, str);
            } catch (RemoteException unused2) {
                return "";
            }
        }

        public final void a(Context context) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
            intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
            if (context.bindService(intent, this.e, 1)) {
                synchronized (this.d) {
                    try {
                        this.d.wait(TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public final String b(Context context, String str) {
            Signature[] signatureArr;
            if (TextUtils.isEmpty(this.b)) {
                this.b = context.getPackageName();
            }
            if (TextUtils.isEmpty(this.c)) {
                String str2 = null;
                try {
                    signatureArr = context.getPackageManager().getPackageInfo(this.b, 64).signatures;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    signatureArr = null;
                }
                if (signatureArr != null && signatureArr.length > 0) {
                    byte[] byteArray = signatureArr[0].toByteArray();
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                        if (messageDigest != null) {
                            byte[] digest = messageDigest.digest(byteArray);
                            StringBuilder sb = new StringBuilder();
                            for (byte b : digest) {
                                sb.append(Integer.toHexString((b & ExifInterface.MARKER) | 256).substring(1, 3));
                            }
                            str2 = sb.toString();
                        }
                    } catch (NoSuchAlgorithmException e2) {
                        e2.printStackTrace();
                    }
                }
                this.c = str2;
            }
            a aVar = this.f10591a;
            if (aVar == null) {
                context.getPackageName();
                return "";
            }
            String str3 = this.b;
            String str4 = this.c;
            AbstractBinderC0002a.C0003a c0003a = (AbstractBinderC0002a.C0003a) aVar;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                obtain.writeString(str3);
                obtain.writeString(str4);
                obtain.writeString(str);
                c0003a.f10590a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return TextUtils.isEmpty(readString) ? "" : readString;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
    }
}
