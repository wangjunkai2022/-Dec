package com.apk;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MediaType.kt */
/* loaded from: classes7.dex */
public final class vg0 {

    /* renamed from: else  reason: not valid java name */
    public static final Cdo f5075else = null;

    /* renamed from: do  reason: not valid java name */
    public final String f5077do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final String f5078for;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final String f5079if;

    /* renamed from: new  reason: not valid java name */
    public final String[] f5080new;

    /* renamed from: try  reason: not valid java name */
    public static final Pattern f5076try = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: case  reason: not valid java name */
    public static final Pattern f5074case = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* compiled from: MediaType.kt */
    /* renamed from: com.apk.vg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        @JvmStatic
        @JvmName(name = "get")
        @NotNull
        /* renamed from: do  reason: not valid java name */
        public static final vg0 m2793do(@NotNull String str) {
            nd0.m1875new(str, "$this$toMediaType");
            Matcher matcher = vg0.f5076try.matcher(str);
            if (matcher.lookingAt()) {
                String group = matcher.group(1);
                nd0.m1872for(group, "typeSubtype.group(1)");
                Locale locale = Locale.US;
                nd0.m1872for(locale, "Locale.US");
                String lowerCase = group.toLowerCase(locale);
                nd0.m1872for(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                String group2 = matcher.group(2);
                nd0.m1872for(group2, "typeSubtype.group(2)");
                Locale locale2 = Locale.US;
                nd0.m1872for(locale2, "Locale.US");
                String lowerCase2 = group2.toLowerCase(locale2);
                nd0.m1872for(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                ArrayList arrayList = new ArrayList();
                Matcher matcher2 = vg0.f5074case.matcher(str);
                int end = matcher.end();
                while (end < str.length()) {
                    matcher2.region(end, str.length());
                    if (matcher2.lookingAt()) {
                        String group3 = matcher2.group(1);
                        if (group3 == null) {
                            end = matcher2.end();
                        } else {
                            String group4 = matcher2.group(2);
                            if (group4 == null) {
                                group4 = matcher2.group(3);
                            } else if (ie0.m1206static(group4, "'", false, 2) && ie0.m1198for(group4, "'", false, 2) && group4.length() > 2) {
                                group4 = group4.substring(1, group4.length() - 1);
                                nd0.m1872for(group4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                            }
                            arrayList.add(group3);
                            arrayList.add(group4);
                            end = matcher2.end();
                        }
                    } else {
                        StringBuilder m1016super = Cgoto.m1016super("Parameter is not formatted correctly: \"");
                        String substring = str.substring(end);
                        nd0.m1872for(substring, "(this as java.lang.String).substring(startIndex)");
                        m1016super.append(substring);
                        m1016super.append("\" for: \"");
                        m1016super.append(str);
                        m1016super.append('\"');
                        throw new IllegalArgumentException(m1016super.toString().toString());
                    }
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    return new vg0(str, lowerCase, lowerCase2, (String[]) array, null);
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
        }

        @JvmStatic
        @JvmName(name = "parse")
        @Nullable
        /* renamed from: if  reason: not valid java name */
        public static final vg0 m2794if(@NotNull String str) {
            nd0.m1875new(str, "$this$toMediaTypeOrNull");
            try {
                return m2793do(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public vg0(String str, String str2, String str3, String[] strArr, md0 md0Var) {
        this.f5077do = str;
        this.f5079if = str2;
        this.f5078for = str3;
        this.f5080new = strArr;
    }

    @JvmStatic
    @JvmName(name = "parse")
    @Nullable
    /* renamed from: for  reason: not valid java name */
    public static final vg0 m2790for(@NotNull String str) {
        return Cdo.m2794if(str);
    }

    /* renamed from: if  reason: not valid java name */
    public static /* synthetic */ Charset m2791if(vg0 vg0Var, Charset charset, int i) {
        int i2 = i & 1;
        return vg0Var.m2792do(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    @kotlin.jvm.JvmOverloads
    @org.jetbrains.annotations.Nullable
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.nio.charset.Charset m2792do(@org.jetbrains.annotations.Nullable java.nio.charset.Charset r7) {
        /*
            r6 = this;
            java.lang.String r0 = "charset"
            java.lang.String r1 = "name"
            com.apk.nd0.m1875new(r0, r1)
            java.lang.String[] r1 = r6.f5080new
            java.lang.String r2 = "$this$indices"
            com.apk.nd0.m1875new(r1, r2)
            com.apk.xd0 r2 = new com.apk.xd0
            java.lang.String r3 = "$this$lastIndex"
            com.apk.nd0.m1875new(r1, r3)
            int r1 = r1.length
            int r1 = r1 + (-1)
            r3 = 0
            r2.<init>(r3, r1)
            r1 = 2
            com.apk.vd0 r1 = com.apk.yd0.m3060if(r2, r1)
            int r2 = r1.f5067do
            int r3 = r1.f5069if
            int r1 = r1.f5068for
            if (r1 < 0) goto L2c
            if (r2 > r3) goto L43
            goto L2e
        L2c:
            if (r2 < r3) goto L43
        L2e:
            java.lang.String[] r4 = r6.f5080new
            r4 = r4[r2]
            r5 = 1
            boolean r4 = com.apk.ie0.m1203new(r4, r0, r5)
            if (r4 == 0) goto L3f
            java.lang.String[] r0 = r6.f5080new
            int r2 = r2 + r5
            r0 = r0[r2]
            goto L44
        L3f:
            if (r2 == r3) goto L43
            int r2 = r2 + r1
            goto L2e
        L43:
            r0 = 0
        L44:
            if (r0 == 0) goto L4a
            java.nio.charset.Charset r7 = java.nio.charset.Charset.forName(r0)     // Catch: java.lang.IllegalArgumentException -> L4a
        L4a:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.vg0.m2792do(java.nio.charset.Charset):java.nio.charset.Charset");
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof vg0) && nd0.m1870do(((vg0) obj).f5077do, this.f5077do);
    }

    public int hashCode() {
        return this.f5077do.hashCode();
    }

    @NotNull
    public String toString() {
        return this.f5077do;
    }
}
