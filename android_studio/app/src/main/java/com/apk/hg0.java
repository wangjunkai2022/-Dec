package com.apk;

import com.apk.eg0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.Deprecated;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ConnectionSpec.kt */
/* loaded from: classes7.dex */
public final class hg0 {

    /* renamed from: case  reason: not valid java name */
    public static final eg0[] f1853case;
    @JvmField
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public static final hg0 f1854else;
    @JvmField
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public static final hg0 f1855goto;

    /* renamed from: try  reason: not valid java name */
    public static final eg0[] f1856try;

    /* renamed from: do  reason: not valid java name */
    public final boolean f1857do;

    /* renamed from: for  reason: not valid java name */
    public final String[] f1858for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f1859if;

    /* renamed from: new  reason: not valid java name */
    public final String[] f1860new;

    /* compiled from: ConnectionSpec.kt */
    /* renamed from: com.apk.hg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {

        /* renamed from: do  reason: not valid java name */
        public boolean f1861do;
        @Nullable

        /* renamed from: for  reason: not valid java name */
        public String[] f1862for;
        @Nullable

        /* renamed from: if  reason: not valid java name */
        public String[] f1863if;

        /* renamed from: new  reason: not valid java name */
        public boolean f1864new;

        public Cdo(boolean z) {
            this.f1861do = z;
        }

