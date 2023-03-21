package com.apk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.parser.LitePalParser;

/* compiled from: Headers.kt */
/* loaded from: classes7.dex */
public final class sg0 implements Iterable<jc0<? extends String, ? extends String>>, ud0 {

    /* renamed from: if  reason: not valid java name */
    public static final Cif f4351if = new Cif(null);

    /* renamed from: do  reason: not valid java name */
    public final String[] f4352do;

    /* compiled from: Headers.kt */
    /* renamed from: com.apk.sg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public final List<String> f4353do = new ArrayList(20);

        @NotNull
        /* renamed from: case  reason: not valid java name */
        public final Cdo m2458case(@NotNull String str, @NotNull String str2) {
            nd0.m1875new(str, "name");
            nd0.m1875new(str2, LitePalParser.ATTR_VALUE);
            if (str.length() > 0) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (!('!' <= charAt && '~' >= charAt)) {
                        throw new IllegalArgumentException(jh0.m1318class("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str).toString());
                    }
                }
                sg0.f4351if.m2466if(str2, str);
                m2463try(str);
                m2460for(str, str2);
                return this;
            }
            throw new IllegalArgumentException("name is empty".toString());
        }

        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final Cdo m2459do(@NotNull String str, @NotNull String str2) {
            nd0.m1875new(str, "name");
            nd0.m1875new(str2, LitePalParser.ATTR_VALUE);
            if (str.length() > 0) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (!('!' <= charAt && '~' >= charAt)) {
                        throw new IllegalArgumentException(jh0.m1318class("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str).toString());
                    }
                }
                sg0.f4351if.m2466if(str2, str);
                m2460for(str, str2);
                return this;
            }
            throw new IllegalArgumentException("name is empty".toString());
        }

        @NotNull
        /* renamed from: for  reason: not valid java name */
        public final Cdo m2460for(@NotNull String str, @NotNull String str2) {
            nd0.m1875new(str, "name");
            nd0.m1875new(str2, LitePalParser.ATTR_VALUE);
            this.f4353do.add(str);
            this.f4353do.add(ie0.m1211throws(str2).toString());
            return this;
        }

        @NotNull
        /* renamed from: if  reason: not valid java name */
        public final Cdo m2461if(@NotNull String str) {
            nd0.m1875new(str, "line");
            int m1209this = ie0.m1209this(str, ':', 1, false, 4);
            if (m1209this != -1) {
                String substring = str.substring(0, m1209this);
                nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String substring2 = str.substring(m1209this + 1);
                nd0.m1872for(substring2, "(this as java.lang.String).substring(startIndex)");
                m2460for(substring, substring2);
            } else if (str.charAt(0) == ':') {
                String substring3 = str.substring(1);
                nd0.m1872for(substring3, "(this as java.lang.String).substring(startIndex)");
                m2460for("", substring3);
            } else {
                m2460for("", str);
            }
            return this;
        }

