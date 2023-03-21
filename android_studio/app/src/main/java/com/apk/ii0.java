package com.apk;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;

/* compiled from: dates.kt */
/* loaded from: classes7.dex */
public final class ii0 {

    /* renamed from: do  reason: not valid java name */
    public static final Cdo f2123do = new Cdo();

    /* renamed from: for  reason: not valid java name */
    public static final DateFormat[] f2124for;

    /* renamed from: if  reason: not valid java name */
    public static final String[] f2125if;

    /* compiled from: dates.kt */
    /* renamed from: com.apk.ii0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends ThreadLocal<DateFormat> {
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(jh0.f2329case);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f2125if = strArr;
        f2124for = new DateFormat[strArr.length];
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public static final String m1225do(@NotNull Date date) {
        nd0.m1875new(date, "$this$toHttpDateString");
        String format = f2123do.get().format(date);
        nd0.m1872for(format, "STANDARD_DATE_FORMAT.get().format(this)");
        return format;
    }
}
