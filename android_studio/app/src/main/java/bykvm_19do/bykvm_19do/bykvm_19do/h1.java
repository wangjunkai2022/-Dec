package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.umeng.analytics.pro.ad;

/* loaded from: classes8.dex */
public interface h1 extends IInterface {

    /* loaded from: classes8.dex */
    public static abstract class a extends Binder implements h1 {

        /* renamed from: bykvm_19do.bykvm_19do.bykvm_19do.h1$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0013a implements h1 {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f10628a;

            public C0013a(IBinder iBinder) {
                this.f10628a = iBinder;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_19do.h1
            public String a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ad.f12134a);
                    this.f10628a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10628a;
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_19do.h1
            public boolean c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ad.f12134a);
                    this.f10628a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static h1 a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ad.f12134a);
            if (queryLocalInterface != null && (queryLocalInterface instanceof h1)) {
                return (h1) queryLocalInterface;
            }
            return new C0013a(iBinder);
        }
    }

    String a();

    boolean c();
}
