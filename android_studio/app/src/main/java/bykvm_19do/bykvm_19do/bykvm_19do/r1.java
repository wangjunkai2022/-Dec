package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.bun.lib.MsaIdInterface;

/* loaded from: classes8.dex */
public interface r1 extends IInterface {

    /* loaded from: classes8.dex */
    public static abstract class a extends Binder implements r1 {

        /* renamed from: bykvm_19do.bykvm_19do.bykvm_19do.r1$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0018a implements r1 {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10644a;

            public C0018a(IBinder iBinder) {
                this.f10644a = iBinder;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_19do.r1
            public String a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(MsaIdInterface.Stub.DESCRIPTOR);
                    this.f10644a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10644a;
            }
        }

        public static r1 a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(MsaIdInterface.Stub.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof r1)) {
                return (r1) queryLocalInterface;
            }
            return new C0018a(iBinder);
        }
    }

    String a();
}
