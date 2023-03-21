package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.uj0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealCall.kt */
/* loaded from: classes7.dex */
public final class xh0 implements zf0 {

    /* renamed from: break  reason: not valid java name */
    public boolean f5602break;

    /* renamed from: case  reason: not valid java name */
    public wh0 f5603case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f5604catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f5605class;

    /* renamed from: const  reason: not valid java name */
    public volatile boolean f5606const;

    /* renamed from: do  reason: not valid java name */
    public final ci0 f5607do;
    @Nullable

    /* renamed from: else  reason: not valid java name */
    public bi0 f5608else;

    /* renamed from: final  reason: not valid java name */
    public volatile vh0 f5609final;

    /* renamed from: for  reason: not valid java name */
    public final Cfor f5610for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f5611goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final og0 f5612if;

    /* renamed from: import  reason: not valid java name */
    public final boolean f5613import;

    /* renamed from: new  reason: not valid java name */
    public final AtomicBoolean f5614new;
    @Nullable

    /* renamed from: super  reason: not valid java name */
    public volatile bi0 f5615super;
    @Nullable

    /* renamed from: this  reason: not valid java name */
    public vh0 f5616this;
    @NotNull

    /* renamed from: throw  reason: not valid java name */
    public final xg0 f5617throw;

    /* renamed from: try  reason: not valid java name */
    public Object f5618try;
    @NotNull

    /* renamed from: while  reason: not valid java name */
    public final zg0 f5619while;

    /* compiled from: RealCall.kt */
    /* renamed from: com.apk.xh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cdo implements Runnable {
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public volatile AtomicInteger f5620do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ xh0 f5621for;

        /* renamed from: if  reason: not valid java name */
        public final ag0 f5622if;

        public Cdo(@NotNull xh0 xh0Var, ag0 ag0Var) {
            nd0.m1875new(ag0Var, "responseCallback");
            this.f5621for = xh0Var;
            this.f5622if = ag0Var;
            this.f5620do = new AtomicInteger(0);
        }

        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final String m3009do() {
            return this.f5621for.f5619while.f6187if.f4689try;
        }

