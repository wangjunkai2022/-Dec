package com.apk;

import com.apk.ch0;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Http1ExchangeCodec.kt */
/* loaded from: classes7.dex */
public final class ri0 implements ji0 {

    /* renamed from: case  reason: not valid java name */
    public final tk0 f4058case;

    /* renamed from: do  reason: not valid java name */
    public int f4059do;

    /* renamed from: else  reason: not valid java name */
    public final sk0 f4060else;

    /* renamed from: for  reason: not valid java name */
    public sg0 f4061for;

    /* renamed from: if  reason: not valid java name */
    public final qi0 f4062if;

    /* renamed from: new  reason: not valid java name */
    public final xg0 f4063new;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final bi0 f4064try;

    /* compiled from: Http1ExchangeCodec.kt */
    /* renamed from: com.apk.ri0$case  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Ccase extends Cdo {

        /* renamed from: new  reason: not valid java name */
        public boolean f4065new;

        public Ccase(ri0 ri0Var) {
            super();
        }

        @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f4068if) {
                return;
            }
            if (!this.f4065new) {
                m2278for();
            }
            this.f4068if = true;
        }

        @Override // com.apk.ri0.Cdo, com.apk.ll0
        /* renamed from: import */
        public long mo72import(@NotNull rk0 rk0Var, long j) {
            nd0.m1875new(rk0Var, "sink");
            if (j >= 0) {
                if (!this.f4068if) {
                    if (this.f4065new) {
                        return -1L;
                    }
                    long mo72import = super.mo72import(rk0Var, j);
                    if (mo72import == -1) {
                        this.f4065new = true;
                        m2278for();
                        return -1L;
                    }
                    return mo72import;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* renamed from: com.apk.ri0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public abstract class Cdo implements ll0 {
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public final xk0 f4066do;

        /* renamed from: if  reason: not valid java name */
        public boolean f4068if;

        public Cdo() {
            this.f4066do = new xk0(ri0.this.f4058case.mo71if());
        }

        /* renamed from: for  reason: not valid java name */
        public final void m2278for() {
            ri0 ri0Var = ri0.this;
            int i = ri0Var.f4059do;
            if (i == 6) {
                return;
            }
            if (i == 5) {
                ri0.m2275this(ri0Var, this.f4066do);
                ri0.this.f4059do = 6;
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("state: ");
            m1016super.append(ri0.this.f4059do);
            throw new IllegalStateException(m1016super.toString());
        }

        @Override // com.apk.ll0
        @NotNull
        /* renamed from: if */
        public ml0 mo71if() {
            return this.f4066do;
        }

        @Override // com.apk.ll0
        /* renamed from: import */
        public long mo72import(@NotNull rk0 rk0Var, long j) {
            nd0.m1875new(rk0Var, "sink");
            try {
                return ri0.this.f4058case.mo72import(rk0Var, j);
            } catch (IOException e) {
                ri0.this.f4064try.m183const();
                m2278for();
                throw e;
            }
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* renamed from: com.apk.ri0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cfor extends Cdo {

        /* renamed from: case  reason: not valid java name */
        public final tg0 f4069case;

        /* renamed from: else  reason: not valid java name */
        public final /* synthetic */ ri0 f4070else;

        /* renamed from: new  reason: not valid java name */
        public long f4071new;

        /* renamed from: try  reason: not valid java name */
        public boolean f4072try;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(@NotNull ri0 ri0Var, tg0 tg0Var) {
            super();
            nd0.m1875new(tg0Var, "url");
            this.f4070else = ri0Var;
            this.f4069case = tg0Var;
            this.f4071new = -1L;
            this.f4072try = true;
        }

        @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f4068if) {
                return;
            }
            if (this.f4072try && !jh0.m1317catch(this, 100, TimeUnit.MILLISECONDS)) {
                this.f4070else.f4064try.m183const();
                m2278for();
            }
            this.f4068if = true;
        }

        @Override // com.apk.ri0.Cdo, com.apk.ll0
        /* renamed from: import */
        public long mo72import(@NotNull rk0 rk0Var, long j) {
            nd0.m1875new(rk0Var, "sink");
            boolean z = true;
            if (j >= 0) {
                if (!this.f4068if) {
                    if (this.f4072try) {
                        long j2 = this.f4071new;
                        if (j2 == 0 || j2 == -1) {
                            if (this.f4071new != -1) {
                                this.f4070else.f4058case.mo860super();
                            }
                            try {
                                this.f4071new = this.f4070else.f4058case.mo858return();
                                String mo860super = this.f4070else.f4058case.mo860super();
                                if (mo860super != null) {
                                    String obj = ie0.m1211throws(mo860super).toString();
                                    if (this.f4071new >= 0) {
                                        if (obj.length() <= 0) {
                                            z = false;
                                        }
                                        if (!z || ie0.m1206static(obj, ";", false, 2)) {
                                            if (this.f4071new == 0) {
                                                this.f4072try = false;
                                                ri0 ri0Var = this.f4070else;
                                                ri0Var.f4061for = ri0Var.f4062if.m2140do();
                                                xg0 xg0Var = this.f4070else.f4063new;
                                                nd0.m1874if(xg0Var);
                                                kg0 kg0Var = xg0Var.f5544break;
                                                tg0 tg0Var = this.f4069case;
                                                sg0 sg0Var = this.f4070else.f4061for;
                                                nd0.m1874if(sg0Var);
                                                ki0.m1505case(kg0Var, tg0Var, sg0Var);
                                                m2278for();
                                            }
                                            if (!this.f4072try) {
                                                return -1L;
                                            }
                                        }
                                    }
                                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f4071new + obj + '\"');
                                }
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                            } catch (NumberFormatException e) {
                                throw new ProtocolException(e.getMessage());
                            }
                        }
                        long mo72import = super.mo72import(rk0Var, Math.min(j, this.f4071new));
                        if (mo72import != -1) {
                            this.f4071new -= mo72import;
                            return mo72import;
                        }
                        this.f4070else.f4064try.m183const();
                        ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                        m2278for();
                        throw protocolException;
                    }
                    return -1L;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* renamed from: com.apk.ri0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cif implements jl0 {

        /* renamed from: do  reason: not valid java name */
        public final xk0 f4073do;

        /* renamed from: if  reason: not valid java name */
        public boolean f4075if;

        public Cif() {
            this.f4073do = new xk0(ri0.this.f4060else.mo478if());
        }

        @Override // com.apk.jl0
        /* renamed from: class */
        public void mo477class(@NotNull rk0 rk0Var, long j) {
            nd0.m1875new(rk0Var, "source");
            if (!(!this.f4075if)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j == 0) {
                return;
            }
            ri0.this.f4060else.mo640final(j);
            ri0.this.f4060else.mo643this(SimpleMultipartEntity.STR_CR_LF);
            ri0.this.f4060else.mo477class(rk0Var, j);
            ri0.this.f4060else.mo643this(SimpleMultipartEntity.STR_CR_LF);
        }

        @Override // com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f4075if) {
                return;
            }
            this.f4075if = true;
            ri0.this.f4060else.mo643this("0\r\n\r\n");
            ri0.m2275this(ri0.this, this.f4073do);
            ri0.this.f4059do = 3;
        }

        @Override // com.apk.jl0, java.io.Flushable
        public synchronized void flush() {
            if (this.f4075if) {
                return;
            }
            ri0.this.f4060else.flush();
        }

        @Override // com.apk.jl0
        @NotNull
        /* renamed from: if */
        public ml0 mo478if() {
            return this.f4073do;
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* renamed from: com.apk.ri0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cnew extends Cdo {

        /* renamed from: new  reason: not valid java name */
        public long f4076new;

        public Cnew(long j) {
            super();
            this.f4076new = j;
            if (j == 0) {
                m2278for();
            }
        }

        @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f4068if) {
                return;
            }
            if (this.f4076new != 0 && !jh0.m1317catch(this, 100, TimeUnit.MILLISECONDS)) {
                ri0.this.f4064try.m183const();
                m2278for();
            }
            this.f4068if = true;
        }

        @Override // com.apk.ri0.Cdo, com.apk.ll0
        /* renamed from: import */
        public long mo72import(@NotNull rk0 rk0Var, long j) {
            nd0.m1875new(rk0Var, "sink");
            if (j >= 0) {
                if (!this.f4068if) {
                    long j2 = this.f4076new;
                    if (j2 == 0) {
                        return -1L;
                    }
                    long mo72import = super.mo72import(rk0Var, Math.min(j2, j));
                    if (mo72import != -1) {
                        long j3 = this.f4076new - mo72import;
                        this.f4076new = j3;
                        if (j3 == 0) {
                            m2278for();
                        }
                        return mo72import;
                    }
                    ri0.this.f4064try.m183const();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    m2278for();
                    throw protocolException;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* renamed from: com.apk.ri0$try  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Ctry implements jl0 {

        /* renamed from: do  reason: not valid java name */
        public final xk0 f4078do;

        /* renamed from: if  reason: not valid java name */
        public boolean f4080if;

        public Ctry() {
            this.f4078do = new xk0(ri0.this.f4060else.mo478if());
        }

        @Override // com.apk.jl0
        /* renamed from: class */
        public void mo477class(@NotNull rk0 rk0Var, long j) {
            nd0.m1875new(rk0Var, "source");
            if (!this.f4080if) {
                jh0.m1348try(rk0Var.f4108if, 0L, j);
                ri0.this.f4060else.mo477class(rk0Var, j);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f4080if) {
                return;
            }
            this.f4080if = true;
            ri0.m2275this(ri0.this, this.f4078do);
            ri0.this.f4059do = 3;
        }

        @Override // com.apk.jl0, java.io.Flushable
        public void flush() {
            if (this.f4080if) {
                return;
            }
            ri0.this.f4060else.flush();
        }

        @Override // com.apk.jl0
        @NotNull
        /* renamed from: if */
        public ml0 mo478if() {
            return this.f4078do;
        }
    }

    public ri0(@Nullable xg0 xg0Var, @NotNull bi0 bi0Var, @NotNull tk0 tk0Var, @NotNull sk0 sk0Var) {
        nd0.m1875new(bi0Var, "connection");
        nd0.m1875new(tk0Var, "source");
        nd0.m1875new(sk0Var, "sink");
        this.f4063new = xg0Var;
        this.f4064try = bi0Var;
        this.f4058case = tk0Var;
        this.f4060else = sk0Var;
        this.f4062if = new qi0(tk0Var);
    }

    /* renamed from: this  reason: not valid java name */
    public static final void m2275this(ri0 ri0Var, xk0 xk0Var) {
        if (ri0Var != null) {
            ml0 ml0Var = xk0Var.f5695try;
            ml0 ml0Var2 = ml0.f3064new;
            nd0.m1875new(ml0Var2, "delegate");
            xk0Var.f5695try = ml0Var2;
            ml0Var.mo1729do();
            ml0Var.mo1732if();
            return;
        }
        throw null;
    }

    /* renamed from: break  reason: not valid java name */
    public final ll0 m2276break(long j) {
        if (this.f4059do == 4) {
            this.f4059do = 5;
            return new Cnew(j);
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.f4059do);
        throw new IllegalStateException(m1016super.toString().toString());
    }

    @Override // com.apk.ji0
    public void cancel() {
        Socket socket = this.f4064try.f332if;
        if (socket != null) {
            jh0.m1323else(socket);
        }
    }

    @Override // com.apk.ji0
    /* renamed from: case */
    public void mo626case() {
        this.f4060else.flush();
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m2277catch(@NotNull sg0 sg0Var, @NotNull String str) {
        nd0.m1875new(sg0Var, "headers");
        nd0.m1875new(str, "requestLine");
        if (this.f4059do == 0) {
            this.f4060else.mo643this(str).mo643this(SimpleMultipartEntity.STR_CR_LF);
            int size = sg0Var.size();
            for (int i = 0; i < size; i++) {
                this.f4060else.mo643this(sg0Var.m2455if(i)).mo643this(": ").mo643this(sg0Var.m2456new(i)).mo643this(SimpleMultipartEntity.STR_CR_LF);
            }
            this.f4060else.mo643this(SimpleMultipartEntity.STR_CR_LF);
            this.f4059do = 1;
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.f4059do);
        throw new IllegalStateException(m1016super.toString().toString());
    }

    @Override // com.apk.ji0
    /* renamed from: do */
    public void mo627do() {
        this.f4060else.flush();
    }

    @Override // com.apk.ji0
    /* renamed from: else */
    public long mo628else(@NotNull ch0 ch0Var) {
        nd0.m1875new(ch0Var, "response");
        if (ki0.m1508for(ch0Var)) {
            if (ie0.m1203new("chunked", ch0.m336break(ch0Var, "Transfer-Encoding", null, 2), true)) {
                return -1L;
            }
            return jh0.m1325final(ch0Var);
        }
        return 0L;
    }

    @Override // com.apk.ji0
    @NotNull
    /* renamed from: for */
    public ll0 mo629for(@NotNull ch0 ch0Var) {
        nd0.m1875new(ch0Var, "response");
        if (ki0.m1508for(ch0Var)) {
            if (ie0.m1203new("chunked", ch0.m336break(ch0Var, "Transfer-Encoding", null, 2), true)) {
                tg0 tg0Var = ch0Var.f615if.f6187if;
                if (this.f4059do == 4) {
                    this.f4059do = 5;
                    return new Cfor(this, tg0Var);
                }
                StringBuilder m1016super = Cgoto.m1016super("state: ");
                m1016super.append(this.f4059do);
                throw new IllegalStateException(m1016super.toString().toString());
            }
            long m1325final = jh0.m1325final(ch0Var);
            if (m1325final != -1) {
                return m2276break(m1325final);
            }
            if (this.f4059do == 4) {
                this.f4059do = 5;
                this.f4064try.m183const();
                return new Ccase(this);
            }
            StringBuilder m1016super2 = Cgoto.m1016super("state: ");
            m1016super2.append(this.f4059do);
            throw new IllegalStateException(m1016super2.toString().toString());
        }
        return m2276break(0L);
    }

    @Override // com.apk.ji0
    @NotNull
    /* renamed from: goto */
    public jl0 mo630goto(@NotNull zg0 zg0Var, long j) {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        if (ie0.m1203new("chunked", zg0Var.m3198if("Transfer-Encoding"), true)) {
            if (this.f4059do == 1) {
                this.f4059do = 2;
                return new Cif();
            }
            StringBuilder m1016super = Cgoto.m1016super("state: ");
            m1016super.append(this.f4059do);
            throw new IllegalStateException(m1016super.toString().toString());
        } else if (j != -1) {
            if (this.f4059do == 1) {
                this.f4059do = 2;
                return new Ctry();
            }
            StringBuilder m1016super2 = Cgoto.m1016super("state: ");
            m1016super2.append(this.f4059do);
            throw new IllegalStateException(m1016super2.toString().toString());
        } else {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
    }

    @Override // com.apk.ji0
    /* renamed from: if */
    public void mo631if(@NotNull zg0 zg0Var) {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        Proxy.Type type = this.f4064try.f338while.f1294if.type();
        nd0.m1872for(type, "connection.route().proxy.type()");
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        nd0.m1875new(type, "proxyType");
        StringBuilder sb = new StringBuilder();
        sb.append(zg0Var.f6186for);
        sb.append(' ');
        if (!zg0Var.f6187if.f4682do && type == Proxy.Type.HTTP) {
            sb.append(zg0Var.f6187if);
        } else {
            tg0 tg0Var = zg0Var.f6187if;
            nd0.m1875new(tg0Var, "url");
            String m2593if = tg0Var.m2593if();
            String m2594new = tg0Var.m2594new();
            if (m2594new != null) {
                m2593if = m2593if + '?' + m2594new;
            }
            sb.append(m2593if);
        }
        sb.append(" HTTP/1.1");
        String sb2 = sb.toString();
        nd0.m1872for(sb2, "StringBuilder().apply(builderAction).toString()");
        m2277catch(zg0Var.f6188new, sb2);
    }

    @Override // com.apk.ji0
    @Nullable
    /* renamed from: new */
    public ch0.Cdo mo632new(boolean z) {
        int i = this.f4059do;
        boolean z2 = true;
        if (i != 1 && i != 3) {
            z2 = false;
        }
        if (z2) {
            try {
                pi0 m2047do = pi0.m2047do(this.f4062if.m2141if());
                ch0.Cdo cdo = new ch0.Cdo();
                cdo.m340case(m2047do.f3671do);
                cdo.f626for = m2047do.f3673if;
                cdo.m346try(m2047do.f3672for);
                cdo.m345new(this.f4062if.m2140do());
                if (z && m2047do.f3673if == 100) {
                    return null;
                }
                if (m2047do.f3673if == 100) {
                    this.f4059do = 3;
                    return cdo;
                }
                this.f4059do = 4;
                return cdo;
            } catch (EOFException e) {
                throw new IOException(Cgoto.m989case("unexpected end of stream on ", this.f4064try.f338while.f1292do.f4880do.m2589case()), e);
            }
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.f4059do);
        throw new IllegalStateException(m1016super.toString().toString());
    }

    @Override // com.apk.ji0
    @NotNull
    /* renamed from: try */
    public bi0 mo633try() {
        return this.f4064try;
    }
}
