package a.d.a.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.umeng.commonsdk.statistics.idtracking.h;
import org.litepal.parser.LitePalParser;

/* loaded from: classes8.dex */
public class e {
    public static volatile e g;
    public BroadcastReceiver f;

    /* renamed from: a  reason: collision with root package name */
    public a f10600a = new a("udid");
    public a b = new a(h.d);
    public a d = new a("vaid");
    public a c = new a("aaid");
    public b e = new b();

    public static c a(Cursor cursor) {
        c cVar = new c(null, 0);
        if (cursor == null || cursor.isClosed()) {
            return cVar;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex(LitePalParser.ATTR_VALUE);
        if (columnIndex >= 0) {
            cVar.f10599a = cursor.getString(columnIndex);
        }
        int columnIndex2 = cursor.getColumnIndex(PluginConstants.KEY_ERROR_CODE);
        if (columnIndex2 >= 0) {
            cVar.b = cursor.getInt(columnIndex2);
        }
        int columnIndex3 = cursor.getColumnIndex("expired");
        if (columnIndex3 >= 0) {
            cVar.c = cursor.getLong(columnIndex3);
        }
        return cVar;
    }

    public static final e a() {
        if (g == null) {
            synchronized (e.class) {
                if (g == null) {
                    g = new e();
                }
            }
        }
        return g;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String a(android.content.Context r14, a.d.a.a.a r15) {
        /*
            r13 = this;
            r0 = 0
            if (r15 != 0) goto L4
            return r0
        L4:
            long r1 = r15.f10597a
            long r3 = java.lang.System.currentTimeMillis()
            r5 = 0
            r6 = 1
            int r7 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r7 <= 0) goto L12
            r1 = 1
            goto L13
        L12:
            r1 = 0
        L13:
            if (r1 == 0) goto L18
            java.lang.String r14 = r15.b
            return r14
        L18:
            boolean r1 = r13.a(r14, r6)
            if (r1 != 0) goto L1f
            return r0
        L1f:
            java.lang.String r1 = "content://com.meizu.flyme.openidsdk/"
            android.net.Uri r8 = android.net.Uri.parse(r1)
            android.content.ContentResolver r7 = r14.getContentResolver()     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8a
            r9 = 0
            r10 = 0
            java.lang.String[] r11 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8a
            java.lang.String r1 = r15.c     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8a
            r11[r5] = r1     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8a
            r12 = 0
            android.database.Cursor r1 = r7.query(r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8a
            if (r1 == 0) goto L66
            a.d.a.a.c r2 = a(r1)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            java.lang.String r0 = r2.f10599a     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            r15.b = r0     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            long r3 = r2.c     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            r15.f10597a = r3     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            int r3 = r2.b     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            r15.d = r3     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            int r15 = r2.b     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            r2 = 1000(0x3e8, float:1.401E-42)
            if (r15 == r2) goto L7e
            r13.a(r14)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            boolean r15 = r13.a(r14, r5)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            if (r15 != 0) goto L7e
            boolean r14 = r13.a(r14, r6)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            java.lang.StringBuilder r15 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            r15.<init>()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            java.lang.String r2 = "not support, forceQuery isSupported: "
        L62:
            r15.append(r2)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            goto L78
        L66:
            boolean r15 = r13.a(r14, r5)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            if (r15 == 0) goto L7e
            boolean r14 = r13.a(r14, r6)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            java.lang.StringBuilder r15 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            r15.<init>()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            java.lang.String r2 = "forceQuery isSupported : "
            goto L62
        L78:
            r15.append(r14)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            r15.toString()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
        L7e:
            if (r1 == 0) goto L98
            goto L93
        L81:
            r14 = move-exception
            r0 = r1
            goto L99
        L84:
            r14 = move-exception
            r15 = r0
            r0 = r1
            goto L8c
        L88:
            r14 = move-exception
            goto L99
        L8a:
            r14 = move-exception
            r15 = r0
        L8c:
            r14.getMessage()     // Catch: java.lang.Throwable -> L88
            if (r0 == 0) goto L97
            r1 = r0
            r0 = r15
        L93:
            r1.close()
            goto L98
        L97:
            r0 = r15
        L98:
            return r0
        L99:
            if (r0 == 0) goto L9e
            r0.close()
        L9e:
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: a.d.a.a.e.a(android.content.Context, a.d.a.a.a):java.lang.String");
    }

    public final synchronized void a(Context context) {
        if (this.f != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE");
        d dVar = new d();
        this.f = dVar;
        context.registerReceiver(dVar, intentFilter, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE", null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b6, code lost:
        if (r1 != null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00bf, code lost:
        if (r1 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00c1, code lost:
        r1.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(android.content.Context r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: a.d.a.a.e.a(android.content.Context, boolean):boolean");
    }
}
