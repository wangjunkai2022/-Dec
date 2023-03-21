package com.apk;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.apk.lt;
import com.codelibrary.R$drawable;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import java.util.List;
/* compiled from: PopCommon.java */
/* loaded from: classes8.dex */
public class nt implements lt.Cdo {

    /* renamed from: case  reason: not valid java name */
    public ListView f3306case;

    /* renamed from: do  reason: not valid java name */
    public lt f3307do;

    /* renamed from: else  reason: not valid java name */
    public ImageView f3308else;

    /* renamed from: for  reason: not valid java name */
    public boolean f3309for;

    /* renamed from: if  reason: not valid java name */
    public Cdo f3310if;

    /* renamed from: new  reason: not valid java name */
    public ht f3311new;

    /* renamed from: try  reason: not valid java name */
    public View f3312try;

    /* compiled from: PopCommon.java */
    /* renamed from: com.apk.nt$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        void onDismiss();

        void onItemClick(AdapterView<?> adapterView, View view, int i, long j);
    }

    public nt(Activity activity, List<ot> list, Cdo cdo, boolean z, boolean z2) {
        this.f3310if = cdo;
        View inflate = LayoutInflater.from(activity).inflate(R$layout.pop_popwindow_layout, (ViewGroup) null);
        this.f3312try = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.pop_list_layout);
        this.f3306case = (ListView) this.f3312try.findViewById(R$id.pop_list);
        this.f3308else = (ImageView) this.f3312try.findViewById(R$id.pop_top_tag_view);
        if (z) {
            frameLayout.setBackgroundResource(R$drawable.shape_popview_bg_black);
            this.f3308else.setImageResource(R$drawable.shape_triangle_black);
        } else {
            frameLayout.setBackgroundResource(R$drawable.shape_popview_bg_white);
            this.f3308else.setImageResource(R$drawable.shape_triangle_white);
        }
        this.f3306case.setOnItemClickListener(new mt(this));
        ht htVar = new ht(list, z, z2);
        this.f3311new = htVar;
        this.f3306case.setAdapter((ListAdapter) htVar);
        this.f3307do = new lt(activity, this.f3312try, this);
    }

    /* renamed from: do  reason: not valid java name */
    public void m1913do(int i) {
        if (i != 0) {
            try {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.gravity = i;
                if (i != 3 && i != 8388611) {
                    if (i == 5 || i == 8388613) {
                        layoutParams.rightMargin = (int) ((this.f3312try.getContext().getResources().getDisplayMetrics().density * 15.0f) + 0.5f);
                    }
                    this.f3308else.setLayoutParams(layoutParams);
                }
                layoutParams.leftMargin = (int) ((this.f3312try.getContext().getResources().getDisplayMetrics().density * 15.0f) + 0.5f);
                this.f3308else.setLayoutParams(layoutParams);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m1914for(View view) {
        lt ltVar;
        if (view == null || (ltVar = this.f3307do) == null) {
            return;
        }
        ltVar.f2904for = this.f3309for;
        PopupWindow popupWindow = ltVar.f2905if;
        if (popupWindow == null) {
            return;
        }
        if (popupWindow.isShowing()) {
            ltVar.f2905if.setFocusable(false);
            ltVar.f2905if.dismiss();
            return;
        }
        if (ltVar.f2904for) {
            ltVar.m1668do(ltVar.f2906new);
        }
        ltVar.f2905if.setFocusable(true);
        ltVar.f2905if.showAsDropDown(view);
        ltVar.f2905if.update();
    }

    /* renamed from: if  reason: not valid java name */
    public void m1915if(int i) {
        if (i != 0) {
            this.f3306case.setLayoutParams(new FrameLayout.LayoutParams(i, -2));
        }
    }
}
