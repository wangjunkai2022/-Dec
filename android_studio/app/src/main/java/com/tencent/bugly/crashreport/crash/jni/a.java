package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import com.apk.Cgoto;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.y;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class a implements NativeExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    public final Context f12067a;
    public final com.tencent.bugly.crashreport.crash.b b;
    public final com.tencent.bugly.crashreport.common.info.a c;
    public final com.tencent.bugly.crashreport.common.strategy.a d;

    public a(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar2) {
        this.f12067a = context;
        this.b = bVar;
        this.c = aVar;
        this.d = aVar2;
    }

    public static Map<String, String> a(String[] strArr) {
        HashMap hashMap = new HashMap(strArr == null ? 1 : strArr.length);
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                String str = strArr[i];
                if (str != null) {
                    y.a("Extra message[%d]: %s", Integer.valueOf(i), str);
                    String[] split = str.split("=");
                    if (split.length == 2) {
                        hashMap.put(split[0], split[1]);
                    } else {
                        y.d("bad extraMsg %s", str);
                    }
                }
            }
        } else {
            y.c("not found extraMsg", new Object[0]);
        }
        return hashMap;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7) {
        y.a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i, i2, j, j2, str, str2, str3, str4, i3, str5, i4, i5, i6, str6, str7, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009c A[Catch: all -> 0x0226, TryCatch #2 {all -> 0x0226, blocks: (B:4:0x0016, B:6:0x0036, B:8:0x0049, B:10:0x0051, B:12:0x005d, B:14:0x0069, B:17:0x0070, B:19:0x007c, B:21:0x009c, B:22:0x00b5, B:24:0x00cc, B:26:0x00ef, B:27:0x00f6, B:30:0x0102, B:32:0x010a, B:40:0x0152, B:41:0x0156, B:43:0x0160, B:23:0x00ba, B:18:0x007a), top: B:80:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ba A[Catch: all -> 0x0226, TryCatch #2 {all -> 0x0226, blocks: (B:4:0x0016, B:6:0x0036, B:8:0x0049, B:10:0x0051, B:12:0x005d, B:14:0x0069, B:17:0x0070, B:19:0x007c, B:21:0x009c, B:22:0x00b5, B:24:0x00cc, B:26:0x00ef, B:27:0x00f6, B:30:0x0102, B:32:0x010a, B:40:0x0152, B:41:0x0156, B:43:0x0160, B:23:0x00ba, B:18:0x007a), top: B:80:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ef A[Catch: all -> 0x0226, TryCatch #2 {all -> 0x0226, blocks: (B:4:0x0016, B:6:0x0036, B:8:0x0049, B:10:0x0051, B:12:0x005d, B:14:0x0069, B:17:0x0070, B:19:0x007c, B:21:0x009c, B:22:0x00b5, B:24:0x00cc, B:26:0x00ef, B:27:0x00f6, B:30:0x0102, B:32:0x010a, B:40:0x0152, B:41:0x0156, B:43:0x0160, B:23:0x00ba, B:18:0x007a), top: B:80:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a3 A[Catch: all -> 0x0222, TryCatch #1 {all -> 0x0222, blocks: (B:47:0x019d, B:49:0x01a3, B:51:0x01ac), top: B:79:0x019d }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ac A[Catch: all -> 0x0222, TRY_LEAVE, TryCatch #1 {all -> 0x0222, blocks: (B:47:0x019d, B:49:0x01a3, B:51:0x01ac), top: B:79:0x019d }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleNativeException2(int r28, int r29, long r30, long r32, java.lang.String r34, java.lang.String r35, java.lang.String r36, java.lang.String r37, int r38, java.lang.String r39, int r40, int r41, int r42, java.lang.String r43, java.lang.String r44, java.lang.String[] r45) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.a.handleNativeException2(int, int, long, long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, int, int, int, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final CrashDetailBean packageCrashDatas(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, byte[] bArr, Map<String, String> map, boolean z, boolean z2) {
        int i;
        String str12;
        int indexOf;
        boolean m = c.a().m();
        if (m) {
            y.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.b = 1;
        crashDetailBean.e = this.c.k();
        com.tencent.bugly.crashreport.common.info.a aVar = this.c;
        crashDetailBean.f = aVar.i;
        crashDetailBean.g = aVar.u();
        crashDetailBean.m = this.c.g();
        crashDetailBean.n = str3;
        crashDetailBean.o = m ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.p = str4;
        String str13 = str5 != null ? str5 : "";
        crashDetailBean.q = str13;
        crashDetailBean.r = j;
        crashDetailBean.u = ab.a(str13.getBytes());
        crashDetailBean.A = str;
        crashDetailBean.B = str2;
        crashDetailBean.L = this.c.w();
        crashDetailBean.h = this.c.t();
        crashDetailBean.i = this.c.F();
        crashDetailBean.v = str8;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        String dumpFilePath = nativeCrashHandler != null ? nativeCrashHandler.getDumpFilePath() : null;
        String a2 = b.a(dumpFilePath, str8);
        if (!ab.a(a2)) {
            crashDetailBean.Y = a2;
        }
        crashDetailBean.Z = b.b(dumpFilePath);
        crashDetailBean.w = b.a(str9, c.e, null, false);
        crashDetailBean.x = b.a(str10, c.e, null, true);
        crashDetailBean.M = str7;
        crashDetailBean.N = str6;
        crashDetailBean.O = str11;
        crashDetailBean.F = this.c.o();
        crashDetailBean.G = this.c.n();
        crashDetailBean.H = this.c.p();
        crashDetailBean.I = com.tencent.bugly.crashreport.common.info.b.f();
        crashDetailBean.J = com.tencent.bugly.crashreport.common.info.b.g();
        crashDetailBean.K = com.tencent.bugly.crashreport.common.info.b.h();
        if (z) {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.j();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.l();
            if (crashDetailBean.w == null) {
                crashDetailBean.w = ab.a(c.e, (String) null);
            }
            crashDetailBean.y = aa.a();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.c;
            crashDetailBean.P = aVar2.f12031a;
            crashDetailBean.Q = aVar2.a();
            crashDetailBean.z = ab.a(this.c.h(), c.f, false);
            int indexOf2 = crashDetailBean.q.indexOf("java:\n");
            if (indexOf2 > 0 && (i = indexOf2 + 6) < crashDetailBean.q.length()) {
                String str14 = crashDetailBean.q;
                String substring = str14.substring(i, str14.length() - 1);
                if (substring.length() > 0 && crashDetailBean.z.containsKey(crashDetailBean.B) && (indexOf = (str12 = crashDetailBean.z.get(crashDetailBean.B)).indexOf(substring)) > 0) {
                    String substring2 = str12.substring(indexOf);
                    crashDetailBean.z.put(crashDetailBean.B, substring2);
                    crashDetailBean.q = crashDetailBean.q.substring(0, i);
                    crashDetailBean.q = Cgoto.m991class(new StringBuilder(), crashDetailBean.q, substring2);
                }
            }
            if (str == null) {
                crashDetailBean.A = this.c.d;
            }
            this.b.d(crashDetailBean);
            crashDetailBean.T = this.c.D();
            crashDetailBean.U = this.c.E();
            crashDetailBean.V = this.c.x();
            crashDetailBean.W = this.c.C();
        } else {
            crashDetailBean.C = -1L;
            crashDetailBean.D = -1L;
            crashDetailBean.E = -1L;
            if (crashDetailBean.w == null) {
                crashDetailBean.w = "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.P = -1L;
            crashDetailBean.T = -1;
            crashDetailBean.U = -1;
            crashDetailBean.V = map;
            crashDetailBean.W = this.c.C();
            crashDetailBean.z = null;
            if (str == null) {
                crashDetailBean.A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.y = bArr;
            }
        }
        return crashDetailBean;
    }
}
