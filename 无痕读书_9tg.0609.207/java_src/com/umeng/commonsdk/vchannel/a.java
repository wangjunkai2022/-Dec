package com.umeng.commonsdk.vchannel;

import com.apk.Cgoto;
/* compiled from: Constant.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f12335a = "https://pslog.umeng.com";
    public static String b = "https://pslog.umeng.com/";
    public static String c = "explog";
    public static final String d = "analytics";
    public static final String e = "ekv";
    public static final String f = "id";
    public static final String g = "ts";
    public static final String h = "ds";
    public static final String i = "pn";
    public static String j = "";

    static {
        String m1000for = Cgoto.m1000for("SUB", System.currentTimeMillis());
        StringBuilder m1016super = Cgoto.m1016super(m1000for);
        StringBuilder m1016super2 = Cgoto.m1016super("%0");
        m1016super2.append(32 - m1000for.length());
        m1016super2.append("d");
        m1016super.append(String.format(m1016super2.toString(), 0));
        j = m1016super.toString();
    }
}
