package bykvm_19do.bykvm_19do.bykvm_19do;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes8.dex */
public class w1 extends y1 {
    public boolean f;

    public w1(v1 v1Var) {
        super(v1Var);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.y1, bykvm_19do.bykvm_19do.bykvm_19do.t1
    public long b() {
        if (this.f) {
            return RecyclerView.FOREVER_NS;
        }
        return 0L;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.y1, bykvm_19do.bykvm_19do.bykvm_19do.t1
    public boolean d() {
        boolean d = super.d();
        this.f = d;
        return d;
    }
}
