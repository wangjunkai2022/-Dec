package com.apk;

import com.apk.sg0;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.Closeable;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Response.kt */
/* loaded from: classes7.dex */
public final class ch0 implements Closeable {
    @Nullable

    /* renamed from: break  reason: not valid java name */
    public final ch0 f605break;
    @Nullable

    /* renamed from: case  reason: not valid java name */
    public final rg0 f606case;
    @Nullable

    /* renamed from: catch  reason: not valid java name */
    public final ch0 f607catch;

    /* renamed from: class  reason: not valid java name */
    public final long f608class;

    /* renamed from: const  reason: not valid java name */
    public final long f609const;

    /* renamed from: do  reason: not valid java name */
    public yf0 f610do;
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public final sg0 f611else;
    @Nullable

    /* renamed from: final  reason: not valid java name */
    public final vh0 f612final;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final yg0 f613for;
    @Nullable

    /* renamed from: goto  reason: not valid java name */
    public final dh0 f614goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final zg0 f615if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final String f616new;
    @Nullable

    /* renamed from: this  reason: not valid java name */
    public final ch0 f617this;

    /* renamed from: try  reason: not valid java name */
    public final int f618try;

    public ch0(@NotNull zg0 zg0Var, @NotNull yg0 yg0Var, @NotNull String str, int i, @Nullable rg0 rg0Var, @NotNull sg0 sg0Var, @Nullable dh0 dh0Var, @Nullable ch0 ch0Var, @Nullable ch0 ch0Var2, @Nullable ch0 ch0Var3, long j, long j2, @Nullable vh0 vh0Var) {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        nd0.m1875new(yg0Var, "protocol");
        nd0.m1875new(str, "message");
        nd0.m1875new(sg0Var, "headers");
        this.f615if = zg0Var;
        this.f613for = yg0Var;
        this.f616new = str;
        this.f618try = i;
        this.f606case = rg0Var;
        this.f611else = sg0Var;
        this.f614goto = dh0Var;
        this.f617this = ch0Var;
        this.f605break = ch0Var2;
        this.f607catch = ch0Var3;
        this.f608class = j;
        this.f609const = j2;
        this.f612final = vh0Var;
    }

    /* renamed from: break  reason: not valid java name */
    public static String m336break(ch0 ch0Var, String str, String str2, int i) {
        int i2 = i & 2;
        if (ch0Var != null) {
            nd0.m1875new(str, "name");
            String m2453do = ch0Var.f611else.m2453do(str);
            if (m2453do != null) {
                return m2453do;
            }
            return null;
        }
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        dh0 dh0Var = this.f614goto;
        if (dh0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
        }
        dh0Var.close();
    }

    @JvmName(name = "cacheControl")
    @NotNull
    /* renamed from: for  reason: not valid java name */
    public final yf0 m337for() {
        yf0 yf0Var = this.f610do;
        if (yf0Var == null) {
            yf0 m3065if = yf0.f5920final.m3065if(this.f611else);
            this.f610do = m3065if;
            return m3065if;
        }
        return yf0Var;
    }

