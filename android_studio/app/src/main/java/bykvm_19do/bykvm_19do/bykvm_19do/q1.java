package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes8.dex */
public interface q1 extends IInterface {

    /* loaded from: classes8.dex */
    public static abstract class a extends Binder implements q1 {

        /* renamed from: bykvm_19do.bykvm_19do.bykvm_19do.q1$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0017a implements q1 {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10643a;

            public C0017a(IBinder iBinder) {
                this.f10643a = iBinder;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_19do.q1
            public String a(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.f10643a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10643a;
            }
        }

        public static q1 a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            if (queryLocalInterface != null && (queryLocalInterface instanceof q1)) {
                return (q1) queryLocalInterface;
            }
            return new C0017a(iBinder);
        }
    }

    String a(String str, String str2, String str3);
}
