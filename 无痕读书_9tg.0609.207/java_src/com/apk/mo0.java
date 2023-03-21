package com.apk;

import java.util.List;
/* compiled from: LeafNode.java */
/* loaded from: classes7.dex */
public abstract class mo0 extends no0 {

    /* renamed from: new  reason: not valid java name */
    public Object f3076new;

    /* renamed from: abstract  reason: not valid java name */
    public no0 m1739abstract(String str, String str2) {
        if (!(this.f3076new instanceof do0) && str.equals("#doctype")) {
            this.f3076new = str2;
        } else {
            m1743strictfp();
            vo0 vo0Var = sb0.d(this).f5360if;
            if (vo0Var != null) {
                String trim = str.trim();
                if (!vo0Var.f5186if) {
                    trim = sb0.m2437volatile(trim);
                }
                do0 mo1375case = mo1375case();
                int m491const = mo1375case.m491const(trim);
                if (m491const != -1) {
                    mo1375case.f949for[m491const] = str2;
                    if (!mo1375case.f950if[m491const].equals(trim)) {
                        mo1375case.f950if[m491const] = trim;
                    }
                } else {
                    mo1375case.m492do(trim, str2);
                }
            } else {
                throw null;
            }
        }
        return this;
    }

    @Override // com.apk.no0
    /* renamed from: case */
    public final do0 mo1375case() {
        m1743strictfp();
        return (do0) this.f3076new;
    }

    @Override // com.apk.no0
    /* renamed from: const */
    public no0 mo1376const(no0 no0Var) {
        mo0 mo0Var = (mo0) super.mo1376const(no0Var);
        Object obj = this.f3076new;
        if (obj instanceof do0) {
            mo0Var.f3076new = ((do0) obj).clone();
        }
        return mo0Var;
    }

    /* renamed from: continue  reason: not valid java name */
    public String m1740continue() {
        return mo1742new(mo669return());
    }

    @Override // com.apk.no0
    /* renamed from: do  reason: not valid java name */
    public String mo1741do(String str) {
        m1743strictfp();
        return super.mo1741do(str);
    }

    @Override // com.apk.no0
    /* renamed from: else */
    public String mo1378else() {
        return this.f3281do != null ? this.f3281do.mo1378else() : "";
    }

    @Override // com.apk.no0
    /* renamed from: final */
    public no0 mo1379final() {
        return this;
    }

    @Override // com.apk.no0
    /* renamed from: import */
    public final boolean mo1381import() {
        return this.f3076new instanceof do0;
    }

    @Override // com.apk.no0
    /* renamed from: new  reason: not valid java name */
    public String mo1742new(String str) {
        sb0.m2418instanceof(str);
        if (this.f3076new instanceof do0) {
            return super.mo1742new(str);
        }
        return str.equals(mo669return()) ? (String) this.f3076new : "";
    }

    /* renamed from: strictfp  reason: not valid java name */
    public final void m1743strictfp() {
        Object obj = this.f3076new;
        if (obj instanceof do0) {
            return;
        }
        do0 do0Var = new do0();
        this.f3076new = do0Var;
        if (obj != null) {
            do0Var.m499super(mo669return(), (String) obj);
        }
    }

    @Override // com.apk.no0
    /* renamed from: super */
    public List<no0> mo1385super() {
        return no0.f3280for;
    }

    @Override // com.apk.no0
    /* renamed from: this */
    public int mo1387this() {
        return 0;
    }

    @Override // com.apk.no0
    /* renamed from: while  reason: not valid java name */
    public boolean mo1744while(String str) {
        m1743strictfp();
        return super.mo1744while(str);
    }
}