        @Override // java.lang.Runnable
        public void run() {
            xh0 xh0Var;
            StringBuilder m1016super = Cgoto.m1016super("OkHttp ");
            m1016super.append(this.f5621for.f5619while.f6187if.m2589case());
            String sb = m1016super.toString();
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(sb);
            try {
                this.f5621for.f5610for.m1967goto();
                boolean z = false;
                try {
                    try {
                        this.f5622if.mo46for(this.f5621for, this.f5621for.m3003goto());
                        xh0Var = this.f5621for;
                    } catch (IOException e) {
                        e = e;
                        z = true;
                        if (z) {
                            uj0.Cdo cdo = uj0.f4907for;
                            uj0 uj0Var = uj0.f4906do;
                            uj0Var.m2706this("Callback failure for " + xh0.m2996do(this.f5621for), 4, e);
                        } else {
                            this.f5622if.mo47new(this.f5621for, e);
                        }
                        xh0Var = this.f5621for;
                        xh0Var.f5617throw.f5550do.m1631if(this);
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        this.f5621for.cancel();
                        if (!z) {
                            IOException iOException = new IOException("canceled due to " + th);
                            sb0.m2436try(iOException, th);
                            this.f5622if.mo47new(this.f5621for, iOException);
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (Throwable th2) {
                    th = th2;
                }
                xh0Var.f5617throw.f5550do.m1631if(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: RealCall.kt */
    /* renamed from: com.apk.xh0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cfor extends ok0 {
        public Cfor() {
        }

        @Override // com.apk.ok0
        /* renamed from: catch */
        public void mo974catch() {
            xh0.this.cancel();
        }
    }

    /* compiled from: RealCall.kt */
    /* renamed from: com.apk.xh0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif extends WeakReference<xh0> {
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public final Object f5624do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(@NotNull xh0 xh0Var, @Nullable Object obj) {
            super(xh0Var);
            nd0.m1875new(xh0Var, "referent");
            this.f5624do = obj;
        }
    }

    public xh0(@NotNull xg0 xg0Var, @NotNull zg0 zg0Var, boolean z) {
        nd0.m1875new(xg0Var, "client");
        nd0.m1875new(zg0Var, "originalRequest");
        this.f5617throw = xg0Var;
        this.f5619while = zg0Var;
        this.f5613import = z;
        this.f5607do = xg0Var.f5557if.f1565do;
        this.f5612if = xg0Var.f5571try.mo1126do(this);
        Cfor cfor = new Cfor();
        cfor.mo1730else(this.f5617throw.f5570throws, TimeUnit.MILLISECONDS);
        this.f5610for = cfor;
        this.f5614new = new AtomicBoolean();
        this.f5605class = true;
    }

    /* renamed from: do  reason: not valid java name */
    public static final String m2996do(xh0 xh0Var) {
        StringBuilder sb = new StringBuilder();
        sb.append(xh0Var.f5606const ? "canceled " : "");
        sb.append(xh0Var.f5613import ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(xh0Var.f5619while.f6187if.m2589case());
        return sb.toString();
    }

    @Override // com.apk.zf0
    /* renamed from: break  reason: not valid java name */
    public boolean mo2997break() {
        return this.f5606const;
    }

    @Override // com.apk.zf0
    public void cancel() {
        Socket socket;
        if (this.f5606const) {
            return;
        }
        this.f5606const = true;
        vh0 vh0Var = this.f5609final;
        if (vh0Var != null) {
            vh0Var.f5083case.cancel();
        }
        bi0 bi0Var = this.f5615super;
        if (bi0Var != null && (socket = bi0Var.f332if) != null) {
            jh0.m1323else(socket);
        }
        if (this.f5612if == null) {
            throw null;
        }
        nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
    }

    /* renamed from: case  reason: not valid java name */
    public final void m2998case() {
        uj0.Cdo cdo = uj0.f4907for;
        this.f5618try = uj0.f4906do.mo1964else("response.body().close()");
        if (this.f5612if == null) {
            throw null;
        }
        nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
    }

    @Nullable
    /* renamed from: catch  reason: not valid java name */
    public final IOException m2999catch(@Nullable IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.f5605class) {
                this.f5605class = false;
                if (!this.f5602break) {
                    if (!this.f5604catch) {
                        z = true;
                    }
                }
            }
        }
        return z ? m3005new(iOException) : iOException;
    }

    @Nullable
    /* renamed from: class  reason: not valid java name */
    public final Socket m3000class() {
        bi0 bi0Var = this.f5608else;
        nd0.m1874if(bi0Var);
        if (jh0.f2333goto && !Thread.holdsLock(bi0Var)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST hold lock on ");
            m1016super.append(bi0Var);
            throw new AssertionError(m1016super.toString());
        }
        List<Reference<xh0>> list = bi0Var.f334super;
        Iterator<Reference<xh0>> it = list.iterator();
        boolean z = false;
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (nd0.m1870do(it.next().get(), this)) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            list.remove(i);
            this.f5608else = null;
            if (list.isEmpty()) {
                bi0Var.f336throw = System.nanoTime();
                ci0 ci0Var = this.f5607do;
                if (ci0Var != null) {
                    nd0.m1875new(bi0Var, "connection");
                    if (jh0.f2333goto && !Thread.holdsLock(bi0Var)) {
                        StringBuilder m1016super2 = Cgoto.m1016super("Thread ");
                        Thread currentThread2 = Thread.currentThread();
                        nd0.m1872for(currentThread2, "Thread.currentThread()");
                        m1016super2.append(currentThread2.getName());
                        m1016super2.append(" MUST hold lock on ");
                        m1016super2.append(bi0Var);
                        throw new AssertionError(m1016super2.toString());
                    }
                    if (!bi0Var.f335this && ci0Var.f637try != 0) {
                        rh0.m2268new(ci0Var.f635if, ci0Var.f634for, 0L, 2);
                    } else {
                        bi0Var.f335this = true;
                        ci0Var.f636new.remove(bi0Var);
                        if (ci0Var.f636new.isEmpty()) {
                            ci0Var.f635if.m2270do();
                        }
                        z = true;
                    }
                    if (z) {
                        Socket socket = bi0Var.f330for;
                        nd0.m1874if(socket);
                        return socket;
                    }
                } else {
                    throw null;
                }
            }
            return null;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public Object clone() {
        return new xh0(this.f5617throw, this.f5619while, this.f5613import);
    }

    /* renamed from: else  reason: not valid java name */
    public final void m3001else(boolean z) {
        vh0 vh0Var;
        synchronized (this) {
            if (!this.f5605class) {
                throw new IllegalStateException("released".toString());
            }
        }
        if (z && (vh0Var = this.f5609final) != null) {
            vh0Var.f5083case.cancel();
            vh0Var.f5085for.m3006this(vh0Var, true, true, null);
        }
        this.f5616this = null;
    }

    @Override // com.apk.zf0
    @NotNull
    /* renamed from: for  reason: not valid java name */
    public zg0 mo3002for() {
        return this.f5619while;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
    @org.jetbrains.annotations.NotNull
    /* renamed from: goto  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.apk.ch0 m3003goto() throws java.io.IOException {
        /*
            r10 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            com.apk.xg0 r0 = r10.f5617throw
            java.util.List<com.apk.ug0> r0 = r0.f5555for
            com.apk.sb0.m2421new(r2, r0)
            com.apk.oi0 r0 = new com.apk.oi0
            com.apk.xg0 r1 = r10.f5617throw
            r0.<init>(r1)
            r2.add(r0)
            com.apk.gi0 r0 = new com.apk.gi0
            com.apk.xg0 r1 = r10.f5617throw
            com.apk.kg0 r1 = r1.f5544break
            r0.<init>(r1)
            r2.add(r0)
            com.apk.mh0 r0 = new com.apk.mh0
            com.apk.xg0 r1 = r10.f5617throw
            com.apk.xf0 r1 = r1.f5546catch
            r0.<init>(r1)
            r2.add(r0)
            com.apk.th0 r0 = com.apk.th0.f4703do
            r2.add(r0)
            boolean r0 = r10.f5613import
            if (r0 != 0) goto L3e
            com.apk.xg0 r0 = r10.f5617throw
            java.util.List<com.apk.ug0> r0 = r0.f5560new
            com.apk.sb0.m2421new(r2, r0)
        L3e:
            com.apk.hi0 r0 = new com.apk.hi0
            boolean r1 = r10.f5613import
            r0.<init>(r1)
            r2.add(r0)
            com.apk.mi0 r9 = new com.apk.mi0
            r3 = 0
            r4 = 0
            com.apk.zg0 r5 = r10.f5619while
            com.apk.xg0 r0 = r10.f5617throw
            int r6 = r0.f5549default
            int r7 = r0.f5552extends
            int r8 = r0.f5554finally
            r0 = r9
            r1 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = 0
            r1 = 0
            com.apk.zg0 r2 = r10.f5619while     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
            com.apk.ch0 r2 = r9.mo1721do(r2)     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
            boolean r3 = r10.f5606const     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
            if (r3 != 0) goto L6b
            r10.m2999catch(r1)
            return r2
        L6b:
            com.apk.jh0.m1316case(r2)     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
            java.lang.String r3 = "Canceled"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
            throw r2     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
        L76:
            r2 = move-exception
            goto L8b
        L78:
            r0 = move-exception
            java.io.IOException r0 = r10.m2999catch(r0)     // Catch: java.lang.Throwable -> L88
            if (r0 != 0) goto L87
            java.lang.NullPointerException r0 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> L88
            java.lang.String r2 = "null cannot be cast to non-null type kotlin.Throwable"
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L88
            throw r0     // Catch: java.lang.Throwable -> L88
        L87:
            throw r0     // Catch: java.lang.Throwable -> L88
        L88:
            r0 = move-exception
            r2 = r0
            r0 = 1
        L8b:
            if (r0 != 0) goto L90
            r10.m2999catch(r1)
        L90:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.xh0.m3003goto():com.apk.ch0");
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3004if(@NotNull bi0 bi0Var) {
        nd0.m1875new(bi0Var, "connection");
        if (jh0.f2333goto && !Thread.holdsLock(bi0Var)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST hold lock on ");
            m1016super.append(bi0Var);
            throw new AssertionError(m1016super.toString());
        }
        if (this.f5608else == null) {
            this.f5608else = bi0Var;
            bi0Var.f334super.add(new Cif(this, this.f5618try));
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: new  reason: not valid java name */
    public final <E extends IOException> E m3005new(E e) {
        InterruptedIOException interruptedIOException;
        Socket m3000class;
        if (jh0.f2333goto && Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST NOT hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        bi0 bi0Var = this.f5608else;
        if (bi0Var != null) {
            if (jh0.f2333goto && Thread.holdsLock(bi0Var)) {
                StringBuilder m1016super2 = Cgoto.m1016super("Thread ");
                Thread currentThread2 = Thread.currentThread();
                nd0.m1872for(currentThread2, "Thread.currentThread()");
                m1016super2.append(currentThread2.getName());
                m1016super2.append(" MUST NOT hold lock on ");
                m1016super2.append(bi0Var);
                throw new AssertionError(m1016super2.toString());
            }
            synchronized (bi0Var) {
                m3000class = m3000class();
            }
            if (this.f5608else == null) {
                if (m3000class != null) {
                    jh0.m1323else(m3000class);
                }
                if (this.f5612if == null) {
                    throw null;
                }
                nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
                nd0.m1875new(bi0Var, "connection");
            } else {
                if (!(m3000class == null)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }
        if (!this.f5611goto && this.f5610for.m1968this()) {
            InterruptedIOException interruptedIOException2 = new InterruptedIOException("timeout");
            interruptedIOException = interruptedIOException2;
            if (e != null) {
                interruptedIOException2.initCause(e);
                interruptedIOException = interruptedIOException2;
            }
        } else {
            interruptedIOException = e;
        }
        if (e != null) {
            og0 og0Var = this.f5612if;
            nd0.m1874if(interruptedIOException);
            if (og0Var == null) {
                throw null;
            }
            nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
            nd0.m1875new(interruptedIOException, "ioe");
        } else if (this.f5612if == null) {
            throw null;
        } else {
            nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
        }
        return interruptedIOException;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0023 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:8:0x0014, B:17:0x0023, B:19:0x0027, B:20:0x0029, B:22:0x002d, B:26:0x0034, B:28:0x0038, B:30:0x003c, B:14:0x001d), top: B:52:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0027 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:8:0x0014, B:17:0x0023, B:19:0x0027, B:20:0x0029, B:22:0x002d, B:26:0x0034, B:28:0x0038, B:30:0x003c, B:14:0x001d), top: B:52:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0040  */
    /* renamed from: this  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <E extends java.io.IOException> E m3006this(@org.jetbrains.annotations.NotNull com.apk.vh0 r4, boolean r5, boolean r6, E r7) {
        /*
            r3 = this;
            java.lang.String r0 = "exchange"
            com.apk.nd0.m1875new(r4, r0)
            com.apk.vh0 r0 = r3.f5609final
            boolean r4 = com.apk.nd0.m1870do(r4, r0)
            r0 = 1
            r4 = r4 ^ r0
            if (r4 == 0) goto L10
            return r7
        L10:
            monitor-enter(r3)
            r4 = 0
            if (r5 == 0) goto L1b
            boolean r1 = r3.f5602break     // Catch: java.lang.Throwable -> L19
            if (r1 != 0) goto L21
            goto L1b
        L19:
            r4 = move-exception
            goto L45
        L1b:
            if (r6 == 0) goto L47
            boolean r1 = r3.f5604catch     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L47
        L21:
            if (r5 == 0) goto L25
            r3.f5602break = r4     // Catch: java.lang.Throwable -> L19
        L25:
            if (r6 == 0) goto L29
            r3.f5604catch = r4     // Catch: java.lang.Throwable -> L19
        L29:
            boolean r5 = r3.f5602break     // Catch: java.lang.Throwable -> L19
            if (r5 != 0) goto L33
            boolean r5 = r3.f5604catch     // Catch: java.lang.Throwable -> L19
            if (r5 != 0) goto L33
            r5 = 1
            goto L34
        L33:
            r5 = 0
        L34:
            boolean r6 = r3.f5602break     // Catch: java.lang.Throwable -> L19
            if (r6 != 0) goto L41
            boolean r6 = r3.f5604catch     // Catch: java.lang.Throwable -> L19
            if (r6 != 0) goto L41
            boolean r6 = r3.f5605class     // Catch: java.lang.Throwable -> L19
            if (r6 != 0) goto L41
            r4 = 1
        L41:
            r2 = r5
            r5 = r4
            r4 = r2
            goto L48
        L45:
            monitor-exit(r3)
            throw r4
        L47:
            r5 = 0
        L48:
            monitor-exit(r3)
            if (r4 == 0) goto L5d
            r4 = 0
            r3.f5609final = r4
            com.apk.bi0 r4 = r3.f5608else
            if (r4 == 0) goto L5d
            monitor-enter(r4)
            int r6 = r4.f326class     // Catch: java.lang.Throwable -> L5a
            int r6 = r6 + r0
            r4.f326class = r6     // Catch: java.lang.Throwable -> L5a
            monitor-exit(r4)
            goto L5d
        L5a:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        L5d:
            if (r5 == 0) goto L64
            java.io.IOException r4 = r3.m3005new(r7)
            return r4
        L64:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.xh0.m3006this(com.apk.vh0, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    @Override // com.apk.zf0
    @NotNull
    /* renamed from: throw  reason: not valid java name */
    public ch0 mo3007throw() {
        if (this.f5614new.compareAndSet(false, true)) {
            this.f5610for.m1967goto();
            m2998case();
            try {
                lg0 lg0Var = this.f5617throw.f5550do;
                synchronized (lg0Var) {
                    nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
                    lg0Var.f2799case.add(this);
                }
                ch0 m3003goto = m3003goto();
                lg0 lg0Var2 = this.f5617throw.f5550do;
                if (lg0Var2 != null) {
                    nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
                    lg0Var2.m1629do(lg0Var2.f2799case, this);
                    return m3003goto;
                }
                throw null;
            } catch (Throwable th) {
                lg0 lg0Var3 = this.f5617throw.f5550do;
                if (lg0Var3 != null) {
                    nd0.m1875new(this, NotificationCompat.CATEGORY_CALL);
                    lg0Var3.m1629do(lg0Var3.f2799case, this);
                    throw th;
                }
                throw null;
            }
        }
        throw new IllegalStateException("Already Executed".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
        r7 = r4;
     */
    @Override // com.apk.zf0
    /* renamed from: try  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo3008try(@org.jetbrains.annotations.NotNull com.apk.ag0 r7) {
        /*
            r6 = this;
            java.lang.String r0 = "responseCallback"
            com.apk.nd0.m1875new(r7, r0)
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.f5614new
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L82
            r6.m2998case()
            com.apk.xg0 r0 = r6.f5617throw
            com.apk.lg0 r0 = r0.f5550do
            com.apk.xh0$do r1 = new com.apk.xh0$do
            r1.<init>(r6, r7)
            r7 = 0
            if (r0 == 0) goto L81
            java.lang.String r2 = "call"
            com.apk.nd0.m1875new(r1, r2)
            monitor-enter(r0)
            java.util.ArrayDeque<com.apk.xh0$do> r2 = r0.f2803new     // Catch: java.lang.Throwable -> L7e
            r2.add(r1)     // Catch: java.lang.Throwable -> L7e
            com.apk.xh0 r2 = r1.f5621for     // Catch: java.lang.Throwable -> L7e
            boolean r2 = r2.f5613import     // Catch: java.lang.Throwable -> L7e
            if (r2 != 0) goto L79
            java.lang.String r2 = r1.m3009do()     // Catch: java.lang.Throwable -> L7e
            java.util.ArrayDeque<com.apk.xh0$do> r3 = r0.f2804try     // Catch: java.lang.Throwable -> L7e
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L7e
        L39:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L7e
            if (r4 == 0) goto L51
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L7e
            com.apk.xh0$do r4 = (com.apk.xh0.Cdo) r4     // Catch: java.lang.Throwable -> L7e
            java.lang.String r5 = r4.m3009do()     // Catch: java.lang.Throwable -> L7e
            boolean r5 = com.apk.nd0.m1870do(r5, r2)     // Catch: java.lang.Throwable -> L7e
            if (r5 == 0) goto L39
        L4f:
            r7 = r4
            goto L6e
        L51:
            java.util.ArrayDeque<com.apk.xh0$do> r3 = r0.f2803new     // Catch: java.lang.Throwable -> L7e
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L7e
        L57:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L7e
            if (r4 == 0) goto L6e
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L7e
            com.apk.xh0$do r4 = (com.apk.xh0.Cdo) r4     // Catch: java.lang.Throwable -> L7e
            java.lang.String r5 = r4.m3009do()     // Catch: java.lang.Throwable -> L7e
            boolean r5 = com.apk.nd0.m1870do(r5, r2)     // Catch: java.lang.Throwable -> L7e
            if (r5 == 0) goto L57
            goto L4f
        L6e:
            if (r7 == 0) goto L79
            java.lang.String r2 = "other"
            com.apk.nd0.m1875new(r7, r2)     // Catch: java.lang.Throwable -> L7e
            java.util.concurrent.atomic.AtomicInteger r7 = r7.f5620do     // Catch: java.lang.Throwable -> L7e
            r1.f5620do = r7     // Catch: java.lang.Throwable -> L7e
        L79:
            monitor-exit(r0)
            r0.m1630for()
            return
        L7e:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        L81:
            throw r7
        L82:
            java.lang.String r7 = "Already Executed"
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r7 = r7.toString()
            r0.<init>(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.xh0.mo3008try(com.apk.ag0):void");
    }
}
