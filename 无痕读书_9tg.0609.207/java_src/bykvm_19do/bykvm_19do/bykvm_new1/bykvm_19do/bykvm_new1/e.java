package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
/* compiled from: LogcatDump.java */
/* loaded from: classes8.dex */
public class e {

    /* compiled from: LogcatDump.java */
    /* loaded from: classes8.dex */
    public static class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public InputStream f11083a;
        public List<String> b;

        public a(InputStream inputStream, List<String> list) {
            this.f11083a = inputStream;
            this.b = list;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f11083a));
            int i = 32768;
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else if (!readLine.startsWith("---------")) {
                        i -= readLine.getBytes("UTF-8").length;
                        if (i < 0) {
                            break;
                        }
                        this.b.add(readLine);
                    }
                } catch (IOException unused) {
                } catch (Throwable th) {
                    bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                    throw th;
                }
            }
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
        }
    }

    /* compiled from: LogcatDump.java */
    /* loaded from: classes8.dex */
    public static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public Process f11084a;
        public long b;

        public b(Process process, long j) {
            this.f11084a = process;
            this.b = j;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(this.b);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Process process = this.f11084a;
            if (process != null) {
                process.destroy();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
        if (r4 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> a(int r4, int r5) {
        /*
            java.util.concurrent.CopyOnWriteArrayList r0 = new java.util.concurrent.CopyOnWriteArrayList
            r0.<init>()
            r1 = 4
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = 0
            java.lang.String r3 = "logcat"
            r1[r2] = r3
            r2 = 1
            java.lang.String r3 = "-t"
            r1[r2] = r3
            java.lang.String r4 = java.lang.String.valueOf(r4)
            r2 = 2
            r1[r2] = r4
            java.lang.String r4 = a(r5)
            r5 = 3
            r1[r5] = r4
            r4 = 0
            java.lang.Runtime r5 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L5b
            java.lang.Process r4 = r5.exec(r1)     // Catch: java.lang.Throwable -> L5b
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e$a r5 = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e$a     // Catch: java.lang.Throwable -> L5b
            java.io.InputStream r1 = r4.getInputStream()     // Catch: java.lang.Throwable -> L5b
            r5.<init>(r1, r0)     // Catch: java.lang.Throwable -> L5b
            r5.start()     // Catch: java.lang.Throwable -> L5b
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e$a r5 = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e$a     // Catch: java.lang.Throwable -> L5b
            java.io.InputStream r1 = r4.getErrorStream()     // Catch: java.lang.Throwable -> L5b
            r5.<init>(r1, r0)     // Catch: java.lang.Throwable -> L5b
            r5.start()     // Catch: java.lang.Throwable -> L5b
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e$b r5 = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e$b     // Catch: java.lang.Throwable -> L5b
            r1 = 3000(0xbb8, double:1.482E-320)
            r5.<init>(r4, r1)     // Catch: java.lang.Throwable -> L5b
            r5.start()     // Catch: java.lang.Throwable -> L5b
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L5b
            r3 = 26
            if (r5 < r3) goto L57
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L5b
            r4.waitFor(r1, r5)     // Catch: java.lang.Throwable -> L5b
            goto L61
        L57:
            r4.waitFor()     // Catch: java.lang.Throwable -> L5b
            goto L61
        L5b:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L64
        L61:
            r4.destroy()
        L64:
            return r0
        L65:
            r5 = move-exception
            if (r4 == 0) goto L6b
            r4.destroy()
        L6b:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.e.a(int, int):java.util.List");
    }

    public static String a(int i) {
        return (i < 0 || i >= 6) ? "*:V" : new String[]{"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"}[i];
    }
}
