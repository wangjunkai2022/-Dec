package com.apk;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ViewHolder.java */
/* loaded from: classes7.dex */
public class r80 extends RecyclerView.ViewHolder {

    /* renamed from: do  reason: not valid java name */
    public SparseArray<View> f4017do;

    /* renamed from: if  reason: not valid java name */
    public View f4018if;

    public r80(View view) {
        super(view);
        this.f4018if = view;
        this.f4017do = new SparseArray<>();
    }

    /* renamed from: if  reason: not valid java name */
    public static r80 m2251if(Context context, int i, ViewGroup viewGroup) {
        return new r80(LayoutInflater.from(context).inflate(i, viewGroup, false));
    }

    /* renamed from: do  reason: not valid java name */
    public <T extends View> T m2252do(int i) {
        T t = (T) this.f4017do.get(i);
        if (t == null) {
            T t2 = (T) this.f4018if.findViewById(i);
            this.f4017do.put(i, t2);
            return t2;
        }
        return t;
    }

    /* renamed from: for  reason: not valid java name */
    public void m2253for(int i, int i2) {
        m2252do(i).setBackgroundResource(i2);
    }

    /* renamed from: new  reason: not valid java name */
    public void m2254new(int i, String str) {
        ((TextView) m2252do(i)).setText(str);
    }
}