        @NotNull
        /* renamed from: new  reason: not valid java name */
        public final sg0 m2462new() {
            Object[] array = this.f4353do.toArray(new String[0]);
            if (array != null) {
                return new sg0((String[]) array, null);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }

        @NotNull
        /* renamed from: try  reason: not valid java name */
        public final Cdo m2463try(@NotNull String str) {
            nd0.m1875new(str, "name");
            int i = 0;
            while (i < this.f4353do.size()) {
                if (ie0.m1203new(str, this.f4353do.get(i), true)) {
                    this.f4353do.remove(i);
                    this.f4353do.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }
    }

    /* compiled from: Headers.kt */
    /* renamed from: com.apk.sg0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        public Cif(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public final void m2464do(String str) {
            if (str.length() > 0) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (!('!' <= charAt && '~' >= charAt)) {
                        throw new IllegalArgumentException(jh0.m1318class("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty".toString());
        }

        @JvmStatic
        @JvmName(name = "of")
        @NotNull
        /* renamed from: for  reason: not valid java name */
        public final sg0 m2465for(@NotNull String... strArr) {
            nd0.m1875new(strArr, "namesAndValues");
            if (strArr.length % 2 == 0) {
                Object clone = strArr.clone();
                if (clone != null) {
                    String[] strArr2 = (String[]) clone;
                    int length = strArr2.length;
                    for (int i = 0; i < length; i++) {
                        if (strArr2[i] != null) {
                            String str = strArr2[i];
                            if (str == null) {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                            }
                            strArr2[i] = ie0.m1211throws(str).toString();
                        } else {
                            throw new IllegalArgumentException("Headers cannot be null".toString());
                        }
                    }
                    nd0.m1875new(strArr2, "$this$indices");
                    nd0.m1875new(strArr2, "$this$lastIndex");
                    vd0 m3060if = yd0.m3060if(new xd0(0, strArr2.length - 1), 2);
                    int i2 = m3060if.f5067do;
                    int i3 = m3060if.f5069if;
                    int i4 = m3060if.f5068for;
                    if (i4 < 0 ? i2 >= i3 : i2 <= i3) {
                        while (true) {
                            String str2 = strArr2[i2];
                            String str3 = strArr2[i2 + 1];
                            m2464do(str2);
                            m2466if(str3, str2);
                            if (i2 == i3) {
                                break;
                            }
                            i2 += i4;
                        }
                    }
                    return new sg0(strArr2, null);
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            }
            throw new IllegalArgumentException("Expected alternating header names and values".toString());
        }

        /* renamed from: if  reason: not valid java name */
        public final void m2466if(String str, String str2) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (!(charAt == '\t' || (' ' <= charAt && '~' >= charAt))) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(jh0.m1318class("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i), str2));
                    sb.append(jh0.m1343switch(str2) ? "" : Cgoto.m989case(": ", str));
                    throw new IllegalArgumentException(sb.toString().toString());
                }
            }
        }
    }

    public sg0(String[] strArr, md0 md0Var) {
        this.f4352do = strArr;
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public final String m2453do(@NotNull String str) {
        nd0.m1875new(str, "name");
        String[] strArr = this.f4352do;
        vd0 m3060if = yd0.m3060if(yd0.m3058do(strArr.length - 2, 0), 2);
        int i = m3060if.f5067do;
        int i2 = m3060if.f5069if;
        int i3 = m3060if.f5068for;
        if (i3 >= 0) {
            if (i > i2) {
                return null;
            }
        } else if (i < i2) {
            return null;
        }
        while (!ie0.m1203new(str, strArr[i], true)) {
            if (i == i2) {
                return null;
            }
            i += i3;
        }
        return strArr[i + 1];
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof sg0) && Arrays.equals(this.f4352do, ((sg0) obj).f4352do);
    }

    @NotNull
    /* renamed from: for  reason: not valid java name */
    public final Cdo m2454for() {
        Cdo cdo = new Cdo();
        List<String> list = cdo.f4353do;
        String[] strArr = this.f4352do;
        nd0.m1875new(list, "$this$addAll");
        nd0.m1875new(strArr, "elements");
        list.addAll(uc0.m2694do(strArr));
        return cdo;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4352do);
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public final String m2455if(int i) {
        return this.f4352do[i * 2];
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<jc0<? extends String, ? extends String>> iterator() {
        int size = size();
        jc0[] jc0VarArr = new jc0[size];
        for (int i = 0; i < size; i++) {
            jc0VarArr[i] = new jc0(m2455if(i), m2456new(i));
        }
        nd0.m1875new(jc0VarArr, "array");
        return new kd0(jc0VarArr);
    }

    @NotNull
    /* renamed from: new  reason: not valid java name */
    public final String m2456new(int i) {
        return this.f4352do[(i * 2) + 1];
    }

    @JvmName(name = "size")
    public final int size() {
        return this.f4352do.length / 2;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String m2455if = m2455if(i);
            String m2456new = m2456new(i);
            sb.append(m2455if);
            sb.append(": ");
            if (jh0.m1343switch(m2455if)) {
                m2456new = "██";
            }
            sb.append(m2456new);
            sb.append("\n");
        }
        String sb2 = sb.toString();
        nd0.m1872for(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @NotNull
    /* renamed from: try  reason: not valid java name */
    public final List<String> m2457try(@NotNull String str) {
        nd0.m1875new(str, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (ie0.m1203new(str, m2455if(i), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(m2456new(i));
            }
        }
        if (arrayList != null) {
            List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
            nd0.m1872for(unmodifiableList, "Collections.unmodifiableList(result)");
            return unmodifiableList;
        }
        return xc0.f5512do;
    }
}