        @NotNull
        /* renamed from: case  reason: not valid java name */
        public final Cdo m1120case(@NotNull gh0... gh0VarArr) {
            nd0.m1875new(gh0VarArr, "tlsVersions");
            if (this.f1861do) {
                ArrayList arrayList = new ArrayList(gh0VarArr.length);
                for (gh0 gh0Var : gh0VarArr) {
                    arrayList.add(gh0Var.f1574do);
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    m1125try((String[]) Arrays.copyOf(strArr, strArr.length));
                    return this;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }

        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final hg0 m1121do() {
            return new hg0(this.f1861do, this.f1864new, this.f1863if, this.f1862for);
        }

        @NotNull
        /* renamed from: for  reason: not valid java name */
        public final Cdo m1122for(@NotNull eg0... eg0VarArr) {
            nd0.m1875new(eg0VarArr, "cipherSuites");
            if (this.f1861do) {
                ArrayList arrayList = new ArrayList(eg0VarArr.length);
                for (eg0 eg0Var : eg0VarArr) {
                    arrayList.add(eg0Var.f1063do);
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    m1123if((String[]) Arrays.copyOf(strArr, strArr.length));
                    return this;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
        }

        @NotNull
        /* renamed from: if  reason: not valid java name */
        public final Cdo m1123if(@NotNull String... strArr) {
            nd0.m1875new(strArr, "cipherSuites");
            if (this.f1861do) {
                if (!(strArr.length == 0)) {
                    Object clone = strArr.clone();
                    if (clone != null) {
                        this.f1863if = (String[]) clone;
                        return this;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                }
                throw new IllegalArgumentException("At least one cipher suite is required".toString());
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
        }

        @Deprecated(message = "since OkHttp 3.13 all TLS-connections are expected to support TLS extensions.\nIn a future release setting this to true will be unnecessary and setting it to false\nwill have no effect.")
        @NotNull
        /* renamed from: new  reason: not valid java name */
        public final Cdo m1124new(boolean z) {
            if (this.f1861do) {
                this.f1864new = z;
                return this;
            }
            throw new IllegalArgumentException("no TLS extensions for cleartext connections".toString());
        }

        @NotNull
        /* renamed from: try  reason: not valid java name */
        public final Cdo m1125try(@NotNull String... strArr) {
            nd0.m1875new(strArr, "tlsVersions");
            if (this.f1861do) {
                if (!(strArr.length == 0)) {
                    Object clone = strArr.clone();
                    if (clone != null) {
                        this.f1862for = (String[]) clone;
                        return this;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                }
                throw new IllegalArgumentException("At least one TLS version is required".toString());
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }

        public Cdo(@NotNull hg0 hg0Var) {
            nd0.m1875new(hg0Var, "connectionSpec");
            this.f1861do = hg0Var.f1857do;
            this.f1863if = hg0Var.f1858for;
            this.f1862for = hg0Var.f1860new;
            this.f1864new = hg0Var.f1859if;
        }
    }

    static {
        gh0 gh0Var = gh0.TLS_1_2;
        gh0 gh0Var2 = gh0.TLS_1_3;
        f1856try = new eg0[]{eg0.f1062while, eg0.f1054import, eg0.f1055native, eg0.f1046catch, eg0.f1048const, eg0.f1047class, eg0.f1050final, eg0.f1060throw, eg0.f1058super};
        f1853case = new eg0[]{eg0.f1062while, eg0.f1054import, eg0.f1055native, eg0.f1046catch, eg0.f1048const, eg0.f1047class, eg0.f1050final, eg0.f1060throw, eg0.f1058super, eg0.f1059this, eg0.f1044break, eg0.f1049else, eg0.f1052goto, eg0.f1061try, eg0.f1045case, eg0.f1056new};
        Cdo cdo = new Cdo(true);
        eg0[] eg0VarArr = f1856try;
        cdo.m1122for((eg0[]) Arrays.copyOf(eg0VarArr, eg0VarArr.length));
        cdo.m1120case(gh0Var2, gh0Var);
        cdo.m1124new(true);
        cdo.m1121do();
        Cdo cdo2 = new Cdo(true);
        eg0[] eg0VarArr2 = f1853case;
        cdo2.m1122for((eg0[]) Arrays.copyOf(eg0VarArr2, eg0VarArr2.length));
        cdo2.m1120case(gh0Var2, gh0Var);
        cdo2.m1124new(true);
        f1854else = cdo2.m1121do();
        Cdo cdo3 = new Cdo(true);
        eg0[] eg0VarArr3 = f1853case;
        cdo3.m1122for((eg0[]) Arrays.copyOf(eg0VarArr3, eg0VarArr3.length));
        cdo3.m1120case(gh0Var2, gh0Var, gh0.TLS_1_1, gh0.TLS_1_0);
        cdo3.m1124new(true);
        cdo3.m1121do();
        f1855goto = new hg0(false, false, null, null);
    }

    public hg0(boolean z, boolean z2, @Nullable String[] strArr, @Nullable String[] strArr2) {
        this.f1857do = z;
        this.f1859if = z2;
        this.f1858for = strArr;
        this.f1860new = strArr2;
    }

    @JvmName(name = "cipherSuites")
    @Nullable
    /* renamed from: do  reason: not valid java name */
    public final List<eg0> m1117do() {
        String[] strArr = this.f1858for;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(eg0.f1057public.m625if(str));
            }
            return uc0.m2700this(arrayList);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof hg0) {
            if (obj == this) {
                return true;
            }
            boolean z = this.f1857do;
            hg0 hg0Var = (hg0) obj;
            if (z != hg0Var.f1857do) {
                return false;
            }
            return !z || (Arrays.equals(this.f1858for, hg0Var.f1858for) && Arrays.equals(this.f1860new, hg0Var.f1860new) && this.f1859if == hg0Var.f1859if);
        }
        return false;
    }

    @JvmName(name = "tlsVersions")
    @Nullable
    /* renamed from: for  reason: not valid java name */
    public final List<gh0> m1118for() {
        String[] strArr = this.f1860new;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(gh0.f1570goto.m958do(str));
            }
            return uc0.m2700this(arrayList);
        }
        return null;
    }

    public int hashCode() {
        if (this.f1857do) {
            String[] strArr = this.f1858for;
            int hashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
            String[] strArr2 = this.f1860new;
            return ((hashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.f1859if ? 1 : 0);
        }
        return 17;
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m1119if(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "socket");
        if (this.f1857do) {
            String[] strArr = this.f1860new;
            if (strArr == null || jh0.m1319const(strArr, sSLSocket.getEnabledProtocols(), bd0.f297do)) {
                String[] strArr2 = this.f1858for;
                if (strArr2 != null) {
                    String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
                    eg0.Cif cif = eg0.f1057public;
                    return jh0.m1319const(strArr2, enabledCipherSuites, eg0.f1053if);
                }
                return true;
            }
            return false;
        }
        return false;
    }

    @NotNull
    public String toString() {
        if (this.f1857do) {
            StringBuilder m1025while = Cgoto.m1025while("ConnectionSpec(", "cipherSuites=");
            m1025while.append(Objects.toString(m1117do(), "[all enabled]"));
            m1025while.append(", ");
            m1025while.append("tlsVersions=");
            m1025while.append(Objects.toString(m1118for(), "[all enabled]"));
            m1025while.append(", ");
            m1025while.append("supportsTlsExtensions=");
            m1025while.append(this.f1859if);
            m1025while.append(')');
            return m1025while.toString();
        }
        return "ConnectionSpec()";
    }
}
