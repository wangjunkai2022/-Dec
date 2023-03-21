package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes8.dex */
public interface o1 extends IInterface {

    /* loaded from: classes8.dex */
    public static abstract class a extends Binder implements o1 {

        /* renamed from: bykvm_19do.bykvm_19do.bykvm_19do.o1$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0015a implements o1 {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10639a;

            public C0015a(IBinder iBinder) {
                this.f10639a = iBinder;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_19do.o1
            public String a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    this.f10639a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10639a;
            }
        }

        public static o1 a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
            if (queryLocalInterface != null && (queryLocalInterface instanceof o1)) {
                return (o1) queryLocalInterface;
            }
            return new C0015a(iBinder);
        }
    }

    String a();
}
