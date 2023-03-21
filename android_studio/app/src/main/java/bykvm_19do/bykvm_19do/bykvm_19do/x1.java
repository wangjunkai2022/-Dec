package bykvm_19do.bykvm_19do.bykvm_19do;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes8.dex */
public class x1 extends a2 {
    public boolean g;

    public x1(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a2, bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        if (this.g) {
            return RecyclerView.FOREVER_NS;
        }
        return 0L;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a2, bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        boolean d = super.d();
        this.g = d;
        return d;
    }
}
