package com.apk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.codelibrary.R$drawable;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import java.util.List;

/* compiled from: PopAdapter.java */
/* loaded from: classes8.dex */
public class ht extends BaseAdapter {

    /* renamed from: do  reason: not valid java name */
    public boolean f1984do;

    /* renamed from: if  reason: not valid java name */
    public List<ot> f1985if;

    /* compiled from: PopAdapter.java */
    /* renamed from: com.apk.ht$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif {

        /* renamed from: do  reason: not valid java name */
        public ImageView f1986do;

        /* renamed from: for  reason: not valid java name */
        public TextView f1987for;

        /* renamed from: if  reason: not valid java name */
        public ImageView f1988if;

        public Cif(ht htVar, Cdo cdo) {
        }
    }

    public ht(List<ot> list, boolean z, boolean z2) {
        this.f1985if = list;
        this.f1984do = z2;
    }

    @Override // android.widget.Adapter
    /* renamed from: do  reason: not valid java name */
    public ot getItem(int i) {
        List<ot> list = this.f1985if;
        if (list == null || i >= list.size()) {
            return null;
        }
        return this.f1985if.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<ot> list = this.f1985if;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Cif cif;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.pop_popwindow_item, viewGroup, false);
            cif = new Cif(this, null);
            cif.f1986do = (ImageView) view.findViewById(R$id.pop_item_image);
            cif.f1988if = (ImageView) view.findViewById(R$id.pop_item_right_image);
            cif.f1987for = (TextView) view.findViewById(R$id.pop_item_text);
            view.setTag(cif);
        } else {
            cif = (Cif) view.getTag();
        }
        ot item = getItem(i);
        if (item != null) {
            cif.f1987for.setText(item.f3498if);
            int i2 = item.f3497for;
            if (i2 != 0) {
                cif.f1987for.setTextColor(i2);
            }
            int i3 = item.f3496do;
            if (i3 != 0) {
                cif.f1986do.setImageResource(i3);
                cif.f1986do.setVisibility(0);
            } else {
                cif.f1986do.setVisibility(8);
            }
            if (this.f1984do) {
                if (item.f3499new) {
                    cif.f1988if.setVisibility(0);
                    cif.f1988if.setImageResource(R$drawable.popup_item_choice);
                } else {
                    cif.f1988if.setVisibility(4);
                    cif.f1988if.setImageResource(R$drawable.popup_item_choice);
                }
            } else {
                cif.f1988if.setVisibility(8);
            }
        }
        return view;
    }
}
