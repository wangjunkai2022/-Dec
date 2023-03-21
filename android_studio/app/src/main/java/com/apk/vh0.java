package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.ch0;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.IOException;
import java.net.ProtocolException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Exchange.kt */
/* loaded from: classes7.dex */
public final class vh0 {

    /* renamed from: case  reason: not valid java name */
    public final ji0 f5083case;

    /* renamed from: do  reason: not valid java name */
    public boolean f5084do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final xh0 f5085for;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final bi0 f5086if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final og0 f5087new;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final wh0 f5088try;

    /* compiled from: Exchange.kt */
    /* renamed from: com.apk.vh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cdo extends vk0 {

        /* renamed from: case  reason: not valid java name */
        public final /* synthetic */ vh0 f5089case;

        /* renamed from: for  reason: not valid java name */
        public long f5090for;

        /* renamed from: if  reason: not valid java name */
        public boolean f5091if;

        /* renamed from: new  reason: not valid java name */
        public boolean f5092new;

        /* renamed from: try  reason: not valid java name */
        public final long f5093try;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(@NotNull vh0 vh0Var, jl0 jl0Var, long j) {
            super(jl0Var);
            nd0.m1875new(jl0Var, "delegate");
            this.f5089case = vh0Var;
            this.f5093try = j;
        }

        @Override // com.apk.vk0, com.apk.jl0
        /* renamed from: class */
        public void mo477class(@NotNull rk0 rk0Var, long j) throws IOException {
            nd0.m1875new(rk0Var, "source");
            if (!this.f5092new) {
                long j2 = this.f5093try;
                if (j2 != -1 && this.f5090for + j > j2) {
                    StringBuilder m1016super = Cgoto.m1016super("expected ");
                    m1016super.append(this.f5093try);
                    m1016super.append(" bytes but received ");
                    m1016super.append(this.f5090for + j);
                    throw new ProtocolException(m1016super.toString());
                }
                try {
                    super.mo477class(rk0Var, j);
                    this.f5090for += j;
                    return;
                } catch (IOException e) {
                    throw m2800for(e);
                }
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // com.apk.vk0, com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f5092new) {
                return;
            }
            this.f5092new = true;
            long j = this.f5093try;
            if (j != -1 && this.f5090for != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                m2800for(null);
            } catch (IOException e) {
                throw m2800for(e);
            }
        }

