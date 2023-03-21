package com.apk;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import kimi.wuhends.ebooks.R;

/* compiled from: ChapterPopupWindow.java */
/* loaded from: classes8.dex */
public class og extends PopupWindow {

    /* renamed from: do  reason: not valid java name */
    public TextView f3412do;

    /* renamed from: for  reason: not valid java name */
    public int f3413for;

    /* renamed from: if  reason: not valid java name */
    public TextView f3414if;

    public og(Context context) {
        super(context);
        setHeight(-2);
        setWidth(-2);
        setOutsideTouchable(true);
        setFocusable(false);
        setBackgroundDrawable(new ColorDrawable(0));
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_toast_bg, (ViewGroup) null, false);
        setContentView(inflate);
        this.f3413for = eg.m587catch(180.0f);
        this.f3412do = (TextView) inflate.findViewById(R.id.view_toast_title_txt);
        this.f3414if = (TextView) inflate.findViewById(R.id.view_toast_info_txt);
    }
}
