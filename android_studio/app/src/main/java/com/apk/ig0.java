package com.apk;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Cookie.kt */
/* loaded from: classes7.dex */
public final class ig0 {

    /* renamed from: break  reason: not valid java name */
    public static final Pattern f2095break = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: catch  reason: not valid java name */
    public static final Pattern f2096catch = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: class  reason: not valid java name */
    public static final Pattern f2097class = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: const  reason: not valid java name */
    public static final Pattern f2098const = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: final  reason: not valid java name */
    public static final ig0 f2099final = null;

    /* renamed from: case  reason: not valid java name */
    public final boolean f2100case;
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final String f2101do;

    /* renamed from: else  reason: not valid java name */
    public final boolean f2102else;

    /* renamed from: for  reason: not valid java name */
    public final long f2103for;

    /* renamed from: goto  reason: not valid java name */
    public final boolean f2104goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final String f2105if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final String f2106new;

    /* renamed from: this  reason: not valid java name */
    public final boolean f2107this;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final String f2108try;

    public ig0(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, md0 md0Var) {
        this.f2101do = str;
        this.f2105if = str2;
        this.f2103for = j;
        this.f2106new = str3;
        this.f2108try = str4;
        this.f2100case = z;
        this.f2102else = z2;
        this.f2104goto = z3;
        this.f2107this = z4;
    }

    /* renamed from: do  reason: not valid java name */
    public static final int m1215do(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && '9' >= charAt) || (('a' <= charAt && 'z' >= charAt) || (('A' <= charAt && 'Z' >= charAt) || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: for  reason: not valid java name */
    public static final long m1216for(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e) {
            nd0.m1875new("-?\\d+", "pattern");
            Pattern compile = Pattern.compile("-?\\d+");
            nd0.m1872for(compile, "Pattern.compile(pattern)");
            nd0.m1875new(compile, "nativePattern");
            nd0.m1875new(str, "input");
            if (compile.matcher(str).matches()) {
                if (ie0.m1206static(str, "-", false, 2)) {
                    return Long.MIN_VALUE;
                }
                return RecyclerView.FOREVER_NS;
            }
            throw e;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static final long m1217if(String str, int i, int i2) {
        int m1215do = m1215do(str, i, i2, false);
        Matcher matcher = f2098const.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        while (m1215do < i2) {
            int m1215do2 = m1215do(str, m1215do + 1, i2, true);
            matcher.region(m1215do, m1215do2);
            if (i4 == -1 && matcher.usePattern(f2098const).matches()) {
                String group = matcher.group(1);
                nd0.m1872for(group, "matcher.group(1)");
                int parseInt = Integer.parseInt(group);
                String group2 = matcher.group(2);
                nd0.m1872for(group2, "matcher.group(2)");
                int parseInt2 = Integer.parseInt(group2);
                String group3 = matcher.group(3);
                nd0.m1872for(group3, "matcher.group(3)");
                i8 = Integer.parseInt(group3);
                i7 = parseInt2;
                i4 = parseInt;
            } else if (i5 == -1 && matcher.usePattern(f2097class).matches()) {
                String group4 = matcher.group(1);
                nd0.m1872for(group4, "matcher.group(1)");
                i5 = Integer.parseInt(group4);
            } else if (i6 == -1 && matcher.usePattern(f2096catch).matches()) {
                String group5 = matcher.group(1);
                nd0.m1872for(group5, "matcher.group(1)");
                Locale locale = Locale.US;
                nd0.m1872for(locale, "Locale.US");
                String lowerCase = group5.toLowerCase(locale);
                nd0.m1872for(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                String pattern = f2096catch.pattern();
                nd0.m1872for(pattern, "MONTH_PATTERN.pattern()");
                i6 = ie0.m1189break(pattern, lowerCase, 0, false, 6) / 4;
            } else if (i3 == -1 && matcher.usePattern(f2095break).matches()) {
                String group6 = matcher.group(1);
                nd0.m1872for(group6, "matcher.group(1)");
                i3 = Integer.parseInt(group6);
            }
            m1215do = m1215do(str, m1215do2 + 1, i2, false);
        }
        if (70 <= i3 && 99 >= i3) {
            i3 += 1900;
        }
        if (i3 >= 0 && 69 >= i3) {
            i3 += 2000;
        }
        if (i3 >= 1601) {
            if (i6 != -1) {
                if (1 <= i5 && 31 >= i5) {
                    if (i4 >= 0 && 23 >= i4) {
                        if (i7 >= 0 && 59 >= i7) {
                            if (i8 >= 0 && 59 >= i8) {
                                GregorianCalendar gregorianCalendar = new GregorianCalendar(jh0.f2329case);
                                gregorianCalendar.setLenient(false);
                                gregorianCalendar.set(1, i3);
                                gregorianCalendar.set(2, i6 - 1);
                                gregorianCalendar.set(5, i5);
                                gregorianCalendar.set(11, i4);
                                gregorianCalendar.set(12, i7);
                                gregorianCalendar.set(13, i8);
                                gregorianCalendar.set(14, 0);
                                return gregorianCalendar.getTimeInMillis();
                            }
                            throw new IllegalArgumentException("Failed requirement.".toString());
                        }
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ig0) {
            ig0 ig0Var = (ig0) obj;
            if (nd0.m1870do(ig0Var.f2101do, this.f2101do) && nd0.m1870do(ig0Var.f2105if, this.f2105if) && ig0Var.f2103for == this.f2103for && nd0.m1870do(ig0Var.f2106new, this.f2106new) && nd0.m1870do(ig0Var.f2108try, this.f2108try) && ig0Var.f2100case == this.f2100case && ig0Var.f2102else == this.f2102else && ig0Var.f2104goto == this.f2104goto && ig0Var.f2107this == this.f2107this) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        int hashCode = this.f2105if.hashCode();
        int hashCode2 = this.f2106new.hashCode();
        return ((((((((this.f2108try.hashCode() + ((hashCode2 + ((((hashCode + ((this.f2101do.hashCode() + 527) * 31)) * 31) + Cif.m1214do(this.f2103for)) * 31)) * 31)) * 31) + Cdo.m487do(this.f2100case)) * 31) + Cdo.m487do(this.f2102else)) * 31) + Cdo.m487do(this.f2104goto)) * 31) + Cdo.m487do(this.f2107this);
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2101do);
        sb.append('=');
        sb.append(this.f2105if);
        if (this.f2104goto) {
            if (this.f2103for == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(ii0.m1225do(new Date(this.f2103for)));
            }
        }
        if (!this.f2107this) {
            sb.append("; domain=");
            sb.append(this.f2106new);
        }
        sb.append("; path=");
        sb.append(this.f2108try);
        if (this.f2100case) {
            sb.append("; secure");
        }
        if (this.f2102else) {
            sb.append("; httponly");
        }
        String sb2 = sb.toString();
        nd0.m1872for(sb2, "toString()");
        return sb2;
    }
}