    /* renamed from: throw  reason: not valid java name */
    public final boolean m338throw() {
        int i = this.f618try;
        return 200 <= i && 299 >= i;
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Response{protocol=");
        m1016super.append(this.f613for);
        m1016super.append(", code=");
        m1016super.append(this.f618try);
        m1016super.append(", message=");
        m1016super.append(this.f616new);
        m1016super.append(", url=");
        m1016super.append(this.f615if.f6187if);
        m1016super.append('}');
        return m1016super.toString();
    }

    @JvmOverloads
    @Nullable
    /* renamed from: try  reason: not valid java name */
    public final String m339try(@NotNull String str) {
        return m336break(this, str, null, 2);
    }

    /* compiled from: Response.kt */
    /* renamed from: com.apk.ch0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo {
        @Nullable

        /* renamed from: break  reason: not valid java name */
        public ch0 f619break;
        @NotNull

        /* renamed from: case  reason: not valid java name */
        public sg0.Cdo f620case;

        /* renamed from: catch  reason: not valid java name */
        public long f621catch;

        /* renamed from: class  reason: not valid java name */
        public long f622class;
        @Nullable

        /* renamed from: const  reason: not valid java name */
        public vh0 f623const;
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public zg0 f624do;
        @Nullable

        /* renamed from: else  reason: not valid java name */
        public dh0 f625else;

        /* renamed from: for  reason: not valid java name */
        public int f626for;
        @Nullable

        /* renamed from: goto  reason: not valid java name */
        public ch0 f627goto;
        @Nullable

        /* renamed from: if  reason: not valid java name */
        public yg0 f628if;
        @Nullable

        /* renamed from: new  reason: not valid java name */
        public String f629new;
        @Nullable

        /* renamed from: this  reason: not valid java name */
        public ch0 f630this;
        @Nullable

        /* renamed from: try  reason: not valid java name */
        public rg0 f631try;

        public Cdo() {
            this.f626for = -1;
            this.f620case = new sg0.Cdo();
        }

        @NotNull
        /* renamed from: case  reason: not valid java name */
        public Cdo m340case(@NotNull yg0 yg0Var) {
            nd0.m1875new(yg0Var, "protocol");
            this.f628if = yg0Var;
            return this;
        }

        @NotNull
        /* renamed from: do  reason: not valid java name */
        public ch0 m341do() {
            if (this.f626for >= 0) {
                zg0 zg0Var = this.f624do;
                if (zg0Var != null) {
                    yg0 yg0Var = this.f628if;
                    if (yg0Var != null) {
                        String str = this.f629new;
                        if (str != null) {
                            return new ch0(zg0Var, yg0Var, str, this.f626for, this.f631try, this.f620case.m2462new(), this.f625else, this.f627goto, this.f630this, this.f619break, this.f621catch, this.f622class, this.f623const);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            StringBuilder m1016super = Cgoto.m1016super("code < 0: ");
            m1016super.append(this.f626for);
            throw new IllegalStateException(m1016super.toString().toString());
        }

        @NotNull
        /* renamed from: else  reason: not valid java name */
        public Cdo m342else(@NotNull zg0 zg0Var) {
            nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
            this.f624do = zg0Var;
            return this;
        }

        /* renamed from: for  reason: not valid java name */
        public final void m343for(String str, ch0 ch0Var) {
            if (ch0Var != null) {
                if (ch0Var.f614goto == null) {
                    if (ch0Var.f617this == null) {
                        if (ch0Var.f605break == null) {
                            if (!(ch0Var.f607catch == null)) {
                                throw new IllegalArgumentException(Cgoto.m989case(str, ".priorResponse != null").toString());
                            }
                            return;
                        }
                        throw new IllegalArgumentException(Cgoto.m989case(str, ".cacheResponse != null").toString());
                    }
                    throw new IllegalArgumentException(Cgoto.m989case(str, ".networkResponse != null").toString());
                }
                throw new IllegalArgumentException(Cgoto.m989case(str, ".body != null").toString());
            }
        }

        @NotNull
        /* renamed from: if  reason: not valid java name */
        public Cdo m344if(@Nullable ch0 ch0Var) {
            m343for("cacheResponse", ch0Var);
            this.f630this = ch0Var;
            return this;
        }

        @NotNull
        /* renamed from: new  reason: not valid java name */
        public Cdo m345new(@NotNull sg0 sg0Var) {
            nd0.m1875new(sg0Var, "headers");
            this.f620case = sg0Var.m2454for();
            return this;
        }

        @NotNull
        /* renamed from: try  reason: not valid java name */
        public Cdo m346try(@NotNull String str) {
            nd0.m1875new(str, "message");
            this.f629new = str;
            return this;
        }

        public Cdo(@NotNull ch0 ch0Var) {
            nd0.m1875new(ch0Var, "response");
            this.f626for = -1;
            this.f624do = ch0Var.f615if;
            this.f628if = ch0Var.f613for;
            this.f626for = ch0Var.f618try;
            this.f629new = ch0Var.f616new;
            this.f631try = ch0Var.f606case;
            this.f620case = ch0Var.f611else.m2454for();
            this.f625else = ch0Var.f614goto;
            this.f627goto = ch0Var.f617this;
            this.f630this = ch0Var.f605break;
            this.f619break = ch0Var.f607catch;
            this.f621catch = ch0Var.f608class;
            this.f622class = ch0Var.f609const;
            this.f623const = ch0Var.f612final;
        }
    }
}
