package com.bytedance.pangle.f;

import android.content.pm.Signature;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReference<byte[]> f11321a = new AtomicReference<>();

    public static o a(String str) {
        JarFile jarFile = null;
        try {
            try {
                JarFile jarFile2 = new JarFile(str);
                try {
                    ArrayList arrayList = new ArrayList();
                    JarEntry jarEntry = jarFile2.getJarEntry("AndroidManifest.xml");
                    if (jarEntry != null) {
                        Certificate[][] a2 = a(jarFile2, jarEntry);
                        if (!com.bytedance.pangle.util.c.a(a2)) {
                            Signature[] a3 = d.a(a2);
                            Enumeration<JarEntry> entries = jarFile2.entries();
                            while (entries.hasMoreElements()) {
                                JarEntry nextElement = entries.nextElement();
                                if (!nextElement.isDirectory()) {
                                    String name = nextElement.getName();
                                    if (!name.startsWith("META-INF/") && !name.equals("AndroidManifest.xml")) {
                                        arrayList.add(nextElement);
                                    }
                                }
                            }
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                JarEntry jarEntry2 = (JarEntry) it.next();
                                Certificate[][] a4 = a(jarFile2, jarEntry2);
                                if (!com.bytedance.pangle.util.c.a(a4)) {
                                    if (!o.a(a3, d.a(a4))) {
                                        throw new q(3, "Package " + str + " has mismatched certificates at entry " + jarEntry2.getName());
                                    }
                                } else {
                                    throw new q(4, "Package " + str + " has no certificates at entry " + jarEntry2.getName());
                                }
                            }
                            o oVar = new o(a3, 1, null, null, null);
                            try {
                                jarFile2.close();
                            } catch (Exception unused) {
                            }
                            return oVar;
                        }
                        throw new q(4, "Package " + str + " has no certificates at entry AndroidManifest.xml");
                    }
                    throw new q(1, "Package " + str + " has no manifest");
                } catch (IOException e) {
                    e = e;
                    throw new q(4, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
                } catch (RuntimeException e2) {
                    e = e2;
                    throw new q(4, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
                } catch (GeneralSecurityException e3) {
                    e = e3;
                    throw new q(2, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
                } catch (Throwable th) {
                    th = th;
                    jarFile = jarFile2;
                    if (jarFile != null) {
                        try {
                            jarFile.close();
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
            } catch (RuntimeException e5) {
                e = e5;
            } catch (GeneralSecurityException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0031: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:15:0x0031 */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.security.cert.Certificate[][] a(java.util.jar.JarFile r7, java.util.jar.JarEntry r8) {
        /*
            r0 = 0
            java.io.InputStream r1 = r7.getInputStream(r8)     // Catch: java.lang.Throwable -> L37 java.lang.RuntimeException -> L39 java.io.IOException -> L3b
            java.util.concurrent.atomic.AtomicReference<byte[]> r2 = com.bytedance.pangle.f.a.f11321a     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            java.lang.Object r0 = r2.getAndSet(r0)     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            byte[] r0 = (byte[]) r0     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            if (r0 != 0) goto L13
            r0 = 4096(0x1000, float:5.74E-42)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
        L13:
            int r2 = r0.length     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            r3 = 0
            int r2 = r1.read(r0, r3, r2)     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            r4 = -1
            if (r2 != r4) goto L13
            java.util.concurrent.atomic.AtomicReference<byte[]> r2 = com.bytedance.pangle.f.a.f11321a     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            r2.set(r0)     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            r0 = 1
            java.security.cert.Certificate[][] r0 = new java.security.cert.Certificate[r0]     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            java.security.cert.Certificate[] r2 = r8.getCertificates()     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            r0[r3] = r2     // Catch: java.lang.Throwable -> L30 java.lang.RuntimeException -> L33 java.io.IOException -> L35
            r1.close()     // Catch: java.lang.Exception -> L2d java.lang.RuntimeException -> L2e
        L2d:
            return r0
        L2e:
            r7 = move-exception
            throw r7
        L30:
            r7 = move-exception
            r0 = r1
            goto L60
        L33:
            r0 = move-exception
            goto L3f
        L35:
            r0 = move-exception
            goto L3f
        L37:
            r7 = move-exception
            goto L60
        L39:
            r1 = move-exception
            goto L3c
        L3b:
            r1 = move-exception
        L3c:
            r6 = r1
            r1 = r0
            r0 = r6
        L3f:
            com.bytedance.pangle.f.q r2 = new com.bytedance.pangle.f.q     // Catch: java.lang.Throwable -> L30
            r3 = 5
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L30
            java.lang.String r5 = "Failed reading "
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L30
            java.lang.String r8 = r8.getName()     // Catch: java.lang.Throwable -> L30
            r4.append(r8)     // Catch: java.lang.Throwable -> L30
            java.lang.String r8 = " in "
            r4.append(r8)     // Catch: java.lang.Throwable -> L30
            r4.append(r7)     // Catch: java.lang.Throwable -> L30
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L30
            r2.<init>(r3, r7, r0)     // Catch: java.lang.Throwable -> L30
            throw r2     // Catch: java.lang.Throwable -> L30
        L60:
            if (r0 == 0) goto L68
            r0.close()     // Catch: java.lang.RuntimeException -> L66 java.lang.Exception -> L68
            goto L68
        L66:
            r7 = move-exception
            throw r7
        L68:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.f.a.a(java.util.jar.JarFile, java.util.jar.JarEntry):java.security.cert.Certificate[][]");
    }
}
