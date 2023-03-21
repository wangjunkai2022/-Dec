package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes8.dex */
public interface n1 extends IInterface {

    /* loaded from: classes8.dex */
    public static abstract class a extends Binder implements n1 {

        /* renamed from: bykvm_19do.bykvm_19do.bykvm_19do.n1$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0014a implements n1 {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10637a;

            public C0014a(IBinder iBinder) {
                this.f10637a = iBinder;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_19do.n1
            public String a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                    this.f10637a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10637a;
            }
        }

        public static n1 a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.deviceidservice.IDeviceIdService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof n1)) {
                return (n1) queryLocalInterface;
            }
            return new C0014a(iBinder);
        }
    }

    String a();
}
