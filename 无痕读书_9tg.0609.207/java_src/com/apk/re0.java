package com.apk;

import java.io.File;
import java.util.ArrayList;
/* compiled from: ZipFile.java */
/* loaded from: classes7.dex */
public class re0 {

    /* renamed from: do  reason: not valid java name */
    public String f4038do;

    /* renamed from: for  reason: not valid java name */
    public of0 f4039for;

    /* renamed from: new  reason: not valid java name */
    public boolean f4041new;

    /* renamed from: if  reason: not valid java name */
    public int f4040if = 2;

    /* renamed from: try  reason: not valid java name */
    public pf0 f4042try = new pf0();

    /* renamed from: case  reason: not valid java name */
    public boolean f4037case = false;

    public re0(String str) throws af0 {
        this.f4038do = new File(str).getPath();
    }

    /* renamed from: do  reason: not valid java name */
    public void m2257do(String str) throws af0 {
        ArrayList arrayList;
        long j;
        if (sb0.m2412finally(str)) {
            if (sb0.m2412finally(str)) {
                File file = new File(str);
                if (file.exists()) {
                    if (file.isDirectory()) {
                        if (!file.canWrite()) {
                            throw new af0("no write access to output folder");
                        }
                    } else {
                        throw new af0("output folder is not valid");
                    }
                } else {
                    try {
                        file.mkdirs();
                        if (file.isDirectory()) {
                            if (!file.canWrite()) {
                                throw new af0("no write access to destination folder");
                            }
                        } else {
                            throw new af0("output folder is not valid");
                        }
                    } catch (Exception unused) {
                        throw new af0("Cannot create destination folder");
                    }
                }
                if (this.f4039for == null) {
                    m2258for();
                }
                of0 of0Var = this.f4039for;
                if (of0Var != null) {
                    if (this.f4042try.f3631do != 1) {
                        rf0 rf0Var = new rf0(of0Var);
                        pf0 pf0Var = this.f4042try;
                        boolean z = this.f4037case;
                        ff0 ff0Var = rf0Var.f4044do.f3405do;
                        if (ff0Var == null || (arrayList = ff0Var.f1289do) == null) {
                            throw new af0("invalid central directory in zipModel");
                        }
                        if (pf0Var != null) {
                            int i = 0;
                            long j2 = 0;
                            while (i < arrayList.size()) {
                                if0 if0Var = (if0) arrayList.get(i);
                                nf0 nf0Var = if0Var.f2091throw;
                                ArrayList arrayList2 = arrayList;
                                if (nf0Var != null && nf0Var.f3211if > 0) {
                                    j = nf0Var.f3209do;
                                } else {
                                    j = if0Var.f2092try;
                                }
                                j2 += j;
                                i++;
                                arrayList = arrayList2;
                            }
                            ArrayList arrayList3 = arrayList;
                            pf0Var.f3633if = j2;
                            pf0Var.f3631do = 1;
                            if (z) {
                                new qf0(rf0Var, "Zip4j", arrayList3, pf0Var, str).start();
                                return;
                            } else {
                                rf0Var.m2262if(arrayList3, null, pf0Var, str);
                                return;
                            }
                        }
                        throw null;
                    }
                    throw new af0("invalid operation - Zip4j is in busy state");
                }
                throw new af0("Internal error occurred when extracting zip file");
            }
            throw new af0(new NullPointerException("output path is null"));
        }
        throw new af0("output path is null or invalid");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2258for() throws com.apk.af0 {
        /*
            r5 = this;
            java.lang.String r0 = r5.f4038do
            boolean r0 = com.apk.sb0.m2429super(r0)
            if (r0 == 0) goto L92
            java.lang.String r0 = r5.f4038do
            boolean r1 = com.apk.sb0.m2412finally(r0)
            if (r1 == 0) goto L8a
            boolean r1 = com.apk.sb0.m2429super(r0)
            if (r1 == 0) goto L7e
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> L76
            r1.<init>(r0)     // Catch: java.lang.Exception -> L76
            boolean r0 = r1.canRead()     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L6e
            int r0 = r5.f4040if
            r1 = 2
            if (r0 != r1) goto L66
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L50 java.io.FileNotFoundException -> L52
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L50 java.io.FileNotFoundException -> L52
            java.lang.String r3 = r5.f4038do     // Catch: java.lang.Throwable -> L50 java.io.FileNotFoundException -> L52
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L50 java.io.FileNotFoundException -> L52
            java.lang.String r3 = "r"
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L50 java.io.FileNotFoundException -> L52
            com.apk.of0 r2 = r5.f4039for     // Catch: java.io.FileNotFoundException -> L4e java.lang.Throwable -> L5c
            if (r2 != 0) goto L4a
            com.apk.qe0 r2 = new com.apk.qe0     // Catch: java.io.FileNotFoundException -> L4e java.lang.Throwable -> L5c
            r2.<init>(r1)     // Catch: java.io.FileNotFoundException -> L4e java.lang.Throwable -> L5c
            com.apk.of0 r0 = r2.m2124for(r0)     // Catch: java.io.FileNotFoundException -> L4e java.lang.Throwable -> L5c
            r5.f4039for = r0     // Catch: java.io.FileNotFoundException -> L4e java.lang.Throwable -> L5c
            if (r0 == 0) goto L4a
            java.lang.String r2 = r5.f4038do     // Catch: java.io.FileNotFoundException -> L4e java.lang.Throwable -> L5c
            r0.f3404case = r2     // Catch: java.io.FileNotFoundException -> L4e java.lang.Throwable -> L5c
        L4a:
            r1.close()     // Catch: java.io.IOException -> L4d
        L4d:
            return
        L4e:
            r0 = move-exception
            goto L56
        L50:
            r1 = move-exception
            goto L60
        L52:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L56:
            com.apk.af0 r2 = new com.apk.af0     // Catch: java.lang.Throwable -> L5c
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L5c
            throw r2     // Catch: java.lang.Throwable -> L5c
        L5c:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L60:
            if (r0 == 0) goto L65
            r0.close()     // Catch: java.io.IOException -> L65
        L65:
            throw r1
        L66:
            com.apk.af0 r0 = new com.apk.af0
            java.lang.String r1 = "Invalid mode"
            r0.<init>(r1)
            throw r0
        L6e:
            com.apk.af0 r0 = new com.apk.af0
            java.lang.String r1 = "no read access for the input zip file"
            r0.<init>(r1)
            throw r0
        L76:
            com.apk.af0 r0 = new com.apk.af0
            java.lang.String r1 = "cannot read zip file"
            r0.<init>(r1)
            throw r0
        L7e:
            com.apk.af0 r1 = new com.apk.af0
            java.lang.String r2 = "file does not exist: "
            java.lang.String r0 = com.apk.Cgoto.m989case(r2, r0)
            r1.<init>(r0)
            throw r1
        L8a:
            com.apk.af0 r0 = new com.apk.af0
            java.lang.String r1 = "path is null"
            r0.<init>(r1)
            throw r0
        L92:
            com.apk.af0 r0 = new com.apk.af0
            java.lang.String r1 = "zip file does not exist"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.re0.m2258for():void");
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m2259if() throws af0 {
        ArrayList arrayList;
        if (this.f4039for == null) {
            m2258for();
            if (this.f4039for == null) {
                throw new af0("Zip Model is null");
            }
        }
        ff0 ff0Var = this.f4039for.f3405do;
        if (ff0Var != null && (arrayList = ff0Var.f1289do) != null) {
            int i = 0;
            while (true) {
                if (i < arrayList.size()) {
                    if0 if0Var = (if0) arrayList.get(i);
                    if (if0Var != null && if0Var.f2079const) {
                        this.f4041new = true;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            return this.f4041new;
        }
        throw new af0("invalid zip file");
    }

    /* renamed from: new  reason: not valid java name */
    public void m2260new(String str) throws af0 {
        if (sb0.m2412finally(str)) {
            char[] charArray = str.toCharArray();
            if (this.f4039for == null) {
                m2258for();
                if (this.f4039for == null) {
                    throw new af0("Zip Model is null");
                }
            }
            ff0 ff0Var = this.f4039for.f3405do;
            if (ff0Var != null && ff0Var.f1289do != null) {
                for (int i = 0; i < this.f4039for.f3405do.f1289do.size(); i++) {
                    if (this.f4039for.f3405do.f1289do.get(i) != null && ((if0) this.f4039for.f3405do.f1289do.get(i)).f2079const) {
                        ((if0) this.f4039for.f3405do.f1289do.get(i)).f2089super = charArray;
                    }
                }
                return;
            }
            throw new af0("invalid zip file");
        }
        throw null;
    }
}
