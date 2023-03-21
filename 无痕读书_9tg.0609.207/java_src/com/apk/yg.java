package com.apk;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import kimi.wuhends.ebooks.R;
/* compiled from: SelectAndRemovePopView.java */
/* loaded from: classes8.dex */
public class yg extends PopupWindow implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public Button f5934do;

    /* renamed from: for  reason: not valid java name */
    public Button f5935for;

    /* renamed from: if  reason: not valid java name */
    public Button f5936if;

    /* renamed from: new  reason: not valid java name */
    public bg f5937new;

    /* renamed from: try  reason: not valid java name */
    public boolean f5938try = true;

    public yg(Activity activity, bg bgVar) {
        this.f5937new = bgVar;
        View inflate = View.inflate(activity, R.layout.view_select_and_remove_popview, null);
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        setFocusable(false);
        setOutsideTouchable(false);
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(R.style.s5);
        Button button = (Button) inflate.findViewById(R.id.edit_select_all_bt);
        this.f5934do = button;
        button.setOnClickListener(this);
        Button button2 = (Button) inflate.findViewById(R.id.edit_delete_bt);
        this.f5936if = button2;
        button2.setOnClickListener(this);
        Button button3 = (Button) inflate.findViewById(R.id.edit_group_bt);
        this.f5935for = button3;
        button3.setOnClickListener(this);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3066do(int i, int i2) {
        if (i > 0) {
            this.f5936if.setText(ze.r(R.string.main_delete_batch, String.valueOf(i)));
            this.f5934do.setText(ze.q(R.string.main_select_all));
        } else {
            this.f5936if.setText(ze.q(R.string.main_delete));
            this.f5934do.setText(ze.q(R.string.main_select_all));
        }
        if (i2 > 0) {
            this.f5934do.setText(ze.q(R.string.main_cancel_select_all));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f5938try) {
            this.f5937new.onClick(view);
        }
    }
}
