package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import bykvm_19do.bykvm_19do.bykvm_19do.j1;

/* loaded from: classes8.dex */
public abstract class p0<SERVICE> implements a1 {

    /* renamed from: a  reason: collision with root package name */
    public final String f10640a;
    public o0<Boolean> b = new a();

    /* loaded from: classes8.dex */
    public class a extends o0<Boolean> {
        public a() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.o0
        /* renamed from: c */
        public Boolean a(Object... objArr) {
            return Boolean.valueOf(u0.a((Context) objArr[0], p0.this.f10640a));
        }
    }

    public p0(String str) {
        this.f10640a = str;
    }

    public abstract j1.b<SERVICE, String> a();

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        return a((String) new j1(context, c(context), a()).a());
    }

    public abstract Intent c(Context context);

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return this.b.b(context).booleanValue();
    }

    private a1.a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a1.a aVar = new a1.a();
        aVar.f10613a = str;
        return aVar;
    }
}
