package com.umeng.umzid;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.idtracking.g;
import com.umeng.commonsdk.statistics.idtracking.h;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class ZIDManager {
    public static ZIDManager c;

    /* renamed from: a  reason: collision with root package name */
    public boolean f12337a = false;
    public boolean b = false;

    /* loaded from: classes7.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f12338a;
        public final /* synthetic */ IZIDCompletionCallback b;

        public a(Context context, IZIDCompletionCallback iZIDCompletionCallback) {
            this.f12338a = context;
            this.b = iZIDCompletionCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            String a2 = ZIDManager.a(ZIDManager.this, this.f12338a);
            if (TextUtils.isEmpty(a2)) {
                IZIDCompletionCallback iZIDCompletionCallback = this.b;
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure("1002", "获取zid失败");
                    return;
                }
                return;
            }
            IZIDCompletionCallback iZIDCompletionCallback2 = this.b;
            if (iZIDCompletionCallback2 != null) {
                iZIDCompletionCallback2.onSuccess(a2);
            }
        }
    }

    /* loaded from: classes7.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f12339a;

        public b(Context context) {
            this.f12339a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x00b0 A[Catch: all -> 0x0108, TRY_LEAVE, TryCatch #0 {all -> 0x0108, blocks: (B:7:0x001a, B:9:0x0020, B:11:0x0027, B:14:0x0037, B:16:0x003d, B:18:0x0047, B:20:0x004d, B:23:0x005d, B:25:0x0063, B:27:0x006d, B:29:0x0073, B:32:0x008d, B:34:0x0093, B:36:0x0099, B:39:0x00a0, B:41:0x00a6, B:42:0x00aa, B:44:0x00b0, B:46:0x00b5, B:48:0x00c3, B:50:0x00d8, B:52:0x00eb, B:53:0x00ee, B:55:0x00f8, B:56:0x00fb, B:58:0x0105), top: B:62:0x001a }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00c3 A[Catch: all -> 0x0108, TryCatch #0 {all -> 0x0108, blocks: (B:7:0x001a, B:9:0x0020, B:11:0x0027, B:14:0x0037, B:16:0x003d, B:18:0x0047, B:20:0x004d, B:23:0x005d, B:25:0x0063, B:27:0x006d, B:29:0x0073, B:32:0x008d, B:34:0x0093, B:36:0x0099, B:39:0x00a0, B:41:0x00a6, B:42:0x00aa, B:44:0x00b0, B:46:0x00b5, B:48:0x00c3, B:50:0x00d8, B:52:0x00eb, B:53:0x00ee, B:55:0x00f8, B:56:0x00fb, B:58:0x0105), top: B:62:0x001a }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r12 = this;
                java.lang.String r0 = "aaid"
                com.umeng.umzid.ZIDManager r1 = com.umeng.umzid.ZIDManager.this
                android.content.Context r2 = r12.f12339a
                boolean r3 = r1.b
                if (r3 == 0) goto Lc
                goto L10b
            Lc:
                r3 = 1
                r1.b = r3
                org.json.JSONObject r4 = new org.json.JSONObject
                r4.<init>()
                java.lang.String r5 = "zdata"
                java.lang.String r6 = ""
                if (r2 == 0) goto L26
                android.content.SharedPreferences r7 = com.umeng.umzid.a.a(r2)     // Catch: java.lang.Throwable -> L108
                if (r7 == 0) goto L26
                r8 = 0
                java.lang.String r7 = r7.getString(r5, r8)     // Catch: java.lang.Throwable -> L108
                goto L27
            L26:
                r7 = r6
            L27:
                java.lang.String r8 = com.umeng.umzid.Spy.getID()     // Catch: java.lang.Throwable -> L108
                r4.put(r5, r8)     // Catch: java.lang.Throwable -> L108
                java.lang.String r5 = "old_zdata"
                r4.put(r5, r7)     // Catch: java.lang.Throwable -> L108
                java.lang.String r5 = "oaid"
                if (r2 == 0) goto L4c
                android.content.SharedPreferences r7 = com.umeng.umzid.a.a(r2)     // Catch: java.lang.Throwable -> L108
                if (r7 == 0) goto L4c
                java.lang.String r7 = r7.getString(r5, r6)     // Catch: java.lang.Throwable -> L108
                boolean r9 = com.umeng.umzid.c.c(r7)     // Catch: java.lang.Throwable -> L108
                if (r9 == 0) goto L4d
                java.lang.String r7 = com.umeng.umzid.c.a(r7)     // Catch: java.lang.Throwable -> L108
                goto L4d
            L4c:
                r7 = r6
            L4d:
                java.lang.String r9 = com.umeng.umzid.c.c(r2)     // Catch: java.lang.Throwable -> L108
                java.lang.String r10 = "old_oaid"
                r4.put(r10, r7)     // Catch: java.lang.Throwable -> L108
                r4.put(r5, r9)     // Catch: java.lang.Throwable -> L108
                java.lang.String r5 = "mac"
                if (r2 == 0) goto L72
                android.content.SharedPreferences r7 = com.umeng.umzid.a.a(r2)     // Catch: java.lang.Throwable -> L108
                if (r7 == 0) goto L72
                java.lang.String r7 = r7.getString(r5, r6)     // Catch: java.lang.Throwable -> L108
                boolean r10 = com.umeng.umzid.c.c(r7)     // Catch: java.lang.Throwable -> L108
                if (r10 == 0) goto L73
                java.lang.String r7 = com.umeng.umzid.c.a(r7)     // Catch: java.lang.Throwable -> L108
                goto L73
            L72:
                r7 = r6
            L73:
                java.lang.String r10 = com.umeng.umzid.c.b(r2)     // Catch: java.lang.Throwable -> L108
                r4.put(r5, r10)     // Catch: java.lang.Throwable -> L108
                java.lang.String r5 = "old_mac"
                r4.put(r5, r7)     // Catch: java.lang.Throwable -> L108
                r1.a(r2, r4)     // Catch: java.lang.Throwable -> L108
                java.lang.String r5 = com.umeng.umzid.c.a(r2)     // Catch: java.lang.Throwable -> L108
                r4.put(r0, r5)     // Catch: java.lang.Throwable -> L108
                java.lang.String r5 = "uabc"
                if (r2 == 0) goto L98
                android.content.SharedPreferences r7 = com.umeng.umzid.a.a(r2)     // Catch: java.lang.Throwable -> L108
                if (r7 == 0) goto L98
                java.lang.String r7 = r7.getString(r5, r6)     // Catch: java.lang.Throwable -> L108
                goto L99
            L98:
                r7 = r6
            L99:
                r4.put(r5, r7)     // Catch: java.lang.Throwable -> L108
                java.lang.String r7 = "resetToken"
                if (r2 == 0) goto Laa
                android.content.SharedPreferences r11 = com.umeng.umzid.a.a(r2)     // Catch: java.lang.Throwable -> L108
                if (r11 == 0) goto Laa
                java.lang.String r6 = r11.getString(r7, r6)     // Catch: java.lang.Throwable -> L108
            Laa:
                boolean r11 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L108
                if (r11 != 0) goto Lb3
                r4.put(r7, r6)     // Catch: java.lang.Throwable -> L108
            Lb3:
                java.lang.String r6 = "https://aaid.umeng.com/api/updateZdata"
                java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L108
                java.lang.String r4 = com.umeng.umzid.a.a(r6, r4)     // Catch: java.lang.Throwable -> L108
                boolean r6 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L108
                if (r6 != 0) goto L108
                org.json.JSONObject r6 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L108
                r6.<init>(r4)     // Catch: java.lang.Throwable -> L108
                java.lang.String r4 = "suc"
                boolean r4 = r6.optBoolean(r4)     // Catch: java.lang.Throwable -> L108
                java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> L108
                boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L108
                if (r4 != r3) goto L108
                com.umeng.umzid.c.f(r2, r8)     // Catch: java.lang.Throwable -> L108
                com.umeng.umzid.c.a(r2, r10)     // Catch: java.lang.Throwable -> L108
                com.umeng.umzid.c.b(r2, r9)     // Catch: java.lang.Throwable -> L108
                java.lang.String r0 = r6.optString(r0)     // Catch: java.lang.Throwable -> L108
                boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L108
                if (r3 != 0) goto Lee
                com.umeng.umzid.c.e(r2, r0)     // Catch: java.lang.Throwable -> L108
            Lee:
                java.lang.String r0 = r6.getString(r5)     // Catch: java.lang.Throwable -> L108
                boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L108
                if (r3 != 0) goto Lfb
                com.umeng.umzid.c.d(r2, r0)     // Catch: java.lang.Throwable -> L108
            Lfb:
                java.lang.String r0 = r6.getString(r7)     // Catch: java.lang.Throwable -> L108
                boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L108
                if (r3 != 0) goto L108
                com.umeng.umzid.c.c(r2, r0)     // Catch: java.lang.Throwable -> L108
            L108:
                r0 = 0
                r1.b = r0
            L10b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.b.run():void");
        }
    }

    /* loaded from: classes7.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f12340a;

        public c(Context context) {
            this.f12340a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.a(ZIDManager.this, this.f12340a);
        }
    }

    public static /* synthetic */ String a(ZIDManager zIDManager, Context context) {
        String str = null;
        if (!zIDManager.f12337a) {
            zIDManager.f12337a = true;
            JSONObject jSONObject = new JSONObject();
            try {
                String id = Spy.getID();
                jSONObject.put("zdata", id);
                String b2 = com.umeng.umzid.c.b(context);
                jSONObject.put(g.f12310a, b2);
                String c2 = com.umeng.umzid.c.c(context);
                jSONObject.put(h.d, c2);
                zIDManager.a(context, jSONObject);
                String a2 = com.umeng.umzid.a.a("https://aaid.umeng.com/api/postZdata", jSONObject.toString());
                if (!TextUtils.isEmpty(a2)) {
                    JSONObject jSONObject2 = new JSONObject(a2);
                    if (Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                        com.umeng.umzid.c.f(context, id);
                        com.umeng.umzid.c.a(context, b2);
                        com.umeng.umzid.c.b(context, c2);
                        str = jSONObject2.optString("aaid");
                        if (!TextUtils.isEmpty(str)) {
                            com.umeng.umzid.c.e(context, str);
                        }
                        String string = jSONObject2.getString("uabc");
                        if (!TextUtils.isEmpty(string)) {
                            com.umeng.umzid.c.d(context, string);
                        }
                        String string2 = jSONObject2.getString("resetToken");
                        if (!TextUtils.isEmpty(string2)) {
                            com.umeng.umzid.c.c(context, string2);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            zIDManager.f12337a = false;
        }
        return str;
    }

    public static synchronized ZIDManager getInstance() {
        ZIDManager zIDManager;
        synchronized (ZIDManager.class) {
            if (c == null) {
                c = new ZIDManager();
            }
            zIDManager = c;
        }
        return zIDManager;
    }

    public static String getSDKVersion() {
        return "1.4.1";
    }

    public synchronized String getZID(Context context) {
        if (context == null) {
            return "";
        }
        Context applicationContext = context.getApplicationContext();
        String a2 = com.umeng.umzid.c.a(applicationContext);
        if (TextUtils.isEmpty(a2)) {
            com.umeng.umzid.b.a(new c(applicationContext));
            return "";
        }
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x006d A[Catch: all -> 0x009c, TryCatch #1 {, blocks: (B:5:0x0005, B:8:0x000e, B:11:0x0016, B:14:0x001f, B:17:0x0027, B:19:0x002d, B:21:0x0033, B:23:0x0039, B:24:0x0042, B:26:0x0048, B:29:0x004f, B:31:0x0059, B:33:0x0065, B:35:0x006d, B:36:0x0075, B:38:0x007b, B:43:0x008d, B:32:0x005d), top: B:51:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b A[Catch: all -> 0x009c, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x0005, B:8:0x000e, B:11:0x0016, B:14:0x001f, B:17:0x0027, B:19:0x002d, B:21:0x0033, B:23:0x0039, B:24:0x0042, B:26:0x0048, B:29:0x004f, B:31:0x0059, B:33:0x0065, B:35:0x006d, B:36:0x0075, B:38:0x007b, B:43:0x008d, B:32:0x005d), top: B:51:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void init(android.content.Context r4, java.lang.String r5, com.umeng.umzid.IZIDCompletionCallback r6) {
        /*
            r3 = this;
            monitor-enter(r3)
            if (r4 != 0) goto Le
            if (r6 == 0) goto Lc
            java.lang.String r4 = "1001"
            java.lang.String r5 = "传入参数Context为null"
            r6.onFailure(r4, r5)     // Catch: java.lang.Throwable -> L9c
        Lc:
            monitor-exit(r3)
            return
        Le:
            boolean r0 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r0 == 0) goto L1f
            if (r6 == 0) goto L1d
            java.lang.String r4 = "1003"
            java.lang.String r5 = "传入参数appkey为空"
            r6.onFailure(r4, r5)     // Catch: java.lang.Throwable -> L9c
        L1d:
            monitor-exit(r3)
            return
        L1f:
            android.content.Context r0 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L9c
            if (r0 == 0) goto L42
            if (r5 == 0) goto L42
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r1 != 0) goto L42
            android.content.SharedPreferences r1 = com.umeng.umzid.a.a(r0)     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L42
            android.content.SharedPreferences$Editor r1 = r1.edit()     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L42
            java.lang.String r2 = "appkey"
            android.content.SharedPreferences$Editor r5 = r1.putString(r2, r5)     // Catch: java.lang.Throwable -> L9c
            r5.commit()     // Catch: java.lang.Throwable -> L9c
        L42:
            java.lang.String r5 = com.umeng.umzid.c.a(r0)     // Catch: java.lang.Throwable -> L9c
            if (r5 == 0) goto L5d
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L4f
            goto L5d
        L4f:
            com.umeng.umzid.ZIDManager$b r1 = new com.umeng.umzid.ZIDManager$b     // Catch: java.lang.Throwable -> L9c
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L9c
            com.umeng.umzid.b.a(r1)     // Catch: java.lang.Throwable -> L9c
            if (r6 == 0) goto L65
            r6.onSuccess(r5)     // Catch: java.lang.Throwable -> L9c
            goto L65
        L5d:
            com.umeng.umzid.ZIDManager$a r5 = new com.umeng.umzid.ZIDManager$a     // Catch: java.lang.Throwable -> L9c
            r5.<init>(r0, r6)     // Catch: java.lang.Throwable -> L9c
            com.umeng.umzid.b.a(r5)     // Catch: java.lang.Throwable -> L9c
        L65:
            java.lang.String r5 = ""
            android.content.SharedPreferences r6 = com.umeng.umzid.a.a(r4)     // Catch: java.lang.Throwable -> L9c
            if (r6 == 0) goto L75
            java.lang.String r5 = "uuid"
            java.lang.String r0 = ""
            java.lang.String r5 = r6.getString(r5, r0)     // Catch: java.lang.Throwable -> L9c
        L75:
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L9c
            if (r5 == 0) goto L9a
            java.lang.String r5 = ""
            android.content.SharedPreferences r4 = com.umeng.umzid.a.a(r4)     // Catch: java.lang.Throwable -> L9c
            java.util.UUID r6 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r5 = r6.toString()     // Catch: java.lang.Throwable -> L8a
            goto L8b
        L8a:
        L8b:
            if (r4 == 0) goto L9a
            android.content.SharedPreferences$Editor r4 = r4.edit()     // Catch: java.lang.Throwable -> L9c
            java.lang.String r6 = "uuid"
            android.content.SharedPreferences$Editor r4 = r4.putString(r6, r5)     // Catch: java.lang.Throwable -> L9c
            r4.commit()     // Catch: java.lang.Throwable -> L9c
        L9a:
            monitor-exit(r3)
            return
        L9c:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.init(android.content.Context, java.lang.String, com.umeng.umzid.IZIDCompletionCallback):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(47:1|(4:2|3|4|5)|(2:7|(43:11|12|(1:118)(1:16)|(1:18)|19|(5:106|107|(2:114|115)|109|(37:111|22|23|24|25|26|(2:28|(30:32|33|34|35|36|37|(3:87|88|(5:90|91|(2:94|92)|95|96))|39|(1:41)(1:86)|42|(1:44)(1:85)|45|46|47|48|49|50|51|52|53|54|(1:58)|59|60|61|62|63|(2:65|(2:69|70))|72|73))|104|33|34|35|36|37|(0)|39|(0)(0)|42|(0)(0)|45|46|47|48|49|50|51|52|53|54|(2:56|58)|59|60|61|62|63|(0)|72|73))|21|22|23|24|25|26|(0)|104|33|34|35|36|37|(0)|39|(0)(0)|42|(0)(0)|45|46|47|48|49|50|51|52|53|54|(0)|59|60|61|62|63|(0)|72|73))|120|12|(1:14)|118|(0)|19|(0)|21|22|23|24|25|26|(0)|104|33|34|35|36|37|(0)|39|(0)(0)|42|(0)(0)|45|46|47|48|49|50|51|52|53|54|(0)|59|60|61|62|63|(0)|72|73) */
    /* JADX WARN: Can't wrap try/catch for region: R(50:1|2|3|4|5|(2:7|(43:11|12|(1:118)(1:16)|(1:18)|19|(5:106|107|(2:114|115)|109|(37:111|22|23|24|25|26|(2:28|(30:32|33|34|35|36|37|(3:87|88|(5:90|91|(2:94|92)|95|96))|39|(1:41)(1:86)|42|(1:44)(1:85)|45|46|47|48|49|50|51|52|53|54|(1:58)|59|60|61|62|63|(2:65|(2:69|70))|72|73))|104|33|34|35|36|37|(0)|39|(0)(0)|42|(0)(0)|45|46|47|48|49|50|51|52|53|54|(2:56|58)|59|60|61|62|63|(0)|72|73))|21|22|23|24|25|26|(0)|104|33|34|35|36|37|(0)|39|(0)(0)|42|(0)(0)|45|46|47|48|49|50|51|52|53|54|(0)|59|60|61|62|63|(0)|72|73))|120|12|(1:14)|118|(0)|19|(0)|21|22|23|24|25|26|(0)|104|33|34|35|36|37|(0)|39|(0)(0)|42|(0)(0)|45|46|47|48|49|50|51|52|53|54|(0)|59|60|61|62|63|(0)|72|73) */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0135, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x017e, code lost:
        r5.printStackTrace();
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a0, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01a1, code lost:
        r5.printStackTrace();
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01b9, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ba, code lost:
        r5.printStackTrace();
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c3 A[Catch: all -> 0x00d7, TryCatch #6 {all -> 0x00d7, blocks: (B:37:0x00b1, B:39:0x00b7, B:41:0x00c3, B:43:0x00d0, B:45:0x00d4), top: B:121:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e6 A[Catch: all -> 0x01fa, TryCatch #7 {all -> 0x01fa, blocks: (B:93:0x01d4, B:95:0x01da, B:97:0x01e6, B:99:0x01f3, B:101:0x01f7), top: B:123:0x01d4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final org.json.JSONObject a(android.content.Context r10, org.json.JSONObject r11) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.a(android.content.Context, org.json.JSONObject):org.json.JSONObject");
    }
}
