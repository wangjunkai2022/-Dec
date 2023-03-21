package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.os.SystemProperties;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;

/* loaded from: classes8.dex */
public final class f1 implements a1 {

    /* renamed from: a  reason: collision with root package name */
    public static final o0<Boolean> f10623a = new a();

    /* loaded from: classes8.dex */
    public static class a extends o0<Boolean> {
        @Override // bykvm_19do.bykvm_19do.bykvm_19do.o0
        /* renamed from: c */
        public Boolean a(Object... objArr) {
            return Boolean.valueOf("1".equals(f1.b("persist.sys.identifierid.supported", SpeechSynthesizer.REQUEST_DNS_OFF)));
        }
    }

    public f1(Context context) {
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        a1.a aVar = new a1.a();
        aVar.f10613a = a(context, 0, null);
        StringBuilder m1016super = Cgoto.m1016super("OaidVivo#oaid ");
        m1016super.append(aVar.f10613a);
        t0.b("Oaid#", m1016super.toString());
        return aVar;
    }

    public static boolean a() {
        return f10623a.b(new Object[0]).booleanValue();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        return a();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(2:5|(4:7|8|(4:12|13|(3:19|20|(1:22))|(2:16|17))|10)(1:43))(1:45))(1:46)|44|8|(0)|10|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006b, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007f, code lost:
        r9.printStackTrace();
        bykvm_19do.bykvm_19do.bykvm_19do.t0.b("Oaid#", "OaidVivo#query close cursor exception.", r9);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.database.Cursor] */
    @androidx.annotation.Nullable
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(@androidx.annotation.NonNull android.content.Context r9, int r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "OaidVivo#query close cursor exception."
            java.lang.String r1 = "Oaid#"
            r2 = 0
            if (r10 == 0) goto L3b
            r3 = 1
            if (r10 == r3) goto L25
            r3 = 2
            if (r10 == r3) goto Lf
            r4 = r2
            goto L42
        Lf:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r3 = "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"
            r10.append(r3)
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            android.net.Uri r10 = android.net.Uri.parse(r10)
            goto L41
        L25:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r3 = "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"
            r10.append(r3)
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            android.net.Uri r10 = android.net.Uri.parse(r10)
            goto L41
        L3b:
            java.lang.String r10 = "content://com.vivo.vms.IdProvider/IdentifierId/OAID"
            android.net.Uri r10 = android.net.Uri.parse(r10)
        L41:
            r4 = r10
        L42:
            if (r4 == 0) goto L96
            android.content.ContentResolver r3 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r9 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r9 == 0) goto L65
            boolean r10 = r9.moveToNext()     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L86
            if (r10 == 0) goto L65
            java.lang.String r10 = "value"
            int r10 = r9.getColumnIndex(r10)     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L86
            java.lang.String r2 = r9.getString(r10)     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L86
            goto L65
        L63:
            r10 = move-exception
            goto L71
        L65:
            if (r9 == 0) goto L96
            r9.close()     // Catch: java.lang.Exception -> L6b
            goto L96
        L6b:
            r9 = move-exception
            goto L7f
        L6d:
            r10 = move-exception
            goto L88
        L6f:
            r10 = move-exception
            r9 = r2
        L71:
            r10.printStackTrace()     // Catch: java.lang.Throwable -> L86
            java.lang.String r11 = "OaidVivo#query"
            bykvm_19do.bykvm_19do.bykvm_19do.t0.b(r1, r11, r10)     // Catch: java.lang.Throwable -> L86
            if (r9 == 0) goto L96
            r9.close()     // Catch: java.lang.Exception -> L6b
            goto L96
        L7f:
            r9.printStackTrace()
            bykvm_19do.bykvm_19do.bykvm_19do.t0.b(r1, r0, r9)
            goto L96
        L86:
            r10 = move-exception
            r2 = r9
        L88:
            if (r2 == 0) goto L95
            r2.close()     // Catch: java.lang.Exception -> L8e
            goto L95
        L8e:
            r9 = move-exception
            r9.printStackTrace()
            bykvm_19do.bykvm_19do.bykvm_19do.t0.b(r1, r0, r9)
        L95:
            throw r10
        L96:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.f1.a(android.content.Context, int, java.lang.String):java.lang.String");
    }

    public static String b(String str, String str2) {
        try {
            return SystemProperties.get(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
