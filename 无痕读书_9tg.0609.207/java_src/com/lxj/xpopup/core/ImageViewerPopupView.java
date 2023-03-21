package com.lxj.xpopup.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.transition.ChangeBounds;
import android.transition.ChangeImageTransform;
import android.transition.ChangeTransform;
import android.transition.Transition;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.viewpager.widget.PagerAdapter;
import com.apk.cw;
import com.apk.jv;
import com.apk.jw;
import com.apk.kv;
import com.apk.kw;
import com.apk.pw;
import com.apk.qv;
import com.apk.vv;
import com.apk.wu;
import com.apk.yu;
import com.apk.zu;
import com.apk.zv;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.widget.BlankView;
import com.lxj.xpopup.widget.HackyViewPager;
import com.lxj.xpopup.widget.PhotoViewContainer;
import java.util.List;
/* loaded from: classes8.dex */
public class ImageViewerPopupView extends BasePopupView implements vv, View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public Rect f9509break;

    /* renamed from: case  reason: not valid java name */
    public ArgbEvaluator f9510case;

    /* renamed from: catch  reason: not valid java name */
    public ImageView f9511catch;

    /* renamed from: class  reason: not valid java name */
    public jw f9512class;

    /* renamed from: const  reason: not valid java name */
    public boolean f9513const;

    /* renamed from: do  reason: not valid java name */
    public PhotoViewContainer f9514do;

    /* renamed from: else  reason: not valid java name */
    public List<Object> f9515else;

    /* renamed from: final  reason: not valid java name */
    public View f9516final;

    /* renamed from: for  reason: not valid java name */
    public TextView f9517for;

    /* renamed from: goto  reason: not valid java name */
    public zv f9518goto;

    /* renamed from: if  reason: not valid java name */
    public BlankView f9519if;

    /* renamed from: new  reason: not valid java name */
    public TextView f9520new;

    /* renamed from: super  reason: not valid java name */
    public int f9521super;

    /* renamed from: this  reason: not valid java name */
    public int f9522this;

    /* renamed from: try  reason: not valid java name */
    public HackyViewPager f9523try;

    /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0127do extends TransitionListenerAdapter {
            public C0127do() {
            }

            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                ImageViewerPopupView.this.f9523try.setVisibility(0);
                ImageViewerPopupView.this.f9512class.setVisibility(4);
                if (ImageViewerPopupView.this != null) {
                    throw null;
                }
                throw null;
            }
        }

        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition((ViewGroup) ImageViewerPopupView.this.f9512class.getParent(), new TransitionSet().setDuration(ImageViewerPopupView.this.getDuration()).addTransition(new ChangeBounds()).addTransition(new ChangeTransform()).addTransition(new ChangeImageTransform()).setInterpolator((TimeInterpolator) new FastOutSlowInInterpolator()).addListener((Transition.TransitionListener) new C0127do()));
            ImageViewerPopupView.this.f9512class.setTranslationY(0.0f);
            ImageViewerPopupView.this.f9512class.setTranslationX(0.0f);
            ImageViewerPopupView.this.f9512class.setScaleType(ImageView.ScaleType.FIT_CENTER);
            ImageViewerPopupView imageViewerPopupView = ImageViewerPopupView.this;
            pw.m2089native(imageViewerPopupView.f9512class, imageViewerPopupView.f9514do.getWidth(), ImageViewerPopupView.this.f9514do.getHeight());
            ImageViewerPopupView imageViewerPopupView2 = ImageViewerPopupView.this;
            ImageViewerPopupView.m3601this(imageViewerPopupView2, imageViewerPopupView2.f9521super);
            View view = ImageViewerPopupView.this.f9516final;
            if (view != null) {
                view.animate().alpha(1.0f).setDuration(ImageViewerPopupView.this.getDuration()).start();
            }
        }
    }

    /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends PagerAdapter {

        /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$for$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements cw {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ jw f9527do;

            public Cdo(jw jwVar) {
                this.f9527do = jwVar;
            }

            /* renamed from: do  reason: not valid java name */
            public void m3602do(RectF rectF) {
                if (ImageViewerPopupView.this.f9512class != null) {
                    Matrix matrix = new Matrix();
                    matrix.set(this.f9527do.f2431do.f2679const);
                    kw kwVar = ImageViewerPopupView.this.f9512class.f2431do;
                    if (kwVar != null) {
                        if (kwVar.f2688goto.getDrawable() == null) {
                            return;
                        }
                        kwVar.f2679const.set(matrix);
                        kwVar.m1573do();
                        return;
                    }
                    throw null;
                }
            }
        }

        /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$for$if  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cif implements View.OnClickListener {
            public Cif() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageViewerPopupView.this.dismiss();
            }
        }

        public Cfor() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            ImageViewerPopupView imageViewerPopupView = ImageViewerPopupView.this;
            if (imageViewerPopupView.f9513const) {
                return 1073741823;
            }
            return imageViewerPopupView.f9515else.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @NonNull
        public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
            jw jwVar = new jw(viewGroup.getContext());
            ImageViewerPopupView imageViewerPopupView = ImageViewerPopupView.this;
            zv zvVar = imageViewerPopupView.f9518goto;
            if (zvVar != null) {
                List<Object> list = imageViewerPopupView.f9515else;
                zvVar.m3261do(i, list.get(imageViewerPopupView.f9513const ? i % list.size() : i), jwVar);
            }
            jwVar.setOnMatrixChangeListener(new Cdo(jwVar));
            viewGroup.addView(jwVar);
            jwVar.setOnClickListener(new Cif());
            return jwVar;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
            return obj == view;
        }
    }

    /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo extends TransitionListenerAdapter {
            public Cdo() {
            }

            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                ImageViewerPopupView.this.doAfterDismiss();
                ImageViewerPopupView.this.f9523try.setVisibility(4);
                ImageViewerPopupView.this.f9512class.setVisibility(0);
                ImageViewerPopupView.this.f9523try.setScaleX(1.0f);
                ImageViewerPopupView.this.f9523try.setScaleY(1.0f);
                ImageViewerPopupView.this.f9512class.setScaleX(1.0f);
                ImageViewerPopupView.this.f9512class.setScaleY(1.0f);
                ImageViewerPopupView.this.f9519if.setVisibility(4);
            }
        }

        /* renamed from: com.lxj.xpopup.core.ImageViewerPopupView$if$if  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0128if extends AnimatorListenerAdapter {
            public C0128if() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                View view = ImageViewerPopupView.this.f9516final;
                if (view != null) {
                    view.setVisibility(4);
                }
            }
        }

        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition((ViewGroup) ImageViewerPopupView.this.f9512class.getParent(), new TransitionSet().setDuration(ImageViewerPopupView.this.getDuration()).addTransition(new ChangeBounds()).addTransition(new ChangeTransform()).addTransition(new ChangeImageTransform()).setInterpolator((TimeInterpolator) new FastOutSlowInInterpolator()).addListener((Transition.TransitionListener) new Cdo()));
            ImageViewerPopupView.this.f9512class.setScaleX(1.0f);
            ImageViewerPopupView.this.f9512class.setScaleY(1.0f);
            ImageViewerPopupView imageViewerPopupView = ImageViewerPopupView.this;
            imageViewerPopupView.f9512class.setTranslationY(imageViewerPopupView.f9509break.top);
            ImageViewerPopupView imageViewerPopupView2 = ImageViewerPopupView.this;
            imageViewerPopupView2.f9512class.setTranslationX(imageViewerPopupView2.f9509break.left);
            ImageViewerPopupView imageViewerPopupView3 = ImageViewerPopupView.this;
            imageViewerPopupView3.f9512class.setScaleType(imageViewerPopupView3.f9511catch.getScaleType());
            ImageViewerPopupView imageViewerPopupView4 = ImageViewerPopupView.this;
            pw.m2089native(imageViewerPopupView4.f9512class, imageViewerPopupView4.f9509break.width(), ImageViewerPopupView.this.f9509break.height());
            ImageViewerPopupView.m3601this(ImageViewerPopupView.this, 0);
            View view = ImageViewerPopupView.this.f9516final;
            if (view != null) {
                view.animate().alpha(0.0f).setDuration(ImageViewerPopupView.this.getDuration()).setListener(new C0128if()).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDuration() {
        return zu.f6264if + 60;
    }

    /* renamed from: this  reason: not valid java name */
    public static void m3601this(ImageViewerPopupView imageViewerPopupView, int i) {
        int color = ((ColorDrawable) imageViewerPopupView.f9514do.getBackground()).getColor();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new jv(imageViewerPopupView, color, i));
        ofFloat.setDuration(imageViewerPopupView.getDuration()).setInterpolator(new LinearInterpolator());
        ofFloat.start();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void destroy() {
        super.destroy();
        this.f9523try.removeOnPageChangeListener(null);
        this.f9518goto = null;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void dismiss() {
        if (this.popupStatus != qv.Show) {
            return;
        }
        this.popupStatus = qv.Dismissing;
        doDismissAnimation();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doAfterShow() {
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doDismissAnimation() {
        if (this.f9511catch == null) {
            this.f9514do.setBackgroundColor(0);
            doAfterDismiss();
            this.f9523try.setVisibility(4);
            this.f9519if.setVisibility(4);
            return;
        }
        this.f9517for.setVisibility(4);
        this.f9520new.setVisibility(4);
        this.f9523try.setVisibility(4);
        this.f9514do.isReleasing = true;
        this.f9512class.setVisibility(0);
        this.f9512class.post(new Cif());
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doShowAnimation() {
        if (this.f9511catch != null) {
            this.f9514do.isReleasing = true;
            this.f9512class.setVisibility(0);
            this.f9512class.post(new Cdo());
            return;
        }
        this.f9514do.setBackgroundColor(0);
        this.f9523try.setVisibility(0);
        throw null;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getAnimationDuration() {
        return 0;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_image_viewer_popup_view;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        this.f9517for = (TextView) findViewById(R$id.tv_pager_indicator);
        this.f9520new = (TextView) findViewById(R$id.tv_save);
        this.f9519if = (BlankView) findViewById(R$id.placeholderView);
        PhotoViewContainer photoViewContainer = (PhotoViewContainer) findViewById(R$id.photoViewContainer);
        this.f9514do = photoViewContainer;
        photoViewContainer.setOnDragChangeListener(this);
        HackyViewPager hackyViewPager = (HackyViewPager) findViewById(R$id.pager);
        this.f9523try = hackyViewPager;
        hackyViewPager.setAdapter(new Cfor());
        this.f9523try.setCurrentItem(0);
        this.f9523try.setVisibility(4);
        if (this.f9511catch != null) {
            if (this.f9512class != null) {
                this.f9519if.setVisibility(4);
                if (this.f9518goto != null) {
                    throw null;
                }
            } else {
                jw jwVar = new jw(getContext());
                this.f9512class = jwVar;
                this.f9514do.addView(jwVar);
                this.f9512class.setScaleType(this.f9511catch.getScaleType());
                throw null;
            }
        }
        this.f9523try.addOnPageChangeListener(null);
        this.f9517for.setVisibility(8);
        this.f9520new.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f9520new) {
            yu yuVar = new yu((Activity) getContext());
            yuVar.m3120if(wu.f5403do);
            yuVar.m3119for(new kv(this));
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDismiss() {
        super.onDismiss();
        this.f9511catch = null;
    }
}
