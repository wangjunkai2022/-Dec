package com.apk;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kimi.wuhends.ebooks.R;

/* compiled from: TimeUtils.java */
/* loaded from: classes8.dex */
public final class kg {

    /* renamed from: do  reason: not valid java name */
    public static final DateFormat f2535do = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    /* renamed from: if  reason: not valid java name */
    public static final DateFormat f2536if = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.getDefault());

    /* renamed from: break  reason: not valid java name */
    public static String m1491break(long j) {
        long j2 = j / 1000;
        long j3 = j2 / 3600;
        long j4 = j2 - (3600 * j3);
        long j5 = j4 / 60;
        long j6 = j4 - (60 * j5);
        StringBuffer stringBuffer = new StringBuffer();
        if (j3 > 0) {
            if (j3 > 24) {
                stringBuffer.append(((int) (j3 / 24)) + "天");
            }
            long j7 = j3 % 24;
            if (j7 > 0) {
                stringBuffer.append(j7 + "小时");
            }
        }
        if (j5 > 0) {
            stringBuffer.append(j5 + "分钟");
        }
        if (j6 > 0) {
            stringBuffer.append(j6 + "秒");
        }
        return stringBuffer.toString();
    }

    /* renamed from: case  reason: not valid java name */
    public static ArrayList<String> m1492case(int i) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i2 = i - 1; i2 >= 0; i2--) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(6, calendar.get(6) - i2);
            arrayList.add(new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime()));
        }
        return arrayList;
    }

    /* renamed from: catch  reason: not valid java name */
    public static long m1493catch(String str, DateFormat dateFormat) {
        try {
            return dateFormat.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1494do(long j, long j2) {
        Date date = new Date(j);
        Date date2 = new Date(j2);
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parse = simpleDateFormat.parse(simpleDateFormat.format(date));
            Date parse2 = simpleDateFormat.parse(simpleDateFormat.format(date2));
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(parse);
            long timeInMillis = calendar.getTimeInMillis();
            calendar.setTime(parse2);
            return Integer.parseInt(String.valueOf((calendar.getTimeInMillis() - timeInMillis) / 86400000));
        } catch (ParseException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static String m1495else() {
        return m1500this(System.currentTimeMillis(), f2536if);
    }

    /* renamed from: for  reason: not valid java name */
    public static String m1496for() {
        String m1499new = m1499new();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        if (calendar.get(9) == 0) {
            return ze.q(R.string.read_time_am) + m1499new;
        }
        return ze.q(R.string.read_time_pm) + m1499new;
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m1497goto(long j) {
        return m1500this(j, f2535do);
    }

    /* renamed from: if  reason: not valid java name */
    public static String m1498if() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    /* renamed from: new  reason: not valid java name */
    public static String m1499new() {
        return new SimpleDateFormat("HH:mm").format(new Date());
    }

    /* renamed from: this  reason: not valid java name */
    public static String m1500this(long j, DateFormat dateFormat) {
        return dateFormat.format(new Date(j));
    }

    /* renamed from: try  reason: not valid java name */
    public static String m1501try() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
    }
}
