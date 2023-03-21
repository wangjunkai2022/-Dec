package com.biquge.ebook.app.widget.marqueeview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.AnimRes;
import com.apk.yh;
import com.biquge.ebook.app.R$styleable;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MarqueeView extends ViewFlipper {

    /* renamed from: break  reason: not valid java name */
    public int f8381break;

    /* renamed from: case  reason: not valid java name */
    public boolean f8382case;

    /* renamed from: catch  reason: not valid java name */
    public List<? extends CharSequence> f8383catch;

    /* renamed from: class  reason: not valid java name */
    public Cif f8384class;

    /* renamed from: const  reason: not valid java name */
    public boolean f8385const;

    /* renamed from: do  reason: not valid java name */
    public int f8386do;

    /* renamed from: else  reason: not valid java name */
    public int f8387else;

    /* renamed from: for  reason: not valid java name */
    public int f8388for;
    @AnimRes

    /* renamed from: goto  reason: not valid java name */
    public int f8389goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f8390if;

    /* renamed from: new  reason: not valid java name */
    public int f8391new;
    @AnimRes

    /* renamed from: this  reason: not valid java name */
    public int f8392this;

    /* renamed from: try  reason: not valid java name */
    public int f8393try;

    /* renamed from: com.biquge.ebook.app.widget.marqueeview.MarqueeView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MarqueeView marqueeView = MarqueeView.this;
            Cif cif = marqueeView.f8384class;
            if (cif != null) {
                cif.m3550do(marqueeView.getPosition(), (TextView) view);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.marqueeview.MarqueeView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do  reason: not valid java name */
        void m3550do(int i, TextView textView);
    }

    public MarqueeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8386do = 3000;
        this.f8390if = false;
        this.f8388for = 1000;
        this.f8391new = 14;
        this.f8393try = -1;
        this.f8382case = true;
        this.f8387else = 19;
        this.f8389goto = R.anim.anim_bottom_in;
        this.f8392this = R.anim.anim_top_out;
        this.f8383catch = new ArrayList();
        this.f8385const = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MarqueeViewStyle, 0, 0);
        this.f8386do = obtainStyledAttributes.getInteger(2, this.f8386do);
        this.f8390if = obtainStyledAttributes.hasValue(0);
        this.f8388for = obtainStyledAttributes.getInteger(0, this.f8388for);
        this.f8382case = obtainStyledAttributes.getBoolean(3, false);
        if (obtainStyledAttributes.hasValue(5)) {
            int dimension = (int) obtainStyledAttributes.getDimension(5, this.f8391new);
            this.f8391new = dimension;
            this.f8391new = (int) ((dimension / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
        }
        this.f8393try = obtainStyledAttributes.getColor(4, this.f8393try);
        int i = obtainStyledAttributes.getInt(1, 0);
        if (i == 0) {
            this.f8387else = 19;
        } else if (i == 1) {
            this.f8387else = 17;
        } else if (i == 2) {
            this.f8387else = 21;
        }
        this.f8389goto = R.anim.anim_bottom_in;
        this.f8392this = R.anim.anim_top_out;
        obtainStyledAttributes.recycle();
        setFlipInterval(this.f8386do);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3548do(MarqueeView marqueeView, int i, int i2) {
        marqueeView.removeAllViews();
        marqueeView.clearAnimation();
        marqueeView.f8381break = 0;
        marqueeView.addView(marqueeView.m3549if(marqueeView.f8383catch.get(0)));
        if (marqueeView.f8383catch.size() > 1) {
            Animation loadAnimation = AnimationUtils.loadAnimation(marqueeView.getContext(), i);
            if (marqueeView.f8390if) {
                loadAnimation.setDuration(marqueeView.f8388for);
            }
            marqueeView.setInAnimation(loadAnimation);
            Animation loadAnimation2 = AnimationUtils.loadAnimation(marqueeView.getContext(), i2);
            if (marqueeView.f8390if) {
                loadAnimation2.setDuration(marqueeView.f8388for);
            }
            marqueeView.setOutAnimation(loadAnimation2);
            marqueeView.startFlipping();
        }
        if (marqueeView.getInAnimation() != null) {
            marqueeView.getInAnimation().setAnimationListener(new yh(marqueeView));
        }
    }

    public List<? extends CharSequence> getNotices() {
        return this.f8383catch;
    }

    public int getPosition() {
        return ((Integer) getCurrentView().getTag()).intValue();
    }

    /* renamed from: if  reason: not valid java name */
    public final TextView m3549if(CharSequence charSequence) {
        TextView textView = (TextView) getChildAt((getDisplayedChild() + 1) % 3);
        if (textView == null) {
            textView = new TextView(getContext());
            textView.setGravity(this.f8387else);
            textView.setTextColor(this.f8393try);
            textView.setTextSize(this.f8391new);
            textView.setSingleLine(this.f8382case);
        }
        textView.setOnClickListener(new Cdo());
        textView.setText(charSequence);
        textView.setTag(Integer.valueOf(this.f8381break));
        return textView;
    }

    public void setNotices(List<? extends CharSequence> list) {
        this.f8383catch = list;
    }

    public void setOnItemClickListener(Cif cif) {
        this.f8384class = cif;
    }
}
