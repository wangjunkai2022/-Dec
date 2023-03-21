package com.apk;

import com.google.android.material.internal.ManufacturerUtils;

/* compiled from: FuckRomUtils.java */
/* loaded from: classes8.dex */
public final class mw {

    /* renamed from: return  reason: not valid java name */
    public static Cdo f3125return;

    /* renamed from: do  reason: not valid java name */
    public static final String[] f3115do = {"huawei"};

    /* renamed from: if  reason: not valid java name */
    public static final String[] f3120if = {"vivo"};

    /* renamed from: for  reason: not valid java name */
    public static final String[] f3118for = {"xiaomi"};

    /* renamed from: new  reason: not valid java name */
    public static final String[] f3123new = {"oppo"};

    /* renamed from: try  reason: not valid java name */
    public static final String[] f3129try = {"leeco", "letv"};

    /* renamed from: case  reason: not valid java name */
    public static final String[] f3111case = {"360", "qiku"};

    /* renamed from: else  reason: not valid java name */
    public static final String[] f3116else = {"zte"};

    /* renamed from: goto  reason: not valid java name */
    public static final String[] f3119goto = {"oneplus"};

    /* renamed from: this  reason: not valid java name */
    public static final String[] f3127this = {"nubia"};

    /* renamed from: break  reason: not valid java name */
    public static final String[] f3110break = {"coolpad", "yulong"};

    /* renamed from: catch  reason: not valid java name */
    public static final String[] f3112catch = {"lg", ManufacturerUtils.LGE};

    /* renamed from: class  reason: not valid java name */
    public static final String[] f3113class = {"google"};

    /* renamed from: const  reason: not valid java name */
    public static final String[] f3114const = {ManufacturerUtils.SAMSUNG};

    /* renamed from: final  reason: not valid java name */
    public static final String[] f3117final = {ManufacturerUtils.MEIZU};

    /* renamed from: super  reason: not valid java name */
    public static final String[] f3126super = {"lenovo"};

    /* renamed from: throw  reason: not valid java name */
    public static final String[] f3128throw = {"smartisan"};

    /* renamed from: while  reason: not valid java name */
    public static final String[] f3130while = {"htc"};

    /* renamed from: import  reason: not valid java name */
    public static final String[] f3121import = {"sony"};

    /* renamed from: native  reason: not valid java name */
    public static final String[] f3122native = {"gionee", "amigo"};

    /* renamed from: public  reason: not valid java name */
    public static final String[] f3124public = {"motorola"};

    /* compiled from: FuckRomUtils.java */
    /* renamed from: com.apk.mw$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public String f3131do;

        /* renamed from: if  reason: not valid java name */
        public String f3132if;

        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("RomInfo{name=");
            m1016super.append(this.f3131do);
            m1016super.append(", version=");
            return Cgoto.m991class(m1016super, this.f3132if, "}");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00c4 A[Catch: all -> 0x00c9, TRY_LEAVE, TryCatch #6 {all -> 0x00c9, blocks: (B:43:0x00bc, B:45:0x00c4), top: B:61:0x00bc }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m1793do(java.lang.String r8) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            java.lang.String r1 = ""
            if (r0 != 0) goto Lae
            r0 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            r3.<init>()     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.lang.String r4 = "getprop "
            r3.append(r4)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            r3.append(r8)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.lang.Process r2 = r2.exec(r3)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            r2 = 1024(0x400, float:1.435E-42)
            r3.<init>(r4, r2)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4e
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            if (r0 == 0) goto L3e
            r3.close()     // Catch: java.io.IOException -> L3c
            goto L55
        L3c:
            goto L55
        L3e:
            r3.close()     // Catch: java.io.IOException -> L54
            goto L54
        L42:
            r8 = move-exception
            r0 = r3
            goto L48
        L45:
            r0 = r3
            goto L4f
        L47:
            r8 = move-exception
        L48:
            if (r0 == 0) goto L4d
            r0.close()     // Catch: java.io.IOException -> L4d
        L4d:
            throw r8
        L4e:
        L4f:
            if (r0 == 0) goto L54
            r0.close()     // Catch: java.io.IOException -> L54
        L54:
            r0 = r1
        L55:
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L5d
        L5b:
            r1 = r0
            goto Lae
        L5d:
            java.util.Properties r0 = new java.util.Properties     // Catch: java.lang.Exception -> L7a
            r0.<init>()     // Catch: java.lang.Exception -> L7a
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L7a
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L7a
            java.io.File r4 = android.os.Environment.getRootDirectory()     // Catch: java.lang.Exception -> L7a
            java.lang.String r5 = "build.prop"
            r3.<init>(r4, r5)     // Catch: java.lang.Exception -> L7a
            r2.<init>(r3)     // Catch: java.lang.Exception -> L7a
            r0.load(r2)     // Catch: java.lang.Exception -> L7a
            java.lang.String r0 = r0.getProperty(r8, r1)     // Catch: java.lang.Exception -> L7a
            goto L7b
        L7a:
            r0 = r1
        L7b:
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L82
            goto L5b
        L82:
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 28
            if (r2 >= r3) goto L5b
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.String r2 = "android.os.SystemProperties"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Exception -> Lad
            java.lang.String r3 = "get"
            r4 = 2
            java.lang.Class[] r5 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> Lad
            r6 = 0
            r5[r6] = r0     // Catch: java.lang.Exception -> Lad
            r7 = 1
            r5[r7] = r0     // Catch: java.lang.Exception -> Lad
            java.lang.reflect.Method r0 = r2.getMethod(r3, r5)     // Catch: java.lang.Exception -> Lad
            java.lang.Object[] r3 = new java.lang.Object[r4]     // Catch: java.lang.Exception -> Lad
            r3[r6] = r8     // Catch: java.lang.Exception -> Lad
            r3[r7] = r1     // Catch: java.lang.Exception -> Lad
            java.lang.Object r8 = r0.invoke(r2, r3)     // Catch: java.lang.Exception -> Lad
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Exception -> Lad
            r1 = r8
            goto Lae
        Lad:
        Lae:
            boolean r8 = android.text.TextUtils.isEmpty(r1)
            java.lang.String r0 = "unknown"
            if (r8 != 0) goto Lbc
            boolean r8 = r1.equals(r0)
            if (r8 == 0) goto Lca
        Lbc:
            java.lang.String r8 = android.os.Build.DISPLAY     // Catch: java.lang.Throwable -> Lc9
            boolean r2 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> Lc9
            if (r2 != 0) goto Lca
            java.lang.String r1 = r8.toLowerCase()     // Catch: java.lang.Throwable -> Lc9
            goto Lca
        Lc9:
        Lca:
            boolean r8 = android.text.TextUtils.isEmpty(r1)
            if (r8 == 0) goto Ld1
            return r0
        Ld1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.mw.m1793do(java.lang.String):java.lang.String");
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m1794if(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }
}
