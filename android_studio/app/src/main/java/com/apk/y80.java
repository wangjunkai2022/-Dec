package com.apk;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CommonBaseAdapter.java */
/* loaded from: classes7.dex */
public abstract class y80<T> extends s80<T> {

    /* renamed from: import  reason: not valid java name */
    public ArrayList<Integer> f5873import;

    /* renamed from: native  reason: not valid java name */
    public ArrayList<r90<T>> f5874native;

    /* renamed from: throw  reason: not valid java name */
    public s90<T> f5875throw;

    /* renamed from: while  reason: not valid java name */
    public t90<T> f5876while;

    public y80(Context context, List<T> list, boolean z) {
        super(context, list, z);
        this.f5873import = new ArrayList<>();
        this.f5874native = new ArrayList<>();
    }

    @Override // com.apk.s80
    /* renamed from: do */
    public int mo1185do(int i, T t) {
        return 100001;
    }

    /* renamed from: native */
    public abstract void mo953native(r80 r80Var, T t, int i);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (m2387catch(viewHolder.getItemViewType())) {
            int m2389const = i - m2389const();
            r80 r80Var = (r80) viewHolder;
            mo953native(r80Var, this.f4308new.get(m2389const), m2389const);
            r80Var.f4018if.setOnClickListener(new v80(this, r80Var, m2389const));
            r80Var.f4018if.setOnLongClickListener(new w80(this, r80Var, m2389const));
            for (int i2 = 0; i2 < this.f5873import.size(); i2++) {
                if (r80Var.f4018if.findViewById(this.f5873import.get(i2).intValue()) != null) {
                    r80Var.f4018if.findViewById(this.f5873import.get(i2).intValue()).setOnClickListener(new x80(this, i2, r80Var, m2389const));
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        if (m2387catch(i)) {
            return r80.m2251if(this.f4305for, mo954public(), viewGroup);
        }
        return super.m2392for(viewGroup, i);
    }

    /* renamed from: public */
    public abstract int mo954public();
}
