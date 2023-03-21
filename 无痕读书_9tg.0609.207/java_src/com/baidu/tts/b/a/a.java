package com.baidu.tts.b.a;

import com.baidu.tts.b.a.a.c;
import com.baidu.tts.b.a.a.d;
import com.baidu.tts.b.a.b.e;
import com.baidu.tts.f.f;
/* compiled from: EngineFactory.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile a f11135a;

    /* compiled from: EngineFactory.java */
    /* renamed from: com.baidu.tts.b.a.a$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11136a;

        static {
            int[] iArr = new int[f.values().length];
            f11136a = iArr;
            try {
                f fVar = f.ONLINE;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11136a;
                f fVar2 = f.OFFLINE;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11136a;
                f fVar3 = f.MIX;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static a a() {
        if (f11135a == null) {
            synchronized (a.class) {
                if (f11135a == null) {
                    f11135a = new a();
                }
            }
        }
        return f11135a;
    }

    private d b() {
        return a(new com.baidu.tts.b.a.b.f());
    }

    private d c() {
        return a(new e());
    }

    private d d() {
        return a(new com.baidu.tts.b.a.b.d());
    }

    public d a(f fVar) {
        int i = AnonymousClass1.f11136a[fVar.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return null;
                }
                return d();
            }
            return c();
        }
        return b();
    }

    private d a(com.baidu.tts.b.a.b.b bVar) {
        c cVar = new c();
        cVar.a(bVar);
        return cVar;
    }
}
