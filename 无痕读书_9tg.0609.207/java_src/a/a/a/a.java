package a.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes8.dex */
public interface a extends IInterface {

    /* renamed from: a.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static abstract class AbstractBinderC0000a extends Binder implements a {

        /* renamed from: a.a.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0001a implements a {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10586a;

            public C0001a(IBinder iBinder) {
                this.f10586a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10586a;
            }

            @Override // a.a.a.a
            public String getAAID(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    obtain.writeString(str);
                    this.f10586a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // a.a.a.a
            public String getOAID() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    this.f10586a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // a.a.a.a
            public String getVAID() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    this.f10586a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // a.a.a.a
            public boolean isSupported() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    this.f10586a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0001a(iBinder) : (a) queryLocalInterface;
        }
    }

    String getAAID(String str);

    String getOAID();

    String getVAID();

    boolean isSupported();
}
