package com.apk;

import com.apk.oh0;
import com.apk.sg0;
import com.apk.uj0;
import com.apk.vg0;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.crud.LitePalSupport;
/* compiled from: Cache.kt */
/* loaded from: classes7.dex */
public final class xf0 implements Closeable, Flushable {

    /* renamed from: do  reason: not valid java name */
    public int f5521do;

    /* renamed from: for  reason: not valid java name */
    public int f5522for;

    /* renamed from: if  reason: not valid java name */
    public int f5523if;

    /* compiled from: Cache.kt */
    /* renamed from: com.apk.xf0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends dh0 {

        /* renamed from: case  reason: not valid java name */
        public final String f5524case;

        /* renamed from: for  reason: not valid java name */
        public final tk0 f5525for;
        @NotNull

        /* renamed from: new  reason: not valid java name */
        public final oh0.Cif f5526new;

        /* renamed from: try  reason: not valid java name */
        public final String f5527try;

        @Override // com.apk.dh0
        @NotNull
        /* renamed from: extends */
        public tk0 mo454extends() {
            return this.f5525for;
        }

        @Override // com.apk.dh0
        /* renamed from: throw */
        public long mo457throw() {
            String str = this.f5524case;
            if (str != null) {
                return jh0.m1349volatile(str, -1L);
            }
            return -1L;
        }

        @Override // com.apk.dh0
        @Nullable
        /* renamed from: throws */
        public vg0 mo458throws() {
            String str = this.f5527try;
            if (str != null) {
                vg0.Cdo cdo = vg0.f5075else;
                return vg0.Cdo.m2794if(str);
            }
            return null;
        }
    }

    /* compiled from: Cache.kt */
    /* renamed from: com.apk.xf0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {

        /* renamed from: catch  reason: not valid java name */
        public static final String f5528catch;

        /* renamed from: class  reason: not valid java name */
        public static final String f5529class;

        /* renamed from: break  reason: not valid java name */
        public final long f5530break;

        /* renamed from: case  reason: not valid java name */
        public final String f5531case;

        /* renamed from: do  reason: not valid java name */
        public final String f5532do;

        /* renamed from: else  reason: not valid java name */
        public final sg0 f5533else;

        /* renamed from: for  reason: not valid java name */
        public final String f5534for;

        /* renamed from: goto  reason: not valid java name */
        public final rg0 f5535goto;

        /* renamed from: if  reason: not valid java name */
        public final sg0 f5536if;

        /* renamed from: new  reason: not valid java name */
        public final yg0 f5537new;

        /* renamed from: this  reason: not valid java name */
        public final long f5538this;

        /* renamed from: try  reason: not valid java name */
        public final int f5539try;

        static {
            uj0.Cdo cdo = uj0.f4907for;
            if (uj0.f4906do != null) {
                f5528catch = "OkHttp-Sent-Millis";
                uj0.Cdo cdo2 = uj0.f4907for;
                if (uj0.f4906do != null) {
                    f5529class = "OkHttp-Received-Millis";
                    return;
                }
                throw null;
            }
            throw null;
        }

        public Cif(@NotNull ch0 ch0Var) {
            sg0 m2462new;
            nd0.m1875new(ch0Var, "response");
            this.f5532do = ch0Var.f615if.f6187if.f4688this;
            nd0.m1875new(ch0Var, "$this$varyHeaders");
            ch0 ch0Var2 = ch0Var.f617this;
            nd0.m1874if(ch0Var2);
            sg0 sg0Var = ch0Var2.f615if.f6188new;
            Set<String> m2989try = xf0.m2989try(ch0Var.f611else);
            if (m2989try.isEmpty()) {
                m2462new = jh0.f2334if;
            } else {
                sg0.Cdo cdo = new sg0.Cdo();
                int size = sg0Var.size();
                for (int i = 0; i < size; i++) {
                    String m2455if = sg0Var.m2455if(i);
                    if (m2989try.contains(m2455if)) {
                        cdo.m2459do(m2455if, sg0Var.m2456new(i));
                    }
                }
                m2462new = cdo.m2462new();
            }
            this.f5536if = m2462new;
            this.f5534for = ch0Var.f615if.f6186for;
            this.f5537new = ch0Var.f613for;
            this.f5539try = ch0Var.f618try;
            this.f5531case = ch0Var.f616new;
            this.f5533else = ch0Var.f611else;
            this.f5535goto = ch0Var.f606case;
            this.f5538this = ch0Var.f608class;
            this.f5530break = ch0Var.f609const;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static final Set<String> m2989try(sg0 sg0Var) {
        int size = sg0Var.size();
        TreeSet treeSet = null;
        for (int i = 0; i < size; i++) {
            if (ie0.m1203new("Vary", sg0Var.m2455if(i), true)) {
                String m2456new = sg0Var.m2456new(i);
                if (treeSet == null) {
                    Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                    nd0.m1872for(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
                    treeSet = new TreeSet(comparator);
                }
                for (String str : ie0.m1201import(m2456new, new char[]{','}, false, 0, 6)) {
                    if (str == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                    treeSet.add(ie0.m1211throws(str).toString());
                }
                continue;
            }
        }
        return treeSet != null ? treeSet : zc0.f6173do;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw null;
    }

    public final void delete() throws IOException {
        throw null;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2990for(@NotNull zg0 zg0Var) throws IOException {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        tg0 tg0Var = zg0Var.f6187if;
        nd0.m1875new(tg0Var, "url");
        uk0.f4913try.m2717if(tg0Var.f4688this).mo1241if(LitePalSupport.MD5).mo1242new();
        throw null;
    }
}
