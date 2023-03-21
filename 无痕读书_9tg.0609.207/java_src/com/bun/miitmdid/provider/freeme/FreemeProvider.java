package com.bun.miitmdid.provider.freeme;

import a.a.b.c;
import a.a.b.d;
import android.content.Context;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class FreemeProvider extends BaseProvider {
    public static final String TAG = "SDK call Freeme: ";
    public Context context;
    public String packagename;

    /* renamed from: com.bun.miitmdid.provider.freeme.FreemeProvider$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class AnonymousClass1 implements d {
        public final /* synthetic */ c val$idSupplier;

        public AnonymousClass1(c cVar) {
            this.val$idSupplier = cVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // a.a.b.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void connectSuccess(boolean r7) {
            /*
                r6 = this;
                if (r7 == 0) goto L95
                a.a.b.c r7 = r6.val$idSupplier
                a.a.b.b r7 = (a.a.b.b) r7
                boolean r7 = r7.a()
                if (r7 == 0) goto L86
                com.bun.miitmdid.provider.freeme.FreemeProvider r7 = com.bun.miitmdid.provider.freeme.FreemeProvider.this
                r0 = 1
                com.bun.miitmdid.provider.freeme.FreemeProvider.access$002(r7, r0)
                a.a.b.c r7 = r6.val$idSupplier
                a.a.b.b r7 = (a.a.b.b) r7
                a.a.a.a r7 = r7.b
                r0 = 0
                if (r7 == 0) goto L24
                java.lang.String r7 = r7.getOAID()     // Catch: android.os.RemoteException -> L20
                goto L25
            L20:
                r7 = move-exception
                r7.printStackTrace()
            L24:
                r7 = r0
            L25:
                a.a.b.c r1 = r6.val$idSupplier
                com.bun.miitmdid.provider.freeme.FreemeProvider r2 = com.bun.miitmdid.provider.freeme.FreemeProvider.this
                com.bun.miitmdid.provider.freeme.FreemeProvider.access$100(r2)
                a.a.b.b r1 = (a.a.b.b) r1
                a.a.a.a r1 = r1.b
                if (r1 == 0) goto L3b
                java.lang.String r1 = r1.getVAID()     // Catch: android.os.RemoteException -> L37
                goto L3c
            L37:
                r1 = move-exception
                r1.printStackTrace()
            L3b:
                r1 = r0
            L3c:
                a.a.b.c r2 = r6.val$idSupplier
                com.bun.miitmdid.provider.freeme.FreemeProvider r3 = com.bun.miitmdid.provider.freeme.FreemeProvider.this
                java.lang.String r3 = com.bun.miitmdid.provider.freeme.FreemeProvider.access$100(r3)
                a.a.b.b r2 = (a.a.b.b) r2
                a.a.a.a r4 = r2.b
                if (r4 == 0) goto L67
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: android.os.RemoteException -> L63
                r4.<init>()     // Catch: android.os.RemoteException -> L63
                java.lang.String r5 = "getAAID idsSupplier:"
                r4.append(r5)     // Catch: android.os.RemoteException -> L63
                a.a.a.a r5 = r2.b     // Catch: android.os.RemoteException -> L63
                r4.append(r5)     // Catch: android.os.RemoteException -> L63
                r4.toString()     // Catch: android.os.RemoteException -> L63
                a.a.a.a r2 = r2.b     // Catch: android.os.RemoteException -> L63
                java.lang.String r0 = r2.getAAID(r3)     // Catch: android.os.RemoteException -> L63
                goto L67
            L63:
                r2 = move-exception
                r2.printStackTrace()
            L67:
                com.bun.miitmdid.provider.freeme.FreemeProvider r2 = com.bun.miitmdid.provider.freeme.FreemeProvider.this
                java.lang.String r3 = ""
                if (r7 != 0) goto L6e
                r7 = r3
            L6e:
                com.bun.miitmdid.provider.freeme.FreemeProvider.access$202(r2, r7)
                com.bun.miitmdid.provider.freeme.FreemeProvider r7 = com.bun.miitmdid.provider.freeme.FreemeProvider.this
                if (r1 != 0) goto L76
                r1 = r3
            L76:
                com.bun.miitmdid.provider.freeme.FreemeProvider.access$302(r7, r1)
                com.bun.miitmdid.provider.freeme.FreemeProvider r7 = com.bun.miitmdid.provider.freeme.FreemeProvider.this
                if (r0 != 0) goto L7e
                r0 = r3
            L7e:
                com.bun.miitmdid.provider.freeme.FreemeProvider.access$402(r7, r0)
                com.bun.miitmdid.provider.freeme.FreemeProvider r7 = com.bun.miitmdid.provider.freeme.FreemeProvider.this
                r7.returnCallResult()
            L86:
                a.a.b.c r7 = r6.val$idSupplier
                a.a.b.b r7 = (a.a.b.b) r7
                a.a.a.a r0 = r7.b
                if (r0 == 0) goto L95
                android.content.Context r0 = r7.f10588a
                android.content.ServiceConnection r7 = r7.d
                r0.unbindService(r7)
            L95:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bun.miitmdid.provider.freeme.FreemeProvider.AnonymousClass1.connectSuccess(boolean):void");
        }
    }

    public FreemeProvider(Context context) {
        this.context = context;
        this.packagename = context.getPackageName();
    }

    public static /* synthetic */ boolean access$002(FreemeProvider freemeProvider, boolean z) {
        Object[] objArr = new Object[5];
        objArr[1] = freemeProvider;
        objArr[2] = Boolean.valueOf(z);
        objArr[3] = 53;
        objArr[4] = 1594371206329L;
        return ((Boolean) Utils.rL(objArr)).booleanValue();
    }

    public static /* synthetic */ String access$100(FreemeProvider freemeProvider) {
        Object[] objArr = new Object[4];
        objArr[1] = freemeProvider;
        objArr[2] = 54;
        objArr[3] = 1594371206330L;
        return (String) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$202(FreemeProvider freemeProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = freemeProvider;
        objArr[2] = str;
        objArr[3] = 55;
        objArr[4] = 1594371206331L;
        return (String) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$302(FreemeProvider freemeProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = freemeProvider;
        objArr[2] = str;
        objArr[3] = 56;
        objArr[4] = 1594371206332L;
        return (String) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$402(FreemeProvider freemeProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = freemeProvider;
        objArr[2] = str;
        objArr[3] = 57;
        objArr[4] = 1594371206333L;
        return (String) Utils.rL(objArr);
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 58, 1594371206334L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 59, 1594371206335L})).booleanValue();
    }
}
