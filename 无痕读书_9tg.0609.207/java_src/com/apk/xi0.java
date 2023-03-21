package com.apk;

import com.apk.fj0;
import com.apk.uj0;
import com.bytedance.msdk.api.reward.RewardItem;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http2Connection.kt */
/* loaded from: classes7.dex */
public final class xi0 implements Closeable {

    /* renamed from: abstract  reason: not valid java name */
    public static final xi0 f5629abstract = null;
    @NotNull

    /* renamed from: private  reason: not valid java name */
    public static final lj0 f5630private;

    /* renamed from: break  reason: not valid java name */
    public final rh0 f5631break;

    /* renamed from: case  reason: not valid java name */
    public int f5632case;

    /* renamed from: catch  reason: not valid java name */
    public final rh0 f5633catch;

    /* renamed from: class  reason: not valid java name */
    public final kj0 f5634class;

    /* renamed from: const  reason: not valid java name */
    public long f5635const;
    @NotNull

    /* renamed from: default  reason: not valid java name */
    public final Socket f5636default;

    /* renamed from: do  reason: not valid java name */
    public final boolean f5637do;

    /* renamed from: else  reason: not valid java name */
    public boolean f5638else;
    @NotNull

    /* renamed from: extends  reason: not valid java name */
    public final hj0 f5639extends;

    /* renamed from: final  reason: not valid java name */
    public long f5640final;
    @NotNull

    /* renamed from: finally  reason: not valid java name */
    public final Cnew f5641finally;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final Map<Integer, gj0> f5642for;

    /* renamed from: goto  reason: not valid java name */
    public final sh0 f5643goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final Cfor f5644if;

    /* renamed from: import  reason: not valid java name */
    public long f5645import;
    @NotNull

    /* renamed from: native  reason: not valid java name */
    public final lj0 f5646native;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final String f5647new;

    /* renamed from: package  reason: not valid java name */
    public final Set<Integer> f5648package;
    @NotNull

    /* renamed from: public  reason: not valid java name */
    public lj0 f5649public;

    /* renamed from: return  reason: not valid java name */
    public long f5650return;

    /* renamed from: static  reason: not valid java name */
    public long f5651static;

    /* renamed from: super  reason: not valid java name */
    public long f5652super;

    /* renamed from: switch  reason: not valid java name */
    public long f5653switch;

    /* renamed from: this  reason: not valid java name */
    public final rh0 f5654this;

    /* renamed from: throw  reason: not valid java name */
    public long f5655throw;

    /* renamed from: throws  reason: not valid java name */
    public long f5656throws;

    /* renamed from: try  reason: not valid java name */
    public int f5657try;

    /* renamed from: while  reason: not valid java name */
    public long f5658while;

    /* compiled from: TaskQueue.kt */
    /* renamed from: com.apk.xi0$case  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ccase extends ph0 {

        /* renamed from: case  reason: not valid java name */
        public final /* synthetic */ int f5659case;

        /* renamed from: else  reason: not valid java name */
        public final /* synthetic */ long f5660else;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ xi0 f5661try;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(String str, boolean z, String str2, boolean z2, xi0 xi0Var, int i, long j) {
            super(str2, z2);
            this.f5661try = xi0Var;
            this.f5659case = i;
            this.f5660else = j;
        }

