package com.apk;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.PopupWindow;
import android.widget.TextView;
import kimi.wuhends.ebooks.R;

/* compiled from: ShowAdPopupView.java */
/* loaded from: classes8.dex */
public class zg extends PopupWindow {

    /* renamed from: do  reason: not valid java name */
    public final TextView f6182do;

    /* renamed from: if  reason: not valid java name */
    public final Animation f6183if;

    public zg(Context context) {
        super(context);
        setWidth(-1);
        setHeight(eg.m587catch(100.0f));
        setOutsideTouchable(false);
        setFocusable(false);
        setBackgroundDrawable(new ColorDrawable(0));
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_show_ad_popup_layout, (ViewGroup) null, false);
        setContentView(inflate);
        this.f6182do = (TextView) inflate.findViewById(R.id.view_toast_title_txt);
        this.f6183if = AnimationUtils.loadAnimation(context, R.anim.anim_scale_tips);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3196do(View view) {
        Animation animation;
        showAtLocation(view, 80, 0, eg.m587catch(60.0f));
        TextView textView = this.f6182do;
        if (textView == null || (animation = this.f6183if) == null) {
            return;
        }
        textView.setAnimation(animation);
        this.f6183if.start();
    }
}
