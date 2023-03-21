package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* compiled from: CrashContextAssembly.java */
/* loaded from: classes8.dex */
public class e {
    @SuppressLint({"StaticFieldLeak"})
    public static volatile e e;

    /* renamed from: a  reason: collision with root package name */
    public Context f11080a;
    public Map<bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c, c> b = new HashMap();
    public b c;
    public d d;

    /* compiled from: CrashContextAssembly.java */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11081a;

        static {
            int[] iArr = new int[bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.values().length];
            f11081a = iArr;
            try {
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.JAVA;
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11081a;
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar2 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.ANR;
                iArr2[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11081a;
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar3 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.CUSTOM_JAVA;
                iArr3[7] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public e(@NonNull Context context) {
        this.f11080a = context;
        this.c = new b(context);
        this.d = new d(this.f11080a);
    }

    public static e a() {
        if (e != null) {
            return e;
        }
        throw new IllegalArgumentException("CrashContextAssembly not init");
    }

    public static void a(Context context) {
        if (e == null) {
            e = new e(context);
        }
    }

    @Nullable
    private c a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar) {
        c cVar2 = this.b.get(cVar);
        if (cVar2 != null) {
            return cVar2;
        }
        int i = a.f11081a[cVar.ordinal()];
        if (i == 1) {
            cVar2 = new g(this.f11080a, this.c, this.d);
        } else if (i == 2) {
            cVar2 = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do.a(this.f11080a, this.c, this.d);
        } else if (i == 3) {
            cVar2 = new f(this.f11080a, this.c, this.d);
        }
        if (cVar2 != null) {
            this.b.put(cVar, cVar2);
        }
        return cVar2;
    }

    public bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar) {
        c a2;
        return (cVar == null || (a2 = a(cVar)) == null) ? aVar : a2.b(aVar);
    }
}
