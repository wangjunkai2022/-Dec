package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes8.dex */
public interface p1 extends IInterface {

    /* loaded from: classes8.dex */
    public static abstract class a extends Binder implements p1 {

        /* renamed from: bykvm_19do.bykvm_19do.bykvm_19do.p1$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0016a implements p1 {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10641a;

            public C0016a(IBinder iBinder) {
                this.f10641a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10641a;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_19do.p1
            public String b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    this.f10641a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static p1 a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof p1)) {
                return (p1) queryLocalInterface;
            }
            return new C0016a(iBinder);
        }
    }

    String b();
}
