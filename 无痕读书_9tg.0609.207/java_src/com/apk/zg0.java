package com.apk;

import com.apk.sg0;
import com.apk.tg0;
import com.baidu.tts.loopj.HttpDelete;
import com.baidu.tts.loopj.HttpGet;
import com.baidu.tts.loopj.HttpPatch;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.parser.LitePalParser;
/* compiled from: Request.kt */
/* loaded from: classes7.dex */
public final class zg0 {
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public final Map<Class<?>, Object> f6184case;

    /* renamed from: do  reason: not valid java name */
    public yf0 f6185do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final String f6186for;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final tg0 f6187if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final sg0 f6188new;
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public final bh0 f6189try;

    /* compiled from: Request.kt */
    /* renamed from: com.apk.zg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo {
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public tg0 f6190do;
        @NotNull

        /* renamed from: for  reason: not valid java name */
        public sg0.Cdo f6191for;
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public String f6192if;
        @Nullable

        /* renamed from: new  reason: not valid java name */
        public bh0 f6193new;
        @NotNull

        /* renamed from: try  reason: not valid java name */
        public Map<Class<?>, Object> f6194try;

        public Cdo() {
            this.f6194try = new LinkedHashMap();
            this.f6192if = HttpGet.METHOD_NAME;
            this.f6191for = new sg0.Cdo();
        }

        @NotNull
        /* renamed from: case  reason: not valid java name */
        public Cdo m3199case(@NotNull String str) {
            nd0.m1875new(str, "name");
            this.f6191for.m2463try(str);
            return this;
        }

        @JvmOverloads
        @NotNull
        public final Cdo delete() {
            return delete(jh0.f2335new);
        }

        @NotNull
        /* renamed from: do  reason: not valid java name */
        public Cdo m3200do(@NotNull String str, @NotNull String str2) {
            nd0.m1875new(str, "name");
            nd0.m1875new(str2, LitePalParser.ATTR_VALUE);
            this.f6191for.m2459do(str, str2);
            return this;
        }

        @NotNull
        /* renamed from: else  reason: not valid java name */
        public Cdo m3201else(@Nullable Object obj) {
            nd0.m1875new(Object.class, "type");
            if (obj == null) {
                this.f6194try.remove(Object.class);
            } else {
                if (this.f6194try.isEmpty()) {
                    this.f6194try = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.f6194try;
                Object cast = Object.class.cast(obj);
                nd0.m1874if(cast);
                map.put(Object.class, cast);
            }
            return this;
        }

        @NotNull
        /* renamed from: for  reason: not valid java name */
        public Cdo m3202for(@NotNull String str, @NotNull String str2) {
            nd0.m1875new(str, "name");
            nd0.m1875new(str2, LitePalParser.ATTR_VALUE);
            this.f6191for.m2458case(str, str2);
            return this;
        }

        @NotNull
        /* renamed from: goto  reason: not valid java name */
        public Cdo m3203goto(@NotNull String str) {
            nd0.m1875new(str, "url");
            if (ie0.m1204public(str, "ws:", true)) {
                StringBuilder m1016super = Cgoto.m1016super("http:");
                String substring = str.substring(3);
                nd0.m1872for(substring, "(this as java.lang.String).substring(startIndex)");
                m1016super.append(substring);
                str = m1016super.toString();
            } else if (ie0.m1204public(str, "wss:", true)) {
                StringBuilder m1016super2 = Cgoto.m1016super("https:");
                String substring2 = str.substring(4);
                nd0.m1872for(substring2, "(this as java.lang.String).substring(startIndex)");
                m1016super2.append(substring2);
                str = m1016super2.toString();
            }
            nd0.m1875new(str, "$this$toHttpUrl");
            tg0.Cdo cdo = new tg0.Cdo();
            cdo.m2599new(null, str);
            m3206this(cdo.m2596do());
            return this;
        }

        @NotNull
        /* renamed from: if  reason: not valid java name */
        public zg0 m3204if() {
            tg0 tg0Var = this.f6190do;
            if (tg0Var != null) {
                return new zg0(tg0Var, this.f6192if, this.f6191for.m2462new(), this.f6193new, jh0.m1341strictfp(this.f6194try));
            }
            throw new IllegalStateException("url == null".toString());
        }

        @NotNull
        /* renamed from: new  reason: not valid java name */
        public Cdo m3205new(@NotNull sg0 sg0Var) {
            nd0.m1875new(sg0Var, "headers");
            this.f6191for = sg0Var.m2454for();
            return this;
        }

        @NotNull
        /* renamed from: this  reason: not valid java name */
        public Cdo m3206this(@NotNull tg0 tg0Var) {
            nd0.m1875new(tg0Var, "url");
            this.f6190do = tg0Var;
            return this;
        }

        @NotNull
        /* renamed from: try  reason: not valid java name */
        public Cdo m3207try(@NotNull String str, @Nullable bh0 bh0Var) {
            nd0.m1875new(str, "method");
            boolean z = false;
            if (str.length() > 0) {
                if (bh0Var == null) {
                    nd0.m1875new(str, "method");
                    if (!(!((nd0.m1870do(str, "POST") || nd0.m1870do(str, "PUT") || nd0.m1870do(str, HttpPatch.METHOD_NAME) || nd0.m1870do(str, "PROPPATCH") || nd0.m1870do(str, "REPORT")) ? true : true))) {
                        throw new IllegalArgumentException(Cgoto.m996else("method ", str, " must have a request body.").toString());
                    }
                } else if (!li0.m1634do(str)) {
                    throw new IllegalArgumentException(Cgoto.m996else("method ", str, " must not have a request body.").toString());
                }
                this.f6192if = str;
                this.f6193new = bh0Var;
                return this;
            }
            throw new IllegalArgumentException("method.isEmpty() == true".toString());
        }

        @JvmOverloads
        @NotNull
        public Cdo delete(@Nullable bh0 bh0Var) {
            m3207try(HttpDelete.METHOD_NAME, bh0Var);
            return this;
        }

        public Cdo(@NotNull zg0 zg0Var) {
            LinkedHashMap linkedHashMap;
            nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
            this.f6194try = new LinkedHashMap();
            this.f6190do = zg0Var.f6187if;
            this.f6192if = zg0Var.f6186for;
            this.f6193new = zg0Var.f6189try;
            if (zg0Var.f6184case.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = zg0Var.f6184case;
                nd0.m1875new(map, "$this$toMutableMap");
                linkedHashMap = new LinkedHashMap(map);
            }
            this.f6194try = linkedHashMap;
            this.f6191for = zg0Var.f6188new.m2454for();
        }
    }

