package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import bykvm_19do.bykvm_19do.bykvm_19do.j1;
import bykvm_19do.bykvm_19do.bykvm_19do.q1;
/* loaded from: classes8.dex */
public final class g1 implements a1 {

    /* renamed from: a  reason: collision with root package name */
    public final a1 f10625a;
    public o0<Boolean> b;

    /* loaded from: classes8.dex */
    public class a extends o0<Boolean> {
        public a(g1 g1Var) {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.o0
        /* renamed from: c */
        public Boolean a(Object... objArr) {
            long j;
            try {
                PackageInfo packageInfo = ((Context) objArr[0]).getPackageManager().getPackageInfo("com.heytap.openid", 0);
                if (packageInfo == null) {
                    return Boolean.FALSE;
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    j = packageInfo.getLongVersionCode();
                } else {
                    j = packageInfo.versionCode;
                }
                return Boolean.valueOf(j >= 1);
            } catch (Throwable th) {
                th.printStackTrace();
                return Boolean.FALSE;
            }
        }
    }

    public g1() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002d A[Catch: Exception -> 0x0054, TryCatch #1 {Exception -> 0x0054, blocks: (B:14:0x0025, B:16:0x002d, B:18:0x0039, B:19:0x004f), top: B:26:0x0025 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String c(android.content.Context r8) {
        /*
            r7 = this;
            r0 = 0
            android.content.pm.PackageManager r1 = r8.getPackageManager()     // Catch: java.lang.Throwable -> L14
            java.lang.String r8 = r8.getPackageName()     // Catch: java.lang.Throwable -> L14
            r2 = 64
            android.content.pm.PackageInfo r8 = r1.getPackageInfo(r8, r2)     // Catch: java.lang.Throwable -> L14
            if (r8 == 0) goto L18
            android.content.pm.Signature[] r8 = r8.signatures     // Catch: java.lang.Throwable -> L14
            goto L19
        L14:
            r8 = move-exception
            r8.printStackTrace()
        L18:
            r8 = r0
        L19:
            if (r8 == 0) goto L58
            int r1 = r8.length
            if (r1 <= 0) goto L58
            r1 = 0
            r8 = r8[r1]
            byte[] r8 = r8.toByteArray()
            java.lang.String r2 = "SHA1"
            java.security.MessageDigest r2 = java.security.MessageDigest.getInstance(r2)     // Catch: java.lang.Exception -> L54
            if (r2 == 0) goto L58
            byte[] r8 = r2.digest(r8)     // Catch: java.lang.Exception -> L54
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L54
            r2.<init>()     // Catch: java.lang.Exception -> L54
            int r3 = r8.length     // Catch: java.lang.Exception -> L54
        L37:
            if (r1 >= r3) goto L4f
            r4 = r8[r1]     // Catch: java.lang.Exception -> L54
            r4 = r4 & 255(0xff, float:3.57E-43)
            r4 = r4 | 256(0x100, float:3.59E-43)
            java.lang.String r4 = java.lang.Integer.toHexString(r4)     // Catch: java.lang.Exception -> L54
            r5 = 3
            r6 = 1
            java.lang.String r4 = r4.substring(r6, r5)     // Catch: java.lang.Exception -> L54
            r2.append(r4)     // Catch: java.lang.Exception -> L54
            int r1 = r1 + 1
            goto L37
        L4f:
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Exception -> L54
            return r8
        L54:
            r8 = move-exception
            r8.printStackTrace()
        L58:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.g1.c(android.content.Context):java.lang.String");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        if (this.f10625a != null && !this.b.b(new Object[0]).booleanValue()) {
            return this.f10625a.b(context);
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        a1.a aVar = new a1.a();
        aVar.f10613a = (String) new j1(context, intent, new b(context)).a();
        return aVar;
    }

    /* loaded from: classes8.dex */
    public class b implements j1.b<q1, String> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10626a;

        public b(Context context) {
            this.f10626a = context;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.j1.b
        /* renamed from: b */
        public q1 a(IBinder iBinder) {
            return q1.a.a(iBinder);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.j1.b
        public String a(q1 q1Var) {
            if (q1Var == null) {
                return null;
            }
            String c = g1.this.c(this.f10626a);
            if (TextUtils.isEmpty(c)) {
                return null;
            }
            return q1Var.a(this.f10626a.getPackageName(), c, "OUID");
        }
    }

    public g1(a1 a1Var) {
        this.b = new a(this);
        this.f10625a = a1Var;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        if (context == null) {
            return false;
        }
        Boolean b2 = this.b.b(context);
        if (this.f10625a != null && !b2.booleanValue()) {
            return this.f10625a.a(context);
        }
        return b2.booleanValue();
    }
}
