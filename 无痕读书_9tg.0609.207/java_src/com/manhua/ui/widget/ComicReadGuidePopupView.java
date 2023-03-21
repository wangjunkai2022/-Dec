package com.manhua.ui.widget;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.bg;
import com.apk.eg;
import com.apk.ze;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicReadGuidePopupView extends PositionPopupView {

    /* renamed from: this  reason: not valid java name */
    public static final int f10142this = eg.m587catch(50.0f);

    /* renamed from: case  reason: not valid java name */
    public ImageView f10143case;

    /* renamed from: else  reason: not valid java name */
    public ImageView f10144else;

    /* renamed from: for  reason: not valid java name */
    public LinearLayout f10145for;

    /* renamed from: goto  reason: not valid java name */
    public ImageView f10146goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f10147if;

    /* renamed from: new  reason: not valid java name */
    public LinearLayout f10148new;

    /* renamed from: try  reason: not valid java name */
    public ImageView f10149try;

    /* renamed from: com.manhua.ui.widget.ComicReadGuidePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (ComicReadGuidePopupView.this.f10148new.getVisibility() == 8) {
                ComicReadGuidePopupView comicReadGuidePopupView = ComicReadGuidePopupView.this;
                comicReadGuidePopupView.f10147if.setText(ze.q(R.string.comic_guide_title_leftright));
                if (comicReadGuidePopupView.f10148new.getVisibility() != 0) {
                    comicReadGuidePopupView.f10148new.setVisibility(0);
                }
                LinearLayout linearLayout = comicReadGuidePopupView.f10145for;
                if (linearLayout != null) {
                    if (linearLayout.getVisibility() != 8) {
                        comicReadGuidePopupView.f10145for.setVisibility(8);
                    }
                    Animation animation = comicReadGuidePopupView.f10145for.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                    }
                }
                int i = ComicReadGuidePopupView.f10142this;
                comicReadGuidePopupView.m3640if(i, -i, 0.0f, 0.0f);
                int i2 = ComicReadGuidePopupView.f10142this;
                comicReadGuidePopupView.m3640if(-i2, i2, 0.0f, 0.0f);
                return;
            }
            ComicReadGuidePopupView comicReadGuidePopupView2 = ComicReadGuidePopupView.this;
            LinearLayout linearLayout2 = comicReadGuidePopupView2.f10148new;
            if (linearLayout2 != null) {
                if (linearLayout2.getVisibility() != 8) {
                    comicReadGuidePopupView2.f10148new.setVisibility(8);
                }
                Animation animation2 = comicReadGuidePopupView2.f10148new.getAnimation();
                if (animation2 != null) {
                    animation2.cancel();
                }
            }
            LinearLayout linearLayout3 = comicReadGuidePopupView2.f10148new;
            if (linearLayout3 != null) {
                if (linearLayout3.getVisibility() != 8) {
                    comicReadGuidePopupView2.f10148new.setVisibility(8);
                }
                Animation animation3 = comicReadGuidePopupView2.f10148new.getAnimation();
                if (animation3 != null) {
                    animation3.cancel();
                }
            }
            ComicReadGuidePopupView.this.dismiss();
        }
    }

    public ComicReadGuidePopupView(@NonNull Context context) {
        super(context);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.comic_read_guide_layout;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3640if(float f, float f2, float f3, float f4) {
        TranslateAnimation translateAnimation = new TranslateAnimation(f, f2, f3, f4);
        translateAnimation.setDuration(1500L);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setInterpolator(new AccelerateInterpolator());
        translateAnimation.setFillAfter(true);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f10147if = (TextView) findViewById(R.id.comic_read_guide_title);
        this.f10145for = (LinearLayout) findViewById(R.id.guide_vertical_layout);
        this.f10148new = (LinearLayout) findViewById(R.id.guide_horizontal_layout);
        this.f10149try = (ImageView) findViewById(R.id.guide_vertical_last_view);
        this.f10143case = (ImageView) findViewById(R.id.guide_vertical_next_view);
        this.f10144else = (ImageView) findViewById(R.id.guide_horizontal_last_view);
        this.f10146goto = (ImageView) findViewById(R.id.guide_horizontal_next_view);
        this.f10147if.setText(ze.q(R.string.comic_guide_title_updown));
        if (this.f10145for.getVisibility() != 0) {
            this.f10145for.setVisibility(0);
        }
        LinearLayout linearLayout = this.f10148new;
        if (linearLayout != null) {
            if (linearLayout.getVisibility() != 8) {
                this.f10148new.setVisibility(8);
            }
            Animation animation = this.f10148new.getAnimation();
            if (animation != null) {
                animation.cancel();
            }
        }
        int i = f10142this;
        m3640if(0.0f, 0.0f, i, -i);
        int i2 = f10142this;
        m3640if(0.0f, 0.0f, -i2, i2);
        findViewById(R.id.guide_parent_view).setOnClickListener(new Cdo());
    }
}