    public zg0(@NotNull tg0 tg0Var, @NotNull String str, @NotNull sg0 sg0Var, @Nullable bh0 bh0Var, @NotNull Map<Class<?>, ? extends Object> map) {
        nd0.m1875new(tg0Var, "url");
        nd0.m1875new(str, "method");
        nd0.m1875new(sg0Var, "headers");
        nd0.m1875new(map, "tags");
        this.f6187if = tg0Var;
        this.f6186for = str;
        this.f6188new = sg0Var;
        this.f6189try = bh0Var;
        this.f6184case = map;
    }

    @JvmName(name = "cacheControl")
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public final yf0 m3197do() {
        yf0 yf0Var = this.f6185do;
        if (yf0Var == null) {
            yf0 m3065if = yf0.f5920final.m3065if(this.f6188new);
            this.f6185do = m3065if;
            return m3065if;
        }
        return yf0Var;
    }

    @Nullable
    /* renamed from: if  reason: not valid java name */
    public final String m3198if(@NotNull String str) {
        nd0.m1875new(str, "name");
        return this.f6188new.m2453do(str);
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Request{method=");
        m1016super.append(this.f6186for);
        m1016super.append(", url=");
        m1016super.append(this.f6187if);
        if (this.f6188new.size() != 0) {
            m1016super.append(", headers=[");
            int i = 0;
            Iterator<jc0<? extends String, ? extends String>> it = this.f6188new.iterator();
            while (true) {
                kd0 kd0Var = (kd0) it;
                if (!kd0Var.hasNext()) {
                    m1016super.append(']');
                    break;
                }
                Object next = kd0Var.next();
                int i2 = i + 1;
                if (i >= 0) {
                    jc0 jc0Var = (jc0) next;
                    String str = (String) jc0Var.f2309do;
                    String str2 = (String) jc0Var.f2310if;
                    if (i > 0) {
                        m1016super.append(", ");
                    }
                    Cgoto.m987abstract(m1016super, str, ':', str2);
                    i = i2;
                } else {
                    sb0.n();
                    throw null;
                }
            }
        }
        if (!this.f6184case.isEmpty()) {
            m1016super.append(", tags=");
            m1016super.append(this.f6184case);
        }
        m1016super.append('}');
        String sb = m1016super.toString();
        nd0.m1872for(sb, "StringBuilder().apply(builderAction).toString()");
        return sb;
    }
}