        @Override // com.apk.ph0
        /* renamed from: do */
        public long mo56do() {
            try {
                this.f5661try.f5639extends.m1130finally(this.f5659case, this.f5660else);
                return -1L;
            } catch (IOException e) {
                xi0 xi0Var = this.f5661try;
                ti0 ti0Var = ti0.PROTOCOL_ERROR;
                xi0Var.m3021for(ti0Var, ti0Var, e);
                return -1L;
            }
        }
    }

    /* compiled from: TaskQueue.kt */
    /* renamed from: com.apk.xi0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends ph0 {

        /* renamed from: case  reason: not valid java name */
        public final /* synthetic */ long f5662case;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ xi0 f5663try;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(String str, String str2, xi0 xi0Var, long j) {
            super(str2, true);
            this.f5663try = xi0Var;
            this.f5662case = j;
        }

        @Override // com.apk.ph0
        /* renamed from: do */
        public long mo56do() {
            boolean z;
            synchronized (this.f5663try) {
                if (this.f5663try.f5640final < this.f5663try.f5635const) {
                    z = true;
                } else {
                    this.f5663try.f5635const++;
                    z = false;
                }
            }
            if (z) {
                xi0 xi0Var = this.f5663try;
                ti0 ti0Var = ti0.PROTOCOL_ERROR;
                xi0Var.m3021for(ti0Var, ti0Var, null);
                return -1L;
            }
            this.f5663try.m3020finally(false, 1, 0);
            return this.f5662case;
        }
    }

    /* compiled from: Http2Connection.kt */
    /* renamed from: com.apk.xi0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static abstract class Cfor {
        @JvmField
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public static final Cfor f5664do = new Cdo();

        /* compiled from: Http2Connection.kt */
        /* renamed from: com.apk.xi0$for$do  reason: invalid class name */
        /* loaded from: classes7.dex */
        public static final class Cdo extends Cfor {
            @Override // com.apk.xi0.Cfor
            /* renamed from: for */
            public void mo187for(@NotNull gj0 gj0Var) throws IOException {
                nd0.m1875new(gj0Var, "stream");
                gj0Var.m966for(ti0.REFUSED_STREAM, null);
            }
        }

        /* renamed from: for */
        public abstract void mo187for(@NotNull gj0 gj0Var) throws IOException;

        /* renamed from: if */
        public void mo189if(@NotNull xi0 xi0Var, @NotNull lj0 lj0Var) {
            nd0.m1875new(xi0Var, "connection");
            nd0.m1875new(lj0Var, "settings");
        }
    }

    /* compiled from: Http2Connection.kt */
    /* renamed from: com.apk.xi0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        @NotNull

        /* renamed from: case  reason: not valid java name */
        public kj0 f5665case;
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public Socket f5666do;

        /* renamed from: else  reason: not valid java name */
        public int f5667else;
        @NotNull

        /* renamed from: for  reason: not valid java name */
        public tk0 f5668for;

        /* renamed from: goto  reason: not valid java name */
        public boolean f5669goto;
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public String f5670if;
        @NotNull

        /* renamed from: new  reason: not valid java name */
        public sk0 f5671new;
        @NotNull

        /* renamed from: this  reason: not valid java name */
        public final sh0 f5672this;
        @NotNull

        /* renamed from: try  reason: not valid java name */
        public Cfor f5673try;

        public Cif(boolean z, @NotNull sh0 sh0Var) {
            nd0.m1875new(sh0Var, "taskRunner");
            this.f5669goto = z;
            this.f5672this = sh0Var;
            this.f5673try = Cfor.f5664do;
            this.f5665case = kj0.f2576do;
        }
    }

    /* compiled from: Http2Connection.kt */
    /* renamed from: com.apk.xi0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cnew implements fj0.Cif, hd0<nc0> {
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public final fj0 f5674do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ xi0 f5675if;

        /* compiled from: TaskQueue.kt */
        /* renamed from: com.apk.xi0$new$do  reason: invalid class name */
        /* loaded from: classes7.dex */
        public static final class Cdo extends ph0 {

            /* renamed from: case  reason: not valid java name */
            public final /* synthetic */ Cnew f5676case;

            /* renamed from: try  reason: not valid java name */
            public final /* synthetic */ gj0 f5677try;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(String str, boolean z, String str2, boolean z2, gj0 gj0Var, Cnew cnew, gj0 gj0Var2, int i, List list, boolean z3) {
                super(str2, z2);
                this.f5677try = gj0Var;
                this.f5676case = cnew;
            }

            @Override // com.apk.ph0
            /* renamed from: do */
            public long mo56do() {
                try {
                    this.f5676case.f5675if.f5644if.mo187for(this.f5677try);
                    return -1L;
                } catch (IOException e) {
                    uj0.Cdo cdo = uj0.f4907for;
                    uj0 uj0Var = uj0.f4906do;
                    StringBuilder m1016super = Cgoto.m1016super("Http2Connection.Listener failure for ");
                    m1016super.append(this.f5676case.f5675if.f5647new);
                    uj0Var.m2706this(m1016super.toString(), 4, e);
                    try {
                        this.f5677try.m966for(ti0.PROTOCOL_ERROR, e);
                        return -1L;
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
            }
        }

        /* compiled from: TaskQueue.kt */
        /* renamed from: com.apk.xi0$new$for  reason: invalid class name */
        /* loaded from: classes7.dex */
        public static final class Cfor extends ph0 {

            /* renamed from: case  reason: not valid java name */
            public final /* synthetic */ boolean f5678case;

            /* renamed from: else  reason: not valid java name */
            public final /* synthetic */ lj0 f5679else;

            /* renamed from: try  reason: not valid java name */
            public final /* synthetic */ Cnew f5680try;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cfor(String str, boolean z, String str2, boolean z2, Cnew cnew, boolean z3, lj0 lj0Var) {
                super(str2, z2);
                this.f5680try = cnew;
                this.f5678case = z3;
                this.f5679else = lj0Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0081 A[Catch: all -> 0x010a, TRY_LEAVE, TryCatch #4 {all -> 0x010a, blocks: (B:8:0x0027, B:12:0x003a, B:14:0x0050, B:17:0x005b, B:19:0x006b, B:23:0x0077, B:25:0x0081, B:20:0x006e, B:21:0x0075, B:11:0x002f), top: B:71:0x0027 }] */
            /* JADX WARN: Removed duplicated region for block: B:50:0x0103  */
            /* JADX WARN: Type inference failed for: r3v1, types: [T, com.apk.lj0] */
            /* JADX WARN: Type inference failed for: r3v13 */
            /* JADX WARN: Type inference failed for: r3v14 */
            @Override // com.apk.ph0
            /* renamed from: do */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public long mo56do() {
                /*
                    Method dump skipped, instructions count: 281
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.apk.xi0.Cnew.Cfor.mo56do():long");
            }
        }

        /* compiled from: TaskQueue.kt */
        /* renamed from: com.apk.xi0$new$if  reason: invalid class name */
        /* loaded from: classes7.dex */
        public static final class Cif extends ph0 {

            /* renamed from: case  reason: not valid java name */
            public final /* synthetic */ int f5681case;

            /* renamed from: else  reason: not valid java name */
            public final /* synthetic */ int f5682else;

            /* renamed from: try  reason: not valid java name */
            public final /* synthetic */ Cnew f5683try;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cif(String str, boolean z, String str2, boolean z2, Cnew cnew, int i, int i2) {
                super(str2, z2);
                this.f5683try = cnew;
                this.f5681case = i;
                this.f5682else = i2;
            }

            @Override // com.apk.ph0
            /* renamed from: do */
            public long mo56do() {
                this.f5683try.f5675if.m3020finally(true, this.f5681case, this.f5682else);
                return -1L;
            }
        }

        public Cnew(@NotNull xi0 xi0Var, fj0 fj0Var) {
            nd0.m1875new(fj0Var, "reader");
            this.f5675if = xi0Var;
            this.f5674do = fj0Var;
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: break */
        public void mo835break(int i, int i2, @NotNull List<ui0> list) {
            nd0.m1875new(list, "requestHeaders");
            xi0 xi0Var = this.f5675if;
            if (xi0Var != null) {
                nd0.m1875new(list, "requestHeaders");
                synchronized (xi0Var) {
                    if (xi0Var.f5648package.contains(Integer.valueOf(i2))) {
                        xi0Var.m3022package(i2, ti0.PROTOCOL_ERROR);
                        return;
                    }
                    xi0Var.f5648package.add(Integer.valueOf(i2));
                    String str = xi0Var.f5647new + '[' + i2 + "] onRequest";
                    xi0Var.f5631break.m2271for(new bj0(str, true, str, true, xi0Var, i2, list), 0L);
                    return;
                }
            }
            throw null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:60:0x015c, code lost:
            throw new java.lang.NullPointerException("null cannot be cast to non-null type java.lang.Object");
         */
        @Override // com.apk.fj0.Cif
        /* renamed from: case */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo836case(boolean r17, int r18, @org.jetbrains.annotations.NotNull com.apk.tk0 r19, int r20) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 380
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.xi0.Cnew.mo836case(boolean, int, com.apk.tk0, int):void");
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: catch */
        public void mo837catch(int i, @NotNull ti0 ti0Var, @NotNull uk0 uk0Var) {
            int i2;
            gj0[] gj0VarArr;
            nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
            nd0.m1875new(uk0Var, "debugData");
            uk0Var.mo1239for();
            synchronized (this.f5675if) {
                Object[] array = this.f5675if.f5642for.values().toArray(new gj0[0]);
                if (array != null) {
                    gj0VarArr = (gj0[]) array;
                    this.f5675if.f5638else = true;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            for (gj0 gj0Var : gj0VarArr) {
                if (gj0Var.f1580const > i && gj0Var.m967goto()) {
                    gj0Var.m962catch(ti0.REFUSED_STREAM);
                    this.f5675if.m3024throw(gj0Var.f1580const);
                }
            }
        }

        @Override // com.apk.hd0
        /* renamed from: do */
        public nc0 mo51do() {
            ti0 ti0Var;
            ti0 ti0Var2 = ti0.PROTOCOL_ERROR;
            ti0 ti0Var3 = ti0.INTERNAL_ERROR;
            try {
                try {
                    this.f5674do.m834try(this);
                    while (this.f5674do.m832for(false, this)) {
                    }
                    ti0Var = ti0.NO_ERROR;
                } catch (Throwable th) {
                    th = th;
                    ti0Var = ti0Var3;
                }
            } catch (IOException e) {
                this.f5675if.m3021for(ti0Var2, ti0Var2, e);
            }
            try {
                this.f5675if.m3021for(ti0Var, ti0.CANCEL, null);
                jh0.m1316case(this.f5674do);
                return nc0.f3206do;
            } catch (Throwable th2) {
                th = th2;
                this.f5675if.m3021for(ti0Var, ti0Var3, null);
                jh0.m1316case(this.f5674do);
                throw th;
            }
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: else */
        public void mo838else(boolean z, int i, int i2) {
            if (z) {
                synchronized (this.f5675if) {
                    if (i == 1) {
                        this.f5675if.f5640final++;
                    } else if (i == 2) {
                        this.f5675if.f5655throw++;
                    } else if (i == 3) {
                        this.f5675if.f5658while++;
                        xi0 xi0Var = this.f5675if;
                        if (xi0Var == null) {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                        }
                        xi0Var.notifyAll();
                    }
                }
                return;
            }
            rh0 rh0Var = this.f5675if.f5654this;
            String m991class = Cgoto.m991class(new StringBuilder(), this.f5675if.f5647new, " ping");
            rh0Var.m2271for(new Cif(m991class, true, m991class, true, this, i, i2), 0L);
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: for */
        public void mo839for(boolean z, @NotNull lj0 lj0Var) {
            nd0.m1875new(lj0Var, "settings");
            rh0 rh0Var = this.f5675if.f5654this;
            String m991class = Cgoto.m991class(new StringBuilder(), this.f5675if.f5647new, " applyAndAckSettings");
            rh0Var.m2271for(new Cfor(m991class, true, m991class, true, this, z, lj0Var), 0L);
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: goto */
        public void mo840goto(int i, int i2, int i3, boolean z) {
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: if */
        public void mo841if() {
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: new */
        public void mo842new(boolean z, int i, int i2, @NotNull List<ui0> list) {
            nd0.m1875new(list, "headerBlock");
            if (this.f5675if.m3017break(i)) {
                xi0 xi0Var = this.f5675if;
                if (xi0Var != null) {
                    nd0.m1875new(list, "requestHeaders");
                    String str = xi0Var.f5647new + '[' + i + "] onHeaders";
                    xi0Var.f5631break.m2271for(new aj0(str, true, str, true, xi0Var, i, list, z), 0L);
                    return;
                }
                throw null;
            }
            synchronized (this.f5675if) {
                gj0 m3026try = this.f5675if.m3026try(i);
                if (m3026try == null) {
                    if (this.f5675if.f5638else) {
                        return;
                    }
                    if (i <= this.f5675if.f5657try) {
                        return;
                    }
                    if (i % 2 == this.f5675if.f5632case % 2) {
                        return;
                    }
                    gj0 gj0Var = new gj0(i, this.f5675if, false, z, jh0.m1336private(list));
                    this.f5675if.f5657try = i;
                    this.f5675if.f5642for.put(Integer.valueOf(i), gj0Var);
                    String str2 = this.f5675if.f5647new + '[' + i + "] onStream";
                    this.f5675if.f5643goto.m2468case().m2271for(new Cdo(str2, true, str2, true, gj0Var, this, m3026try, i, list, z), 0L);
                    return;
                }
                m3026try.m960break(jh0.m1336private(list), z);
            }
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: this */
        public void mo843this(int i, @NotNull ti0 ti0Var) {
            nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
            if (this.f5675if.m3017break(i)) {
                xi0 xi0Var = this.f5675if;
                if (xi0Var != null) {
                    nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
                    String str = xi0Var.f5647new + '[' + i + "] onReset";
                    xi0Var.f5631break.m2271for(new cj0(str, true, str, true, xi0Var, i, ti0Var), 0L);
                    return;
                }
                throw null;
            }
            gj0 m3024throw = this.f5675if.m3024throw(i);
            if (m3024throw != null) {
                m3024throw.m962catch(ti0Var);
            }
        }

        @Override // com.apk.fj0.Cif
        /* renamed from: try */
        public void mo844try(int i, long j) {
            if (i == 0) {
                synchronized (this.f5675if) {
                    this.f5675if.f5656throws += j;
                    xi0 xi0Var = this.f5675if;
                    if (xi0Var != null) {
                        xi0Var.notifyAll();
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                }
                return;
            }
            gj0 m3026try = this.f5675if.m3026try(i);
            if (m3026try != null) {
                synchronized (m3026try) {
                    m3026try.f1587new += j;
                    if (j > 0) {
                        m3026try.notifyAll();
                    }
                }
            }
        }
    }

    /* compiled from: TaskQueue.kt */
    /* renamed from: com.apk.xi0$try  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ctry extends ph0 {

        /* renamed from: case  reason: not valid java name */
        public final /* synthetic */ int f5684case;

        /* renamed from: else  reason: not valid java name */
        public final /* synthetic */ ti0 f5685else;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ xi0 f5686try;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(String str, boolean z, String str2, boolean z2, xi0 xi0Var, int i, ti0 ti0Var) {
            super(str2, z2);
            this.f5686try = xi0Var;
            this.f5684case = i;
            this.f5685else = ti0Var;
        }

        @Override // com.apk.ph0
        /* renamed from: do */
        public long mo56do() {
            try {
                xi0 xi0Var = this.f5686try;
                int i = this.f5684case;
                ti0 ti0Var = this.f5685else;
                if (xi0Var != null) {
                    nd0.m1875new(ti0Var, "statusCode");
                    xi0Var.f5639extends.m1129extends(i, ti0Var);
                    return -1L;
                }
                throw null;
            } catch (IOException e) {
                xi0 xi0Var2 = this.f5686try;
                ti0 ti0Var2 = ti0.PROTOCOL_ERROR;
                xi0Var2.m3021for(ti0Var2, ti0Var2, e);
                return -1L;
            }
        }
    }

    static {
        lj0 lj0Var = new lj0();
        lj0Var.m1637for(7, 65535);
        lj0Var.m1637for(5, 16384);
        f5630private = lj0Var;
    }

    public xi0(@NotNull Cif cif) {
        nd0.m1875new(cif, "builder");
        this.f5637do = cif.f5669goto;
        this.f5644if = cif.f5673try;
        this.f5642for = new LinkedHashMap();
        String str = cif.f5670if;
        if (str != null) {
            this.f5647new = str;
            this.f5632case = cif.f5669goto ? 3 : 2;
            sh0 sh0Var = cif.f5672this;
            this.f5643goto = sh0Var;
            this.f5654this = sh0Var.m2468case();
            this.f5631break = this.f5643goto.m2468case();
            this.f5633catch = this.f5643goto.m2468case();
            this.f5634class = cif.f5665case;
            lj0 lj0Var = new lj0();
            if (cif.f5669goto) {
                lj0Var.m1637for(7, 16777216);
            }
            this.f5646native = lj0Var;
            lj0 lj0Var2 = f5630private;
            this.f5649public = lj0Var2;
            this.f5656throws = lj0Var2.m1636do();
            Socket socket = cif.f5666do;
            if (socket != null) {
                this.f5636default = socket;
                sk0 sk0Var = cif.f5671new;
                if (sk0Var != null) {
                    this.f5639extends = new hj0(sk0Var, this.f5637do);
                    tk0 tk0Var = cif.f5668for;
                    if (tk0Var != null) {
                        this.f5641finally = new Cnew(this, new fj0(tk0Var, this.f5637do));
                        this.f5648package = new LinkedHashSet();
                        int i = cif.f5667else;
                        if (i != 0) {
                            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
                            rh0 rh0Var = this.f5654this;
                            String m991class = Cgoto.m991class(new StringBuilder(), this.f5647new, " ping");
                            rh0Var.m2271for(new Cdo(m991class, m991class, this, nanos), nanos);
                            return;
                        }
                        return;
                    }
                    nd0.m1876this("source");
                    throw null;
                }
                nd0.m1876this("sink");
                throw null;
            }
            nd0.m1876this("socket");
            throw null;
        }
        nd0.m1876this("connectionName");
        throw null;
    }

    /* renamed from: break  reason: not valid java name */
    public final boolean m3017break(int i) {
        return i != 0 && (i & 1) == 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m3021for(ti0.NO_ERROR, ti0.CANCEL, null);
    }

    /* renamed from: default  reason: not valid java name */
    public final synchronized void m3018default(long j) {
        long j2 = this.f5650return + j;
        this.f5650return = j2;
        long j3 = j2 - this.f5651static;
        if (j3 >= this.f5646native.m1636do() / 2) {
            m3023private(0, j3);
            this.f5651static += j3;
        }
    }

    /* renamed from: extends  reason: not valid java name */
    public final void m3019extends(int i, boolean z, @Nullable rk0 rk0Var, long j) throws IOException {
        int min;
        long j2;
        if (j == 0) {
            this.f5639extends.m1135try(z, i, rk0Var, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.f5653switch >= this.f5656throws) {
                    try {
                        if (this.f5642for.containsKey(Integer.valueOf(i))) {
                            wait();
                        } else {
                            throw new IOException("stream closed");
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j, this.f5656throws - this.f5653switch), this.f5639extends.f1871if);
                j2 = min;
                this.f5653switch += j2;
            }
            j -= j2;
            this.f5639extends.m1135try(z && j == 0, i, rk0Var, min);
        }
    }

    /* renamed from: finally  reason: not valid java name */
    public final void m3020finally(boolean z, int i, int i2) {
        try {
            this.f5639extends.m1128default(z, i, i2);
        } catch (IOException e) {
            ti0 ti0Var = ti0.PROTOCOL_ERROR;
            m3021for(ti0Var, ti0Var, e);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3021for(@NotNull ti0 ti0Var, @NotNull ti0 ti0Var2, @Nullable IOException iOException) {
        int i;
        nd0.m1875new(ti0Var, "connectionCode");
        nd0.m1875new(ti0Var2, "streamCode");
        if (jh0.f2333goto && Thread.holdsLock(this)) {
            StringBuilder m1016super = Cgoto.m1016super("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            m1016super.append(currentThread.getName());
            m1016super.append(" MUST NOT hold lock on ");
            m1016super.append(this);
            throw new AssertionError(m1016super.toString());
        }
        try {
            m3025throws(ti0Var);
        } catch (IOException unused) {
        }
        gj0[] gj0VarArr = null;
        synchronized (this) {
            if (!this.f5642for.isEmpty()) {
                Object[] array = this.f5642for.values().toArray(new gj0[0]);
                if (array != null) {
                    gj0VarArr = (gj0[]) array;
                    this.f5642for.clear();
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
        }
        if (gj0VarArr != null) {
            for (gj0 gj0Var : gj0VarArr) {
                try {
                    gj0Var.m966for(ti0Var2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.f5639extends.close();
        } catch (IOException unused3) {
        }
        try {
            this.f5636default.close();
        } catch (IOException unused4) {
        }
        this.f5654this.m2269case();
        this.f5631break.m2269case();
        this.f5633catch.m2269case();
    }

    /* renamed from: package  reason: not valid java name */
    public final void m3022package(int i, @NotNull ti0 ti0Var) {
        nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
        String str = this.f5647new + '[' + i + "] writeSynReset";
        this.f5654this.m2271for(new Ctry(str, true, str, true, this, i, ti0Var), 0L);
    }

    /* renamed from: private  reason: not valid java name */
    public final void m3023private(int i, long j) {
        String str = this.f5647new + '[' + i + "] windowUpdate";
        this.f5654this.m2271for(new Ccase(str, true, str, true, this, i, j), 0L);
    }

    @Nullable
    /* renamed from: throw  reason: not valid java name */
    public final synchronized gj0 m3024throw(int i) {
        gj0 remove;
        remove = this.f5642for.remove(Integer.valueOf(i));
        notifyAll();
        return remove;
    }

    /* renamed from: throws  reason: not valid java name */
    public final void m3025throws(@NotNull ti0 ti0Var) throws IOException {
        nd0.m1875new(ti0Var, "statusCode");
        synchronized (this.f5639extends) {
            synchronized (this) {
                if (this.f5638else) {
                    return;
                }
                this.f5638else = true;
                this.f5639extends.m1133throw(this.f5657try, ti0Var, jh0.f2330do);
            }
        }
    }

    @Nullable
    /* renamed from: try  reason: not valid java name */
    public final synchronized gj0 m3026try(int i) {
        return this.f5642for.get(Integer.valueOf(i));
    }
}
