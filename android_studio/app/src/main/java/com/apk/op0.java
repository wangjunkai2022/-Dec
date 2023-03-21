package com.apk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* compiled from: IOpenID.java */
/* loaded from: classes7.dex */
public interface op0 extends IInterface {

    /* compiled from: IOpenID.java */
    /* renamed from: com.apk.op0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static abstract class Cdo extends Binder implements op0 {

        /* compiled from: IOpenID.java */
        /* renamed from: com.apk.op0$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public static class C0071do implements op0 {

            /* renamed from: do  reason: not valid java name */
            public IBinder f3487do;

            public C0071do(IBinder iBinder) {
                this.f3487do = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3487do;
            }
        }

        /* renamed from: do  reason: not valid java name */
        public static op0 m1979do(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            if (queryLocalInterface != null && (queryLocalInterface instanceof op0)) {
                return (op0) queryLocalInterface;
            }
            return new C0071do(iBinder);
        }
    }
}
