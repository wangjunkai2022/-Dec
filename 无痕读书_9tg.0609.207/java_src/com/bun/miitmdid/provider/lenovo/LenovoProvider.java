package com.bun.miitmdid.provider.lenovo;

import a.f.b.a;
import android.content.Context;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class LenovoProvider extends BaseProvider {
    public static final String TAG = "SDK call Lenovo: ";
    public Context context;
    public a openDeviceId = new a();

    /* renamed from: com.bun.miitmdid.provider.lenovo.LenovoProvider$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class AnonymousClass1 implements a.b<String> {
        public AnonymousClass1() {
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x001a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // a.f.b.a.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void serviceConnected(java.lang.String r6, a.f.b.a r7) {
            /*
                r5 = this;
                com.bun.miitmdid.provider.lenovo.LenovoProvider r6 = com.bun.miitmdid.provider.lenovo.LenovoProvider.this
                r0 = 0
                if (r7 == 0) goto Laf
                a.f.a.a r1 = r7.b     // Catch: android.os.RemoteException -> L10
                if (r1 == 0) goto L10
                a.f.a.a r1 = r7.b     // Catch: android.os.RemoteException -> L10
                boolean r1 = r1.isSupport()     // Catch: android.os.RemoteException -> L10
                goto L11
            L10:
                r1 = 0
            L11:
                com.bun.miitmdid.provider.lenovo.LenovoProvider.access$002(r6, r1)
                android.content.Context r6 = r7.f10605a
                java.lang.String r1 = "Context is null, must be new OpenDeviceId first"
                if (r6 == 0) goto La9
                a.f.a.a r6 = r7.b     // Catch: android.os.RemoteException -> L25
                if (r6 == 0) goto L29
                a.f.a.a r6 = r7.b     // Catch: android.os.RemoteException -> L25
                java.lang.String r6 = r6.getOAID()     // Catch: android.os.RemoteException -> L25
                goto L2a
            L25:
                r6 = move-exception
                r6.printStackTrace()
            L29:
                r6 = r0
            L2a:
                android.content.Context r2 = r7.f10605a
                if (r2 == 0) goto La3
                java.lang.String r2 = r2.getPackageName()
                java.lang.String r3 = ""
                if (r2 == 0) goto L4b
                boolean r4 = r2.equals(r3)
                if (r4 != 0) goto L4b
                a.f.a.a r4 = r7.b     // Catch: android.os.RemoteException -> L47
                if (r4 == 0) goto L4b
                a.f.a.a r4 = r7.b     // Catch: android.os.RemoteException -> L47
                java.lang.String r2 = r4.getVAID(r2)     // Catch: android.os.RemoteException -> L47
                goto L4c
            L47:
                r2 = move-exception
                r2.printStackTrace()
            L4b:
                r2 = r0
            L4c:
                android.content.Context r4 = r7.f10605a
                if (r4 == 0) goto L9d
                java.lang.String r1 = r4.getPackageName()
                if (r1 == 0) goto L7e
                boolean r4 = r1.equals(r3)
                if (r4 != 0) goto L7e
                a.f.a.a r4 = r7.b     // Catch: android.os.RemoteException -> L7d
                if (r4 == 0) goto L7e
                a.f.a.a r4 = r7.b     // Catch: android.os.RemoteException -> L7d
                java.lang.String r0 = r4.getAAID(r1)     // Catch: android.os.RemoteException -> L7d
                if (r0 == 0) goto L6e
                boolean r4 = r3.equals(r0)     // Catch: android.os.RemoteException -> L7d
                if (r4 == 0) goto L7e
            L6e:
                a.f.a.a r4 = r7.b     // Catch: android.os.RemoteException -> L7d
                boolean r4 = r4.a(r1)     // Catch: android.os.RemoteException -> L7d
                if (r4 == 0) goto L7e
                a.f.a.a r7 = r7.b     // Catch: android.os.RemoteException -> L7d
                java.lang.String r0 = r7.getAAID(r1)     // Catch: android.os.RemoteException -> L7d
                goto L7e
            L7d:
            L7e:
                com.bun.miitmdid.provider.lenovo.LenovoProvider r7 = com.bun.miitmdid.provider.lenovo.LenovoProvider.this
                if (r6 != 0) goto L83
                r6 = r3
            L83:
                com.bun.miitmdid.provider.lenovo.LenovoProvider.access$102(r7, r6)
                com.bun.miitmdid.provider.lenovo.LenovoProvider r6 = com.bun.miitmdid.provider.lenovo.LenovoProvider.this
                if (r2 != 0) goto L8b
                r2 = r3
            L8b:
                com.bun.miitmdid.provider.lenovo.LenovoProvider.access$202(r6, r2)
                com.bun.miitmdid.provider.lenovo.LenovoProvider r6 = com.bun.miitmdid.provider.lenovo.LenovoProvider.this
                if (r0 != 0) goto L93
                goto L94
            L93:
                r3 = r0
            L94:
                com.bun.miitmdid.provider.lenovo.LenovoProvider.access$302(r6, r3)
                com.bun.miitmdid.provider.lenovo.LenovoProvider r6 = com.bun.miitmdid.provider.lenovo.LenovoProvider.this
                r6.returnCallResult()
                return
            L9d:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>(r1)
                throw r6
            La3:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>(r1)
                throw r6
            La9:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>(r1)
                throw r6
            Laf:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bun.miitmdid.provider.lenovo.LenovoProvider.AnonymousClass1.serviceConnected(java.lang.String, a.f.b.a):void");
        }
    }

    public LenovoProvider(Context context) {
        this.context = context;
    }

    public static /* synthetic */ boolean access$002(LenovoProvider lenovoProvider, boolean z) {
        Object[] objArr = new Object[5];
        objArr[1] = lenovoProvider;
        objArr[2] = Boolean.valueOf(z);
        objArr[3] = 64;
        objArr[4] = 1594371206340L;
        return ((Boolean) Utils.rL(objArr)).booleanValue();
    }

    public static /* synthetic */ String access$102(LenovoProvider lenovoProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = lenovoProvider;
        objArr[2] = str;
        objArr[3] = 65;
        objArr[4] = 1594371206341L;
        return (String) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$202(LenovoProvider lenovoProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = lenovoProvider;
        objArr[2] = str;
        objArr[3] = 66;
        objArr[4] = 1594371206342L;
        return (String) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$302(LenovoProvider lenovoProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = lenovoProvider;
        objArr[2] = str;
        objArr[3] = 67;
        objArr[4] = 1594371206343L;
        return (String) Utils.rL(objArr);
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 68, 1594371206344L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 69, 1594371206345L})).booleanValue();
    }
}
