package com.baidu.tts.b.b;

import com.baidu.tts.b.b.b.c;

/* compiled from: PlayerFactory.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile b f11158a;

    public static b a() {
        if (f11158a == null) {
            synchronized (b.class) {
                if (f11158a == null) {
                    f11158a = new b();
                }
            }
        }
        return f11158a;
    }

    private com.baidu.tts.b.b.b.b c() {
        return new com.baidu.tts.b.b.b.b();
    }

    public c b() {
        return c();
    }
}
