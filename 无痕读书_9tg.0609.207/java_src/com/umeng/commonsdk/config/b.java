package com.umeng.commonsdk.config;

import java.util.HashMap;
import java.util.Map;
/* compiled from: CollectController.java */
/* loaded from: classes7.dex */
public class b implements f {

    /* renamed from: a  reason: collision with root package name */
    public static Map<String, Boolean> f12255a = new HashMap();
    public static Object b = new Object();

    /* compiled from: CollectController.java */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final b f12256a = new b();
    }

    public static b b() {
        return a.f12256a;
    }

    public void a() {
        synchronized (b) {
            f12255a.clear();
        }
    }

    public b() {
    }

    public static boolean a(String str) {
        if (d.a(str)) {
            synchronized (b) {
                if (f12255a.containsKey(str)) {
                    return f12255a.get(str).booleanValue();
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.umeng.commonsdk.config.f
    public void a(String str, Boolean bool) {
        if (d.a(str)) {
            synchronized (b) {
                if (f12255a != null) {
                    f12255a.put(str, bool);
                }
            }
        }
    }
}
