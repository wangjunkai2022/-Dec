package com.apk;

import com.bytedance.msdk.api.reward.RewardItem;
import com.google.android.material.slider.BasicLabelFormatter;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Http2Stream.kt */
/* loaded from: classes7.dex */
public final class gj0 {
    @NotNull

    /* renamed from: break  reason: not valid java name */
    public final Cfor f1576break;

    /* renamed from: case  reason: not valid java name */
    public boolean f1577case;
    @Nullable

    /* renamed from: catch  reason: not valid java name */
    public ti0 f1578catch;
    @Nullable

    /* renamed from: class  reason: not valid java name */
    public IOException f1579class;

    /* renamed from: const  reason: not valid java name */
    public final int f1580const;

    /* renamed from: do  reason: not valid java name */
    public long f1581do;
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public final Cif f1582else;
    @NotNull

    /* renamed from: final  reason: not valid java name */
    public final xi0 f1583final;

    /* renamed from: for  reason: not valid java name */
    public long f1584for;
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public final Cdo f1585goto;

    /* renamed from: if  reason: not valid java name */
    public long f1586if;

    /* renamed from: new  reason: not valid java name */
    public long f1587new;
    @NotNull

    /* renamed from: this  reason: not valid java name */
    public final Cfor f1588this;

    /* renamed from: try  reason: not valid java name */
    public final ArrayDeque<sg0> f1589try;

    /* compiled from: Http2Stream.kt */
    /* renamed from: com.apk.gj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cdo implements jl0 {

        /* renamed from: do  reason: not valid java name */
        public final rk0 f1590do = new rk0();

        /* renamed from: for  reason: not valid java name */
        public boolean f1591for;

        /* renamed from: if  reason: not valid java name */
        public boolean f1592if;

        public Cdo(boolean z) {
            this.f1591for = z;
        }

        @Override // com.apk.jl0
        /* renamed from: class */
        public void mo477class(@NotNull rk0 rk0Var, long j) throws IOException {
            nd0.m1875new(rk0Var, "source");
            gj0 gj0Var = gj0.this;
            if (jh0.f2333goto && Thread.holdsLock(gj0Var)) {
                StringBuilder m1016super = Cgoto.m1016super("Thread ");
                Thread currentThread = Thread.currentThread();
                nd0.m1872for(currentThread, "Thread.currentThread()");
                m1016super.append(currentThread.getName());
                m1016super.append(" MUST NOT hold lock on ");
                m1016super.append(gj0Var);
                throw new AssertionError(m1016super.toString());
            }
            this.f1590do.mo477class(rk0Var, j);
            while (this.f1590do.f4108if >= 16384) {
                m972for(false);
            }
        }

