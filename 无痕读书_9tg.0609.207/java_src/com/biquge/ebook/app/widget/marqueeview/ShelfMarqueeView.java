package com.biquge.ebook.app.widget.marqueeview;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ViewFlipper;
import androidx.annotation.AnimRes;
import com.apk.ai;
import com.biquge.ebook.app.R$styleable;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ShelfMarqueeView extends ViewFlipper {

    /* renamed from: break  reason: not valid java name */
    public LayoutInflater f8395break;
    @AnimRes

    /* renamed from: case  reason: not valid java name */
    public int f8396case;

    /* renamed from: do  reason: not valid java name */
    public int f8397do;
    @AnimRes

    /* renamed from: else  reason: not valid java name */
    public int f8398else;

    /* renamed from: for  reason: not valid java name */
    public int f8399for;

    /* renamed from: goto  reason: not valid java name */
    public List<String> f8400goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f8401if;

    /* renamed from: new  reason: not valid java name */
    public int f8402new;

    /* renamed from: this  reason: not valid java name */
    public Cdo f8403this;

    /* renamed from: try  reason: not valid java name */
    public int f8404try;

    /* renamed from: com.biquge.ebook.app.widget.marqueeview.ShelfMarqueeView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    public ShelfMarqueeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8397do = 3000;
        this.f8401if = false;
        this.f8399for = 1000;
        this.f8402new = 14;
        this.f8404try = -1;
        this.f8396case = R.anim.anim_bottom_in;
        this.f8398else = R.anim.anim_top_out;
        this.f8400goto = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MarqueeViewStyle, 0, 0);
        this.f8397do = obtainStyledAttributes.getInteger(2, this.f8397do);
        this.f8401if = obtainStyledAttributes.hasValue(0);
        this.f8399for = obtainStyledAttributes.getInteger(0, this.f8399for);
        if (obtainStyledAttributes.hasValue(5)) {
            int dimension = (int) obtainStyledAttributes.getDimension(5, this.f8402new);
            this.f8402new = dimension;
            this.f8402new = (int) ((dimension / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
        }
        this.f8404try = obtainStyledAttributes.getColor(4, this.f8404try);
        this.f8396case = R.anim.anim_bottom_in;
        this.f8398else = R.anim.anim_top_out;
        obtainStyledAttributes.recycle();
        setFlipInterval(this.f8397do);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3551do(ShelfMarqueeView shelfMarqueeView, int i, int i2) {
        if (shelfMarqueeView.getChildCount() > 0) {
            shelfMarqueeView.removeAllViews();
            shelfMarqueeView.clearAnimation();
        }
        for (int i3 = 0; i3 < shelfMarqueeView.f8400goto.size(); i3++) {
            String str = shelfMarqueeView.f8400goto.get(i3);
            if (shelfMarqueeView.f8395break == null) {
                shelfMarqueeView.f8395break = LayoutInflater.from(shelfMarqueeView.getContext());
            }
            View inflate = shelfMarqueeView.f8395break.inflate(R.layout.include_topmsg_layout, (ViewGroup) null);
            ((MarqueeTextView) inflate.findViewById(R.id.home_top_msg_tv)).setText(Html.fromHtml(str));
            inflate.setOnClickListener(new ai(shelfMarqueeView, i3));
            shelfMarqueeView.addView(inflate);
        }
        if (shelfMarqueeView.f8400goto.size() > 1) {
            Animation loadAnimation = AnimationUtils.loadAnimation(shelfMarqueeView.getContext(), i);
            if (shelfMarqueeView.f8401if) {
                loadAnimation.setDuration(shelfMarqueeView.f8399for);
            }
            shelfMarqueeView.setInAnimation(loadAnimation);
            Animation loadAnimation2 = AnimationUtils.loadAnimation(shelfMarqueeView.getContext(), i2);
            if (shelfMarqueeView.f8401if) {
                loadAnimation2.setDuration(shelfMarqueeView.f8399for);
            }
            shelfMarqueeView.setOutAnimation(loadAnimation2);
            shelfMarqueeView.startFlipping();
        }
    }

    public List<String> getNotices() {
        return this.f8400goto;
    }

    public void setNotices(List<String> list) {
        this.f8400goto = list;
    }

    public void setOnItemClickListener(Cdo cdo) {
        this.f8403this = cdo;
    }
}