        @Override // com.apk.vk0, com.apk.jl0, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                throw m2800for(e);
            }
        }

        /* renamed from: for  reason: not valid java name */
        public final <E extends IOException> E m2800for(E e) {
            if (this.f5091if) {
                return e;
            }
            this.f5091if = true;
            return (E) this.f5089case.m2795do(this.f5090for, false, true, e);
        }
    }

    /* compiled from: Exchange.kt */
    /* renamed from: com.apk.vh0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cif extends wk0 {

        /* renamed from: case  reason: not valid java name */
        public final long f5094case;

        /* renamed from: else  reason: not valid java name */
        public final /* synthetic */ vh0 f5095else;

        /* renamed from: for  reason: not valid java name */
        public boolean f5096for;

        /* renamed from: if  reason: not valid java name */
        public long f5097if;

        /* renamed from: new  reason: not valid java name */
        public boolean f5098new;

        /* renamed from: try  reason: not valid java name */
        public boolean f5099try;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(@NotNull vh0 vh0Var, ll0 ll0Var, long j) {
            super(ll0Var);
            nd0.m1875new(ll0Var, "delegate");
            this.f5095else = vh0Var;
            this.f5094case = j;
            this.f5096for = true;
            if (j == 0) {
                m2801for(null);
            }
        }

        @Override // com.apk.wk0, com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f5099try) {
                return;
            }
            this.f5099try = true;
            try {
                super.close();
                m2801for(null);
            } catch (IOException e) {
                throw m2801for(e);
            }
        }

        /* renamed from: for  reason: not valid java name */
        public final <E extends IOException> E m2801for(E e) {
            if (this.f5098new) {
                return e;
            }
            this.f5098new = true;
            if (e == null && this.f5096for) {
                this.f5096for = false;
                vh0 vh0Var = this.f5095else;
                og0 og0Var = vh0Var.f5087new;
                xh0 xh0Var = vh0Var.f5085for;
                if (og0Var == null) {
                    throw null;
                }
                nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
            }
            return (E) this.f5095else.m2795do(this.f5097if, true, false, e);
        }

        @Override // com.apk.ll0
        /* renamed from: import */
        public long mo72import(@NotNull rk0 rk0Var, long j) throws IOException {
            nd0.m1875new(rk0Var, "sink");
            if (!this.f5099try) {
                try {
                    long mo72import = this.f5350do.mo72import(rk0Var, j);
                    if (this.f5096for) {
                        this.f5096for = false;
                        og0 og0Var = this.f5095else.f5087new;
                        xh0 xh0Var = this.f5095else.f5085for;
                        if (og0Var == null) {
                            throw null;
                        }
                        nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
                    }
                    if (mo72import == -1) {
                        m2801for(null);
                        return -1L;
                    }
                    long j2 = this.f5097if + mo72import;
                    if (this.f5094case != -1 && j2 > this.f5094case) {
                        throw new ProtocolException("expected " + this.f5094case + " bytes but received " + j2);
                    }
                    this.f5097if = j2;
                    if (j2 == this.f5094case) {
                        m2801for(null);
                    }
                    return mo72import;
                } catch (IOException e) {
                    throw m2801for(e);
                }
            }
            throw new IllegalStateException("closed".toString());
        }
    }

    public vh0(@NotNull xh0 xh0Var, @NotNull og0 og0Var, @NotNull wh0 wh0Var, @NotNull ji0 ji0Var) {
        nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
        nd0.m1875new(og0Var, "eventListener");
        nd0.m1875new(wh0Var, "finder");
        nd0.m1875new(ji0Var, "codec");
        this.f5085for = xh0Var;
        this.f5087new = og0Var;
        this.f5088try = wh0Var;
        this.f5083case = ji0Var;
        this.f5086if = ji0Var.mo633try();
    }

    /* renamed from: do  reason: not valid java name */
    public final <E extends IOException> E m2795do(long j, boolean z, boolean z2, E e) {
        if (e != null) {
            m2799try(e);
        }
        if (z2) {
            if (e != null) {
                this.f5087new.m1946if(this.f5085for, e);
            } else {
                og0 og0Var = this.f5087new;
                xh0 xh0Var = this.f5085for;
                if (og0Var == null) {
                    throw null;
                }
                nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
            }
        }
        if (z) {
            if (e != null) {
                this.f5087new.m1945for(this.f5085for, e);
            } else {
                og0 og0Var2 = this.f5087new;
                xh0 xh0Var2 = this.f5085for;
                if (og0Var2 == null) {
                    throw null;
                }
                nd0.m1875new(xh0Var2, NotificationCompat.CATEGORY_CALL);
            }
        }
        return (E) this.f5085for.m3006this(this, z2, z, e);
    }

    @Nullable
    /* renamed from: for  reason: not valid java name */
    public final ch0.Cdo m2796for(boolean z) throws IOException {
        try {
            ch0.Cdo mo632new = this.f5083case.mo632new(z);
            if (mo632new != null) {
                nd0.m1875new(this, "deferredTrailers");
                mo632new.f623const = this;
            }
            return mo632new;
        } catch (IOException e) {
            this.f5087new.m1945for(this.f5085for, e);
            m2799try(e);
            throw e;
        }
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public final jl0 m2797if(@NotNull zg0 zg0Var, boolean z) throws IOException {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        this.f5084do = z;
        bh0 bh0Var = zg0Var.f6189try;
        nd0.m1874if(bh0Var);
        long mo48do = bh0Var.mo48do();
        og0 og0Var = this.f5087new;
        xh0 xh0Var = this.f5085for;
        if (og0Var != null) {
            nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
            return new Cdo(this, this.f5083case.mo630goto(zg0Var, mo48do), mo48do);
        }
        throw null;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m2798new() {
        og0 og0Var = this.f5087new;
        xh0 xh0Var = this.f5085for;
        if (og0Var == null) {
            throw null;
        }
        nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2799try(IOException iOException) {
        this.f5088try.m2911for(iOException);
        bi0 mo633try = this.f5083case.mo633try();
        xh0 xh0Var = this.f5085for;
        synchronized (mo633try) {
            nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
            if (iOException instanceof mj0) {
                if (((mj0) iOException).f3063do == ti0.REFUSED_STREAM) {
                    int i = mo633try.f327const + 1;
                    mo633try.f327const = i;
                    if (i > 1) {
                        mo633try.f335this = true;
                        mo633try.f325catch++;
                    }
                } else if (((mj0) iOException).f3063do != ti0.CANCEL || !xh0Var.f5606const) {
                    mo633try.f335this = true;
                    mo633try.f325catch++;
                }
            } else if (!mo633try.m181catch() || (iOException instanceof si0)) {
                mo633try.f335this = true;
                if (mo633try.f326class == 0) {
                    mo633try.m192try(xh0Var.f5617throw, mo633try.f338while, iOException);
                    mo633try.f325catch++;
                }
            }
        }
    }
}
