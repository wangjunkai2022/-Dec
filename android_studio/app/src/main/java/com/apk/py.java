package com.apk;

import com.apk.hy;
import java.io.IOException;

/* compiled from: ProgressRequestBody.java */
/* loaded from: classes8.dex */
public class py<T> extends bh0 {

    /* renamed from: for  reason: not valid java name */
    public mx<T> f3763for;

    /* renamed from: if  reason: not valid java name */
    public bh0 f3764if;

    /* renamed from: new  reason: not valid java name */
    public Cif f3765new;

    /* compiled from: ProgressRequestBody.java */
    /* renamed from: com.apk.py$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public final class Cdo extends vk0 {

        /* renamed from: if  reason: not valid java name */
        public hy f3767if;

        /* compiled from: ProgressRequestBody.java */
        /* renamed from: com.apk.py$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0073do implements hy.Cdo {
            public C0073do() {
            }

            @Override // com.apk.hy.Cdo
            public void call(hy hyVar) {
                py pyVar = py.this;
                Cif cif = pyVar.f3765new;
                if (cif != null) {
                    cif.m2097do(hyVar);
                } else {
                    mu.u(new oy(pyVar, hyVar));
                }
            }
        }

        public Cdo(jl0 jl0Var) {
            super(jl0Var);
            hy hyVar = new hy();
            this.f3767if = hyVar;
            hyVar.f2007else = py.this.mo48do();
        }

        @Override // com.apk.vk0, com.apk.jl0
        /* renamed from: class */
        public void mo477class(rk0 rk0Var, long j) throws IOException {
            super.mo477class(rk0Var, j);
            hy hyVar = this.f3767if;
            hy.m1172do(hyVar, j, hyVar.f2007else, new C0073do());
        }
    }

    /* compiled from: ProgressRequestBody.java */
    /* renamed from: com.apk.py$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do  reason: not valid java name */
        void m2097do(hy hyVar);
    }

    public py(bh0 bh0Var, mx<T> mxVar) {
        this.f3764if = bh0Var;
        this.f3763for = mxVar;
    }

    @Override // com.apk.bh0
    /* renamed from: do */
    public long mo48do() {
        try {
            return this.f3764if.mo48do();
        } catch (IOException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    @Override // com.apk.bh0
    /* renamed from: for */
    public void mo49for(sk0 sk0Var) throws IOException {
        sk0 m2403catch = sb0.m2403catch(new Cdo(sk0Var));
        this.f3764if.mo49for(m2403catch);
        ((el0) m2403catch).flush();
    }

    @Override // com.apk.bh0
    /* renamed from: if */
    public vg0 mo50if() {
        return this.f3764if.mo50if();
    }
}
