package com.apk;

import androidx.recyclerview.widget.RecyclerView;
/* compiled from: BaseAdapter.java */
/* loaded from: classes7.dex */
public class t80 extends RecyclerView.OnScrollListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ RecyclerView.LayoutManager f4665do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ s80 f4666if;

    public t80(s80 s80Var, RecyclerView.LayoutManager layoutManager) {
        this.f4666if = s80Var;
        this.f4665do = layoutManager;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        if (i == 0) {
            s80 s80Var = this.f4666if;
            if (s80Var.f4303else && s80.m2383if(s80Var, this.f4665do) + 1 == this.f4666if.getItemCount()) {
                s80.m2384throw(this.f4666if);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        super.onScrolled(recyclerView, i, i2);
        if (s80.m2383if(this.f4666if, this.f4665do) + 1 == this.f4666if.getItemCount()) {
            s80 s80Var = this.f4666if;
            if (s80Var.f4297break == null && s80Var.f4299catch == null) {
                if (s80Var.f4302do.size() > 0) {
                    s80 s80Var2 = this.f4666if;
                    if (s80Var2.f4309super && s80Var2.f4308new.isEmpty()) {
                        return;
                    }
                }
                s80 s80Var3 = this.f4666if;
                if (s80Var3.f4298case && !s80Var3.f4303else) {
                    s80.m2384throw(s80Var3);
                    return;
                }
                s80 s80Var4 = this.f4666if;
                if (s80Var4.f4303else) {
                    return;
                }
                s80Var4.m2396super();
                this.f4666if.f4303else = true;
                return;
            }
            return;
        }
        this.f4666if.f4303else = true;
    }
}