        @Override // com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            gj0 gj0Var = gj0.this;
            if (jh0.f2333goto && Thread.holdsLock(gj0Var)) {
                StringBuilder m1016super = Cgoto.m1016super("Thread ");
                Thread currentThread = Thread.currentThread();
                nd0.m1872for(currentThread, "Thread.currentThread()");
                m1016super.append(currentThread.getName());
                m1016super.append(" MUST NOT hold lock on ");
                m1016super.append(gj0Var);
                throw new AssertionError(m1016super.toString());
            }
            synchronized (gj0.this) {
                if (this.f1592if) {
                    return;
                }
                boolean z = gj0.this.m961case() == null;
                if (!gj0.this.f1585goto.f1591for) {
                    if (this.f1590do.f4108if > 0) {
                        while (this.f1590do.f4108if > 0) {
                            m972for(true);
                        }
                    } else if (z) {
                        gj0 gj0Var2 = gj0.this;
                        gj0Var2.f1583final.m3019extends(gj0Var2.f1580const, true, null, 0L);
                    }
                }
                synchronized (gj0.this) {
                    this.f1592if = true;
                }
                gj0.this.f1583final.f5639extends.flush();
                gj0.this.m964do();
            }
        }

        @Override // com.apk.jl0, java.io.Flushable
        public void flush() throws IOException {
            gj0 gj0Var = gj0.this;
            if (jh0.f2333goto && Thread.holdsLock(gj0Var)) {
                StringBuilder m1016super = Cgoto.m1016super("Thread ");
                Thread currentThread = Thread.currentThread();
                nd0.m1872for(currentThread, "Thread.currentThread()");
                m1016super.append(currentThread.getName());
                m1016super.append(" MUST NOT hold lock on ");
                m1016super.append(gj0Var);
                throw new AssertionError(m1016super.toString());
            }
            synchronized (gj0.this) {
                gj0.this.m968if();
            }
            while (this.f1590do.f4108if > 0) {
                m972for(false);
                gj0.this.f1583final.f5639extends.flush();
            }
        }

        /* renamed from: for  reason: not valid java name */
        public final void m972for(boolean z) throws IOException {
            long min;
            boolean z2;
            synchronized (gj0.this) {
                gj0.this.f1576break.m1967goto();
                while (gj0.this.f1584for >= gj0.this.f1587new && !this.f1591for && !this.f1592if && gj0.this.m961case() == null) {
                    gj0.this.m963class();
                }
                gj0.this.f1576break.m975class();
                gj0.this.m968if();
                min = Math.min(gj0.this.f1587new - gj0.this.f1584for, this.f1590do.f4108if);
                gj0.this.f1584for += min;
                if (z) {
                    z2 = min == this.f1590do.f4108if;
                }
            }
            gj0.this.f1576break.m1967goto();
            try {
                gj0.this.f1583final.m3019extends(gj0.this.f1580const, z2, this.f1590do, min);
            } finally {
                gj0.this.f1576break.m975class();
            }
        }

        @Override // com.apk.jl0
        @NotNull
        /* renamed from: if */
        public ml0 mo478if() {
            return gj0.this.f1576break;
        }
    }

    /* compiled from: Http2Stream.kt */
    /* renamed from: com.apk.gj0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cfor extends ok0 {
        public Cfor() {
        }

        @Override // com.apk.ok0
        @NotNull
        /* renamed from: break  reason: not valid java name */
        public IOException mo973break(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.apk.ok0
        /* renamed from: catch  reason: not valid java name */
        public void mo974catch() {
            gj0.this.m971try(ti0.CANCEL);
            xi0 xi0Var = gj0.this.f1583final;
            synchronized (xi0Var) {
                if (xi0Var.f5655throw < xi0Var.f5652super) {
                    return;
                }
                xi0Var.f5652super++;
                xi0Var.f5645import = System.nanoTime() + ((long) BasicLabelFormatter.BILLION);
                rh0 rh0Var = xi0Var.f5654this;
                String m991class = Cgoto.m991class(new StringBuilder(), xi0Var.f5647new, " ping");
                rh0Var.m2271for(new dj0(m991class, true, m991class, true, xi0Var), 0L);
            }
        }

        /* renamed from: class  reason: not valid java name */
        public final void m975class() throws IOException {
            if (m1968this()) {
                throw new SocketTimeoutException("timeout");
            }
        }
    }

    /* compiled from: Http2Stream.kt */
    /* renamed from: com.apk.gj0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cif implements ll0 {

        /* renamed from: for  reason: not valid java name */
        public boolean f1597for;

        /* renamed from: new  reason: not valid java name */
        public final long f1599new;

        /* renamed from: try  reason: not valid java name */
        public boolean f1600try;
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public final rk0 f1596do = new rk0();
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public final rk0 f1598if = new rk0();

        public Cif(long j, boolean z) {
            this.f1599new = j;
            this.f1600try = z;
        }

        @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long j;
            synchronized (gj0.this) {
                this.f1597for = true;
                j = this.f1598if.f4108if;
                rk0 rk0Var = this.f1598if;
                rk0Var.skip(rk0Var.f4108if);
                gj0 gj0Var = gj0.this;
                if (gj0Var != null) {
                    gj0Var.notifyAll();
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                }
            }
            if (j > 0) {
                m976for(j);
            }
            gj0.this.m964do();
        }

        /* renamed from: for  reason: not valid java name */
        public final void m976for(long j) {
            gj0 gj0Var = gj0.this;
            if (jh0.f2333goto && Thread.holdsLock(gj0Var)) {
                StringBuilder m1016super = Cgoto.m1016super("Thread ");
                Thread currentThread = Thread.currentThread();
                nd0.m1872for(currentThread, "Thread.currentThread()");
                m1016super.append(currentThread.getName());
                m1016super.append(" MUST NOT hold lock on ");
                m1016super.append(gj0Var);
                throw new AssertionError(m1016super.toString());
            }
            gj0.this.f1583final.m3018default(j);
        }

        @Override // com.apk.ll0
        @NotNull
        /* renamed from: if */
        public ml0 mo71if() {
            return gj0.this.f1588this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x00c1, code lost:
            throw new java.io.IOException("stream closed");
         */
        @Override // com.apk.ll0
        /* renamed from: import */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public long mo72import(@org.jetbrains.annotations.NotNull com.apk.rk0 r12, long r13) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 222
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.gj0.Cif.mo72import(com.apk.rk0, long):long");
        }
    }

    public gj0(int i, @NotNull xi0 xi0Var, boolean z, boolean z2, @Nullable sg0 sg0Var) {
        nd0.m1875new(xi0Var, "connection");
        this.f1580const = i;
        this.f1583final = xi0Var;
        this.f1587new = xi0Var.f5649public.m1636do();
        this.f1589try = new ArrayDeque<>();
        this.f1582else = new Cif(this.f1583final.f5646native.m1636do(), z2);
        this.f1585goto = new Cdo(z);
        this.f1588this = new Cfor();
        this.f1576break = new Cfor();
        if (sg0Var != null) {
            if (!m967goto()) {
                this.f1589try.add(sg0Var);
                return;
            }
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
        } else if (!m967goto()) {
            throw new IllegalStateException("remotely-initiated streams should have headers".toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0051 A[Catch: all -> 0x0067, TryCatch #0 {, blocks: (B:10:0x0039, B:14:0x0041, B:21:0x0051, B:22:0x0055, B:18:0x0047, B:19:0x0048), top: B:30:0x0039 }] */
    /* renamed from: break  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m960break(@org.jetbrains.annotations.NotNull com.apk.sg0 r3, boolean r4) {
        /*
            r2 = this;
            java.lang.String r0 = "headers"
            com.apk.nd0.m1875new(r3, r0)
            boolean r0 = com.apk.jh0.f2333goto
            if (r0 == 0) goto L38
            boolean r0 = java.lang.Thread.holdsLock(r2)
            if (r0 != 0) goto L10
            goto L38
        L10:
            java.lang.AssertionError r3 = new java.lang.AssertionError
            java.lang.String r4 = "Thread "
            java.lang.StringBuilder r4 = com.apk.Cgoto.m1016super(r4)
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.String r1 = "Thread.currentThread()"
            com.apk.nd0.m1872for(r0, r1)
            java.lang.String r0 = r0.getName()
            r4.append(r0)
            java.lang.String r0 = " MUST NOT hold lock on "
            r4.append(r0)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L38:
            monitor-enter(r2)
            boolean r0 = r2.f1577case     // Catch: java.lang.Throwable -> L67
            r1 = 1
            if (r0 == 0) goto L48
            if (r4 != 0) goto L41
            goto L48
        L41:
            com.apk.gj0$if r3 = r2.f1582else     // Catch: java.lang.Throwable -> L67
            if (r3 == 0) goto L46
            goto L4f
        L46:
            r3 = 0
            throw r3     // Catch: java.lang.Throwable -> L67
        L48:
            r2.f1577case = r1     // Catch: java.lang.Throwable -> L67
            java.util.ArrayDeque<com.apk.sg0> r0 = r2.f1589try     // Catch: java.lang.Throwable -> L67
            r0.add(r3)     // Catch: java.lang.Throwable -> L67
        L4f:
            if (r4 == 0) goto L55
            com.apk.gj0$if r3 = r2.f1582else     // Catch: java.lang.Throwable -> L67
            r3.f1600try = r1     // Catch: java.lang.Throwable -> L67
        L55:
            boolean r3 = r2.m970this()     // Catch: java.lang.Throwable -> L67
            r2.notifyAll()     // Catch: java.lang.Throwable -> L67
            monitor-exit(r2)
            if (r3 != 0) goto L66
            com.apk.xi0 r3 = r2.f1583final
            int r4 = r2.f1580const
            r3.m3024throw(r4)
        L66:
            return
        L67:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.gj0.m960break(com.apk.sg0, boolean):void");
    }

    @Nullable
    /* renamed from: case  reason: not valid java name */
    public final synchronized ti0 m961case() {
        return this.f1578catch;
    }

    /* renamed from: catch  reason: not valid java name */
    public final synchronized void m962catch(@NotNull ti0 ti0Var) {
        nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
        if (this.f1578catch == null) {
            this.f1578catch = ti0Var;
            notifyAll();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public final void m963class() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m964do() throws IOException {
        boolean z;
        boolean m970this;
        if (jh0.f2333goto && Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST NOT hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        synchronized (this) {
            z = !this.f1582else.f1600try && this.f1582else.f1597for && (this.f1585goto.f1591for || this.f1585goto.f1592if);
            m970this = m970this();
        }
        if (z) {
            m966for(ti0.CANCEL, null);
        } else if (m970this) {
        } else {
            this.f1583final.m3024throw(this.f1580const);
        }
    }

    @NotNull
    /* renamed from: else  reason: not valid java name */
    public final jl0 m965else() {
        synchronized (this) {
            if (!(this.f1577case || m967goto())) {
                throw new IllegalStateException("reply before requesting the sink".toString());
            }
        }
        return this.f1585goto;
    }

    /* renamed from: for  reason: not valid java name */
    public final void m966for(@NotNull ti0 ti0Var, @Nullable IOException iOException) throws IOException {
        nd0.m1875new(ti0Var, "rstStatusCode");
        if (m969new(ti0Var, iOException)) {
            xi0 xi0Var = this.f1583final;
            int i = this.f1580const;
            if (xi0Var != null) {
                nd0.m1875new(ti0Var, "statusCode");
                xi0Var.f5639extends.m1129extends(i, ti0Var);
                return;
            }
            throw null;
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public final boolean m967goto() {
        return this.f1583final.f5637do == ((this.f1580const & 1) == 1);
    }

    /* renamed from: if  reason: not valid java name */
    public final void m968if() throws IOException {
        Cdo cdo = this.f1585goto;
        if (!cdo.f1592if) {
            if (!cdo.f1591for) {
                if (this.f1578catch != null) {
                    IOException iOException = this.f1579class;
                    if (iOException != null) {
                        throw iOException;
                    }
                    ti0 ti0Var = this.f1578catch;
                    nd0.m1874if(ti0Var);
                    throw new mj0(ti0Var);
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    /* renamed from: new  reason: not valid java name */
    public final boolean m969new(ti0 ti0Var, IOException iOException) {
        if (jh0.f2333goto && Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST NOT hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        synchronized (this) {
            if (this.f1578catch != null) {
                return false;
            }
            if (this.f1582else.f1600try && this.f1585goto.f1591for) {
                return false;
            }
            this.f1578catch = ti0Var;
            this.f1579class = iOException;
            notifyAll();
            this.f1583final.m3024throw(this.f1580const);
            return true;
        }
    }

    /* renamed from: this  reason: not valid java name */
    public final synchronized boolean m970this() {
        if (this.f1578catch != null) {
            return false;
        }
        if ((this.f1582else.f1600try || this.f1582else.f1597for) && (this.f1585goto.f1591for || this.f1585goto.f1592if)) {
            if (this.f1577case) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: try  reason: not valid java name */
    public final void m971try(@NotNull ti0 ti0Var) {
        nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
        if (m969new(ti0Var, null)) {
            this.f1583final.m3022package(this.f1580const, ti0Var);
        }
    }
}
