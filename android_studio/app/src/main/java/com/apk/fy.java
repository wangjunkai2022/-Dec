package com.apk;

import android.text.TextUtils;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: HttpHeaders.java */
/* loaded from: classes8.dex */
public class fy implements Serializable {

    /* renamed from: for  reason: not valid java name */
    public static String f1476for;

    /* renamed from: if  reason: not valid java name */
    public static final TimeZone f1477if = TimeZone.getTimeZone("GMT");

    /* renamed from: new  reason: not valid java name */
    public static String f1478new;

    /* renamed from: do  reason: not valid java name */
    public LinkedHashMap<String, String> f1479do = new LinkedHashMap<>();

    /* renamed from: do  reason: not valid java name */
    public static long m895do(String str) {
        try {
            return m896if(str);
        } catch (ParseException unused) {
            return 0L;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static long m896if(String str) throws ParseException {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM y HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setTimeZone(f1477if);
        return simpleDateFormat.parse(str).getTime();
    }

    /* renamed from: for  reason: not valid java name */
    public void m897for(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f1479do.put(str, str2);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("HttpHeaders{headersMap=");
        m1016super.append(this.f1479do);
        m1016super.append('}');
        return m1016super.toString();
    }
}
