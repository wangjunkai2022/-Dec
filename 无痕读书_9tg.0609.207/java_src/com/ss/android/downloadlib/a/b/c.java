package com.ss.android.downloadlib.a.b;

import android.annotation.SuppressLint;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.ss.android.downloadlib.a.b.d;
import com.ss.android.downloadlib.addownload.j;
import com.umeng.analytics.pro.ak;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public interface c extends IInterface {

    /* loaded from: classes8.dex */
    public static abstract class a extends Binder implements c {

        /* renamed from: a  reason: collision with root package name */
        public static String f11575a = "";

        /* renamed from: com.ss.android.downloadlib.a.b.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0135a implements c {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f11576a;

            public C0135a(IBinder iBinder) {
                if (TextUtils.isEmpty(a.f11575a)) {
                    JSONObject i = j.i();
                    String unused = a.f11575a = com.ss.android.socialbase.appdownloader.f.c.a(i.optString("r"), i.optString(ak.aB));
                }
                this.f11576a = iBinder;
            }

            @Override // com.ss.android.downloadlib.a.b.c
            public void a(b bVar, d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.f11575a);
                    if (bVar != null) {
                        obtain.writeInt(1);
                        bVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    this.f11576a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f11576a;
            }
        }

        @Override // android.os.Binder
        @SuppressLint({"WrongConstant"})
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(f11575a);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(f11575a);
            a(parcel.readInt() != 0 ? b.CREATOR.createFromParcel(parcel) : null, d.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f11575a);
            if (queryLocalInterface != null && (queryLocalInterface instanceof c)) {
                return (c) queryLocalInterface;
            }
            return new C0135a(iBinder);
        }
    }

    void a(b bVar, d dVar) throws RemoteException;
}
