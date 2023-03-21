package com.apk;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: DiskLruCache.java */
/* loaded from: classes8.dex */
public final class si implements Closeable {

    /* renamed from: case  reason: not valid java name */
    public long f4367case;

    /* renamed from: catch  reason: not valid java name */
    public int f4368catch;

    /* renamed from: do  reason: not valid java name */
    public final File f4371do;

    /* renamed from: else  reason: not valid java name */
    public final int f4372else;

    /* renamed from: for  reason: not valid java name */
    public final File f4374for;

    /* renamed from: if  reason: not valid java name */
    public final File f4376if;

    /* renamed from: new  reason: not valid java name */
    public final File f4377new;

    /* renamed from: this  reason: not valid java name */
    public Writer f4378this;

    /* renamed from: try  reason: not valid java name */
    public final int f4379try;

    /* renamed from: goto  reason: not valid java name */
    public long f4375goto = 0;

    /* renamed from: break  reason: not valid java name */
    public final LinkedHashMap<String, Cnew> f4366break = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: class  reason: not valid java name */
    public long f4369class = 0;

    /* renamed from: const  reason: not valid java name */
    public final ThreadPoolExecutor f4370const = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new Cif(null));

    /* renamed from: final  reason: not valid java name */
    public final Callable<Void> f4373final = new Cdo();

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.apk.si$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Callable<Void> {
        public Cdo() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (si.this) {
                if (si.this.f4378this == null) {
                    return null;
                }
                si.this.m2487protected();
                if (si.this.m2485finally()) {
                    si.this.m2488strictfp();
                    si.this.f4368catch = 0;
                }
                return null;
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.apk.si$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public final class Cfor {

        /* renamed from: do  reason: not valid java name */
        public final Cnew f4381do;

        /* renamed from: for  reason: not valid java name */
        public boolean f4382for;

        /* renamed from: if  reason: not valid java name */
        public final boolean[] f4383if;

        public Cfor(Cnew cnew, Cdo cdo) {
            this.f4381do = cnew;
            this.f4383if = cnew.f4392try ? null : new boolean[si.this.f4372else];
        }

        /* renamed from: do  reason: not valid java name */
        public void m2492do() throws IOException {
            si.m2478for(si.this, this, false);
        }

        /* renamed from: if  reason: not valid java name */
        public File m2493if(int i) throws IOException {
            File file;
            synchronized (si.this) {
                if (this.f4381do.f4385case == this) {
                    if (!this.f4381do.f4392try) {
                        this.f4383if[i] = true;
                    }
                    file = this.f4381do.f4391new[i];
                    if (!si.this.f4371do.exists()) {
                        si.this.f4371do.mkdirs();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return file;
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.apk.si$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements ThreadFactory {
        public Cif(Cdo cdo) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.apk.si$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public final class Cnew {

        /* renamed from: case  reason: not valid java name */
        public Cfor f4385case;

        /* renamed from: do  reason: not valid java name */
        public final String f4386do;

        /* renamed from: else  reason: not valid java name */
        public long f4387else;

        /* renamed from: for  reason: not valid java name */
        public File[] f4388for;

        /* renamed from: if  reason: not valid java name */
        public final long[] f4390if;

        /* renamed from: new  reason: not valid java name */
        public File[] f4391new;

        /* renamed from: try  reason: not valid java name */
        public boolean f4392try;

        public Cnew(String str, Cdo cdo) {
            this.f4386do = str;
            int i = si.this.f4372else;
            this.f4390if = new long[i];
            this.f4388for = new File[i];
            this.f4391new = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < si.this.f4372else; i2++) {
                sb.append(i2);
                this.f4388for[i2] = new File(si.this.f4371do, sb.toString());
                sb.append(".tmp");
                this.f4391new[i2] = new File(si.this.f4371do, sb.toString());
                sb.setLength(length);
            }
        }

        /* renamed from: do  reason: not valid java name */
        public String m2494do() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f4390if) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: if  reason: not valid java name */
        public final IOException m2495if(String[] strArr) throws IOException {
            StringBuilder m1016super = Cgoto.m1016super("unexpected journal line: ");
            m1016super.append(Arrays.toString(strArr));
            throw new IOException(m1016super.toString());
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.apk.si$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public final class Ctry {

        /* renamed from: do  reason: not valid java name */
        public final File[] f4393do;

        public Ctry(si siVar, String str, long j, File[] fileArr, long[] jArr, Cdo cdo) {
            this.f4393do = fileArr;
        }
    }

    public si(File file, int i, int i2, long j) {
        this.f4371do = file;
        this.f4379try = i;
        this.f4376if = new File(file, "journal");
        this.f4374for = new File(file, "journal.tmp");
        this.f4377new = new File(file, "journal.bkp");
        this.f4372else = i2;
        this.f4367case = j;
    }

    @TargetApi(26)
    /* renamed from: break  reason: not valid java name */
    public static void m2476break(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @TargetApi(26)
    /* renamed from: default  reason: not valid java name */
    public static void m2477default(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2478for(si siVar, Cfor cfor, boolean z) throws IOException {
        synchronized (siVar) {
            Cnew cnew = cfor.f4381do;
            if (cnew.f4385case == cfor) {
                if (z && !cnew.f4392try) {
                    for (int i = 0; i < siVar.f4372else; i++) {
                        if (cfor.f4383if[i]) {
                            if (!cnew.f4391new[i].exists()) {
                                cfor.m2492do();
                                return;
                            }
                        } else {
                            cfor.m2492do();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                        }
                    }
                }
                for (int i2 = 0; i2 < siVar.f4372else; i2++) {
                    File file = cnew.f4391new[i2];
                    if (z) {
                        if (file.exists()) {
                            File file2 = cnew.f4388for[i2];
                            file.renameTo(file2);
                            long j = cnew.f4390if[i2];
                            long length = file2.length();
                            cnew.f4390if[i2] = length;
                            siVar.f4375goto = (siVar.f4375goto - j) + length;
                        }
                    } else {
                        m2481throw(file);
                    }
                }
                siVar.f4368catch++;
                cnew.f4385case = null;
                if (cnew.f4392try | z) {
                    cnew.f4392try = true;
                    siVar.f4378this.append((CharSequence) "CLEAN");
                    siVar.f4378this.append(' ');
                    siVar.f4378this.append((CharSequence) cnew.f4386do);
                    siVar.f4378this.append((CharSequence) cnew.m2494do());
                    siVar.f4378this.append('\n');
                    if (z) {
                        long j2 = siVar.f4369class;
                        siVar.f4369class = 1 + j2;
                        cnew.f4387else = j2;
                    }
                } else {
                    siVar.f4366break.remove(cnew.f4386do);
                    siVar.f4378this.append((CharSequence) "REMOVE");
                    siVar.f4378this.append(' ');
                    siVar.f4378this.append((CharSequence) cnew.f4386do);
                    siVar.f4378this.append('\n');
                }
                m2477default(siVar.f4378this);
                if (siVar.f4375goto > siVar.f4367case || siVar.m2485finally()) {
                    siVar.f4370const.submit(siVar.f4373final);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: interface  reason: not valid java name */
    public static void m2479interface(File file, File file2, boolean z) throws IOException {
        if (z) {
            m2481throw(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: package  reason: not valid java name */
    public static si m2480package(File file, int i, int i2, long j) throws IOException {
        if (j > 0) {
            if (i2 > 0) {
                File file2 = new File(file, "journal.bkp");
                if (file2.exists()) {
                    File file3 = new File(file, "journal");
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        m2479interface(file2, file3, false);
                    }
                }
                si siVar = new si(file, i, i2, j);
                if (siVar.f4376if.exists()) {
                    try {
                        siVar.m2482abstract();
                        siVar.m2486private();
                        return siVar;
                    } catch (IOException e) {
                        PrintStream printStream = System.out;
                        printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                        siVar.delete();
                    }
                }
                file.mkdirs();
                si siVar2 = new si(file, i, i2, j);
                siVar2.m2488strictfp();
                return siVar2;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: throw  reason: not valid java name */
    public static void m2481throw(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public final void m2482abstract() throws IOException {
        ti tiVar = new ti(new FileInputStream(this.f4376if), ui.f4896do);
        try {
            String m2605try = tiVar.m2605try();
            String m2605try2 = tiVar.m2605try();
            String m2605try3 = tiVar.m2605try();
            String m2605try4 = tiVar.m2605try();
            String m2605try5 = tiVar.m2605try();
            if (!"libcore.io.DiskLruCache".equals(m2605try) || !"1".equals(m2605try2) || !Integer.toString(this.f4379try).equals(m2605try3) || !Integer.toString(this.f4372else).equals(m2605try4) || !"".equals(m2605try5)) {
                throw new IOException("unexpected journal header: [" + m2605try + ", " + m2605try2 + ", " + m2605try4 + ", " + m2605try5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m2483continue(tiVar.m2605try());
                    i++;
                } catch (EOFException unused) {
                    this.f4368catch = i - this.f4366break.size();
                    if (tiVar.f4711try == -1) {
                        m2488strictfp();
                    } else {
                        this.f4378this = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4376if, true), ui.f4896do));
                    }
                    try {
                        tiVar.close();
                        return;
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                tiVar.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f4378this == null) {
            return;
        }
        Iterator it = new ArrayList(this.f4366break.values()).iterator();
        while (it.hasNext()) {
            Cnew cnew = (Cnew) it.next();
            if (cnew.f4385case != null) {
                cnew.f4385case.m2492do();
            }
        }
        m2487protected();
        m2476break(this.f4378this);
        this.f4378this = null;
    }

    /* renamed from: continue  reason: not valid java name */
    public final void m2483continue(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                substring = str.substring(i);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.f4366break.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf2);
            }
            Cnew cnew = this.f4366break.get(substring);
            if (cnew == null) {
                cnew = new Cnew(substring, null);
                this.f4366break.put(substring, cnew);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                cnew.f4392try = true;
                cnew.f4385case = null;
                if (split.length == si.this.f4372else) {
                    for (int i2 = 0; i2 < split.length; i2++) {
                        try {
                            cnew.f4390if[i2] = Long.parseLong(split[i2]);
                        } catch (NumberFormatException unused) {
                            cnew.m2495if(split);
                            throw null;
                        }
                    }
                    return;
                }
                cnew.m2495if(split);
                throw null;
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                cnew.f4385case = new Cfor(cnew, null);
                return;
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException(Cgoto.m989case("unexpected journal line: ", str));
            } else {
                return;
            }
        }
        throw new IOException(Cgoto.m989case("unexpected journal line: ", str));
    }

    public void delete() throws IOException {
        close();
        ui.m2704do(this.f4371do);
    }

    /* renamed from: extends  reason: not valid java name */
    public synchronized Ctry m2484extends(String str) throws IOException {
        m2490try();
        Cnew cnew = this.f4366break.get(str);
        if (cnew == null) {
            return null;
        }
        if (cnew.f4392try) {
            for (File file : cnew.f4388for) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f4368catch++;
            this.f4378this.append((CharSequence) "READ");
            this.f4378this.append(' ');
            this.f4378this.append((CharSequence) str);
            this.f4378this.append('\n');
            if (m2485finally()) {
                this.f4370const.submit(this.f4373final);
            }
            return new Ctry(this, str, cnew.f4387else, cnew.f4388for, cnew.f4390if, null);
        }
        return null;
    }

    /* renamed from: finally  reason: not valid java name */
    public final boolean m2485finally() {
        int i = this.f4368catch;
        return i >= 2000 && i >= this.f4366break.size();
    }

    /* renamed from: private  reason: not valid java name */
    public final void m2486private() throws IOException {
        m2481throw(this.f4374for);
        Iterator<Cnew> it = this.f4366break.values().iterator();
        while (it.hasNext()) {
            Cnew next = it.next();
            int i = 0;
            if (next.f4385case == null) {
                while (i < this.f4372else) {
                    this.f4375goto += next.f4390if[i];
                    i++;
                }
            } else {
                next.f4385case = null;
                while (i < this.f4372else) {
                    m2481throw(next.f4388for[i]);
                    m2481throw(next.f4391new[i]);
                    i++;
                }
                it.remove();
            }
        }
    }

    /* renamed from: protected  reason: not valid java name */
    public final void m2487protected() throws IOException {
        while (this.f4375goto > this.f4367case) {
            m2491volatile(this.f4366break.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: strictfp  reason: not valid java name */
    public final synchronized void m2488strictfp() throws IOException {
        if (this.f4378this != null) {
            m2476break(this.f4378this);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4374for), ui.f4896do));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.f4379try));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.f4372else));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (Cnew cnew : this.f4366break.values()) {
            if (cnew.f4385case != null) {
                bufferedWriter.write("DIRTY " + cnew.f4386do + '\n');
            } else {
                bufferedWriter.write("CLEAN " + cnew.f4386do + cnew.m2494do() + '\n');
            }
        }
        m2476break(bufferedWriter);
        if (this.f4376if.exists()) {
            m2479interface(this.f4376if, this.f4377new, true);
        }
        m2479interface(this.f4374for, this.f4376if, false);
        this.f4377new.delete();
        this.f4378this = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4376if, true), ui.f4896do));
    }

    /* renamed from: throws  reason: not valid java name */
    public Cfor m2489throws(String str) throws IOException {
        synchronized (this) {
            m2490try();
            Cnew cnew = this.f4366break.get(str);
            if (cnew == null) {
                cnew = new Cnew(str, null);
                this.f4366break.put(str, cnew);
            } else if (cnew.f4385case != null) {
                return null;
            }
            Cfor cfor = new Cfor(cnew, null);
            cnew.f4385case = cfor;
            this.f4378this.append((CharSequence) "DIRTY");
            this.f4378this.append(' ');
            this.f4378this.append((CharSequence) str);
            this.f4378this.append('\n');
            m2477default(this.f4378this);
            return cfor;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2490try() {
        if (this.f4378this == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: volatile  reason: not valid java name */
    public synchronized boolean m2491volatile(String str) throws IOException {
        m2490try();
        Cnew cnew = this.f4366break.get(str);
        if (cnew != null && cnew.f4385case == null) {
            for (int i = 0; i < this.f4372else; i++) {
                File file = cnew.f4388for[i];
                if (file.exists() && !file.delete()) {
                    throw new IOException("failed to delete " + file);
                }
                this.f4375goto -= cnew.f4390if[i];
                cnew.f4390if[i] = 0;
            }
            this.f4368catch++;
            this.f4378this.append((CharSequence) "REMOVE");
            this.f4378this.append(' ');
            this.f4378this.append((CharSequence) str);
            this.f4378this.append('\n');
            this.f4366break.remove(str);
            if (m2485finally()) {
                this.f4370const.submit(this.f4373final);
            }
            return true;
        }
        return false;
    }
}
