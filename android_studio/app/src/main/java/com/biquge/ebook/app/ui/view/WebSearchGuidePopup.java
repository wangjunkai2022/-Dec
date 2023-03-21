package com.biquge.ebook.app.ui.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import com.apk.eg;
import com.biquge.ebook.app.ui.view.WebSearchGuidePopup;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebSearchGuidePopup extends PositionPopupView {

    /* renamed from: for  reason: not valid java name */
    public ObjectAnimator f7813for;

    /* renamed from: if  reason: not valid java name */
    public ObjectAnimator f7814if;

    /* renamed from: com.biquge.ebook.app.ui.view.WebSearchGuidePopup$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            WebSearchGuidePopup.this.f7813for.start();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.WebSearchGuidePopup$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            WebSearchGuidePopup.this.f7814if.start();
        }
    }

    public WebSearchGuidePopup(@NonNull Context context) {
        super(context);
    }

    /* renamed from: break  reason: not valid java name */
    public final void m3424if() {
        View findViewById = findViewById(R.id.web_search_finger_layout);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.apk.nc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebSearchGuidePopup.this.m3425this(view);
            }
        });
        this.f7814if = ObjectAnimator.ofFloat(findViewById, "translationY", 0.0f, 20.0f, 0.0f);
        this.f7813for = ObjectAnimator.ofFloat(findViewById, "translationY", 0.0f, -20.0f, 0.0f);
        this.f7814if.setDuration(1200L);
        this.f7813for.setDuration(1200L);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        this.f7814if.setInterpolator(linearInterpolator);
        this.f7813for.setInterpolator(linearInterpolator);
        this.f7814if.addListener(new Cdo());
        this.f7813for.addListener(new Cif());
        this.f7814if.start();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.view_web_search_pop;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupHeight() {
        return eg.m587catch(150.0f);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        post(new Runnable() { // from class: com.apk.mc
            @Override // java.lang.Runnable
            public final void run() {
                WebSearchGuidePopup.this.m3424if();
            }
        });
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDismiss() {
        super.onDismiss();
        ObjectAnimator objectAnimator = this.f7814if;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f7813for;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
    }

    /* renamed from: this  reason: not valid java name */
    public /* synthetic */ void m3425this(View view) {
        dismiss();
    }
}
