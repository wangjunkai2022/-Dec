package com.bytedance.pangle.log;

/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile a f11344a;

    public static a a() {
        if (f11344a == null) {
            synchronized (a.class) {
                f11344a = new a();
            }
        }
        return f11344a;
    }

    public static void b() {
        ZeusLogger.d("Zeus/DefaultReporterImpl", "skip default report");
    }
}
