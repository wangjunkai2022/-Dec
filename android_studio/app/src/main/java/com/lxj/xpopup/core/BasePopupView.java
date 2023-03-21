package com.lxj.xpopup.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.apk.av;
import com.apk.bv;
import com.apk.cv;
import com.apk.dv;
import com.apk.ev;
import com.apk.fv;
import com.apk.gv;
import com.apk.hv;
import com.apk.iv;
import com.apk.lv;
import com.apk.ov;
import com.apk.ow;
import com.apk.pw;
import com.apk.qv;
import com.apk.yv;
import com.apk.zu;
import com.lxj.xpopup.impl.FullScreenPopupView;
import com.lxj.xpopup.impl.PartShadowPopupView;
import java.util.ArrayList;
import java.util.Stack;

/* loaded from: classes8.dex */
public abstract class BasePopupView extends FrameLayout implements LifecycleObserver {
    public static Stack<BasePopupView> stack = new Stack<>();
    public final Runnable attachTask;
    public av blurAnimator;
    public iv dialog;
    public Runnable dismissWithRunnable;
    public final Runnable doAfterDismissTask;
    public final Runnable doAfterShowTask;
    public Handler handler;
    public boolean hasMoveUp;
    public final Runnable initTask;
    public boolean isCreated;
    public cv popupContentAnimator;
    public lv popupInfo;
    public qv popupStatus;
    public fv shadowBgAnimator;
    public Cgoto showSoftInputTask;
    public int touchSlop;
    public float x;
    public float y;

    /* renamed from: com.lxj.xpopup.core.BasePopupView$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Runnable {
        public Ccase() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View findViewById;
            lv lvVar = BasePopupView.this.popupInfo;
            if (lvVar == null) {
                return;
            }
            if (lvVar.f2938super.booleanValue()) {
                BasePopupView basePopupView = BasePopupView.this;
                if (basePopupView instanceof PartShadowPopupView) {
                    ow.m1984if(basePopupView);
                }
            }
            BasePopupView.this.onDismiss();
            BasePopupView basePopupView2 = BasePopupView.this;
            yv yvVar = basePopupView2.popupInfo.f2941throw;
            if (yvVar != null) {
                yvVar.mo397for(basePopupView2);
            }
            Runnable runnable = BasePopupView.this.dismissWithRunnable;
            if (runnable != null) {
                runnable.run();
                BasePopupView.this.dismissWithRunnable = null;
            }
            BasePopupView.this.popupStatus = qv.Dismiss;
            if (!BasePopupView.stack.isEmpty()) {
                BasePopupView.stack.pop();
            }
            if (BasePopupView.this.popupInfo.f2931package) {
                if (!BasePopupView.stack.isEmpty()) {
                    ((BasePopupView) BasePopupView.stack.get(BasePopupView.stack.size() - 1)).focusAndProcessBackPress();
                } else {
                    ViewGroup viewGroup = BasePopupView.this.popupInfo.f2945while;
                    if (viewGroup != null && (findViewById = viewGroup.findViewById(16908290)) != null) {
                        findViewById.setFocusable(true);
                        findViewById.setFocusableInTouchMode(true);
                    }
                }
            }
            iv ivVar = BasePopupView.this.dialog;
            if (ivVar != null) {
                ivVar.dismiss();
            }
        }
    }

    /* renamed from: com.lxj.xpopup.core.BasePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            iv ivVar = BasePopupView.this.dialog;
            if (ivVar == null || ivVar.getWindow() == null) {
                return;
            }
            BasePopupView.this.getPopupContentView().setAlpha(1.0f);
            BasePopupView.this.collectAnimator();
            yv yvVar = BasePopupView.this.popupInfo.f2941throw;
            if (yvVar != null && yvVar == null) {
                throw null;
            }
            BasePopupView.this.focusAndProcessBackPress();
            BasePopupView.this.doShowAnimation();
            BasePopupView.this.doAfterShow();
        }
    }

    /* renamed from: com.lxj.xpopup.core.BasePopupView$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements View.OnKeyListener {
        public Celse() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            lv lvVar;
            if (i == 4 && keyEvent.getAction() == 1 && (lvVar = BasePopupView.this.popupInfo) != null) {
                if (lvVar.f2926if.booleanValue()) {
                    BasePopupView basePopupView = BasePopupView.this;
                    yv yvVar = basePopupView.popupInfo.f2941throw;
                    if (yvVar == null || !yvVar.mo3121do(basePopupView)) {
                        BasePopupView.this.dismissOrHideSoftInput();
                    }
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.lxj.xpopup.core.BasePopupView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yv yvVar;
            BasePopupView basePopupView = BasePopupView.this;
            basePopupView.popupStatus = qv.Show;
            basePopupView.onShow();
            BasePopupView basePopupView2 = BasePopupView.this;
            lv lvVar = basePopupView2.popupInfo;
            if (lvVar != null && (yvVar = lvVar.f2941throw) != null) {
                yvVar.mo398new(basePopupView2);
            }
            iv ivVar = BasePopupView.this.dialog;
            if (ivVar == null || pw.m2077break(ivVar.getWindow()) <= 0 || BasePopupView.this.hasMoveUp) {
                return;
            }
            pw.m2088import(pw.m2077break(BasePopupView.this.dialog.getWindow()), BasePopupView.this);
        }
    }

    /* renamed from: com.lxj.xpopup.core.BasePopupView$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cgoto implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public View f9490do;

        /* renamed from: if  reason: not valid java name */
        public boolean f9491if = false;

        public Cgoto(View view) {
            this.f9490do = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.f9490do;
            if (view == null || this.f9491if) {
                return;
            }
            this.f9491if = true;
            ow.m1985new(view);
        }
    }

    /* renamed from: com.lxj.xpopup.core.BasePopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: com.lxj.xpopup.core.BasePopupView$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements ow.Cif {
            public Cdo() {
            }

            @Override // com.apk.ow.Cif
            /* renamed from: do */
            public void mo1986do(int i) {
                boolean z;
                yv yvVar;
                qv qvVar = qv.Showing;
                lv lvVar = BasePopupView.this.popupInfo;
                if (lvVar != null && (yvVar = lvVar.f2941throw) != null && yvVar == null) {
                    throw null;
                }
                boolean z2 = true;
                if (i == 0) {
                    BasePopupView basePopupView = BasePopupView.this;
                    if (!(basePopupView instanceof PositionPopupView) && (((z = basePopupView instanceof PartShadowPopupView)) || !(basePopupView instanceof AttachPopupView))) {
                        if (z) {
                            if (!((z && ((PartShadowPopupView) basePopupView).f9596do) ? false : false)) {
                                basePopupView.getPopupImplView().animate().translationY(0.0f).setDuration(100L).start();
                            }
                        }
                        basePopupView.getPopupContentView().animate().translationY(0.0f).setDuration(100L).start();
                    }
                    BasePopupView.this.hasMoveUp = false;
                    return;
                }
                BasePopupView basePopupView2 = BasePopupView.this;
                if ((basePopupView2 instanceof FullScreenPopupView) && basePopupView2.popupStatus == qvVar) {
                    return;
                }
                BasePopupView basePopupView3 = BasePopupView.this;
                if ((basePopupView3 instanceof PartShadowPopupView) && basePopupView3.popupStatus == qvVar) {
                    return;
                }
                pw.m2088import(i, BasePopupView.this);
                BasePopupView.this.hasMoveUp = true;
            }
        }

        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BasePopupView.this.attachDialog();
            if (BasePopupView.this.getContext() instanceof FragmentActivity) {
                ((FragmentActivity) BasePopupView.this.getContext()).getLifecycle().addObserver(BasePopupView.this);
            }
            BasePopupView basePopupView = BasePopupView.this;
            basePopupView.popupInfo.f2945while = (ViewGroup) basePopupView.dialog.getWindow().getDecorView();
            ow.m1983for(BasePopupView.this.dialog.getWindow(), BasePopupView.this, new Cdo());
            BasePopupView.this.init();
        }
    }

    /* renamed from: com.lxj.xpopup.core.BasePopupView$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BasePopupView.this.delayDismiss(zu.f6264if + 50);
        }
    }

    /* renamed from: com.lxj.xpopup.core.BasePopupView$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements Runnable {
        public Ctry() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BasePopupView.this.dismiss();
        }
    }

    public BasePopupView(@NonNull Context context) {
        super(context);
        this.popupStatus = qv.Dismiss;
        this.isCreated = false;
        this.handler = new Handler(Looper.getMainLooper());
        this.initTask = new Cdo();
        this.hasMoveUp = false;
        this.attachTask = new Cif();
        this.doAfterShowTask = new Cfor();
        this.doAfterDismissTask = new Ccase();
        if (!(context instanceof Application)) {
            this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            this.shadowBgAnimator = new fv(this);
            View inflate = LayoutInflater.from(context).inflate(getPopupLayoutId(), (ViewGroup) this, false);
            inflate.setAlpha(0.0f);
            addView(inflate);
            return;
        }
        throw new IllegalArgumentException("XPopup的Context必须是Activity类型！");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void attachDialog() {
        if (this.dialog == null) {
            iv ivVar = new iv(getContext());
            ivVar.f2257do = this;
            this.dialog = ivVar;
        }
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collectAnimator() {
        if ((this instanceof AttachPopupView) && !(this instanceof PartShadowPopupView)) {
            cv cvVar = this.popupInfo.f2912break;
            if (cvVar != null) {
                this.popupContentAnimator = cvVar;
                cvVar.f790do = getPopupContentView();
            } else {
                cv genAnimatorByPopupType = genAnimatorByPopupType();
                this.popupContentAnimator = genAnimatorByPopupType;
                if (genAnimatorByPopupType == null) {
                    this.popupContentAnimator = getPopupAnimator();
                }
            }
            if (this.popupInfo.f2943try.booleanValue()) {
                this.shadowBgAnimator.mo115for();
            }
            if (this.popupInfo.f2913case.booleanValue()) {
                av avVar = new av(this);
                this.blurAnimator = avVar;
                avVar.f179new = this.popupInfo.f2943try.booleanValue();
                this.blurAnimator.f178for = pw.m2091public(pw.m2090new(this).getWindow().getDecorView());
                this.blurAnimator.mo115for();
            }
            cv cvVar2 = this.popupContentAnimator;
            if (cvVar2 != null) {
                cvVar2.mo115for();
            }
        } else if (this.popupContentAnimator == null) {
            cv cvVar3 = this.popupInfo.f2912break;
            if (cvVar3 != null) {
                this.popupContentAnimator = cvVar3;
                cvVar3.f790do = getPopupContentView();
            } else {
                cv genAnimatorByPopupType2 = genAnimatorByPopupType();
                this.popupContentAnimator = genAnimatorByPopupType2;
                if (genAnimatorByPopupType2 == null) {
                    this.popupContentAnimator = getPopupAnimator();
                }
            }
            if (this.popupInfo.f2943try.booleanValue()) {
                this.shadowBgAnimator.mo115for();
            }
            if (this.popupInfo.f2913case.booleanValue()) {
                av avVar2 = new av(this);
                this.blurAnimator = avVar2;
                avVar2.f179new = this.popupInfo.f2943try.booleanValue();
                this.blurAnimator.f178for = pw.m2091public(pw.m2090new(this).getWindow().getDecorView());
                this.blurAnimator.mo115for();
            }
            cv cvVar4 = this.popupContentAnimator;
            if (cvVar4 != null) {
                cvVar4.mo115for();
            }
        }
    }

    public void applyDarkTheme() {
    }

    public void applyLightTheme() {
    }

    public void beforeDismiss() {
    }

    public void delayDismiss(long j) {
        if (j < 0) {
            j = 0;
        }
        this.handler.postDelayed(new Ctry(), j);
    }

    public void delayDismissWith(long j, Runnable runnable) {
        this.dismissWithRunnable = runnable;
        delayDismiss(j);
    }

    public void destroy() {
        iv ivVar = this.dialog;
        if (ivVar != null) {
            ivVar.dismiss();
        }
        onDetachedFromWindow();
        lv lvVar = this.popupInfo;
        if (lvVar != null) {
            lvVar.f2920else = null;
            lvVar.f2925goto = null;
            lvVar.f2941throw = null;
        }
        this.popupInfo = null;
    }

    public void dismiss() {
        yv yvVar;
        qv qvVar = qv.Dismissing;
        this.handler.removeCallbacks(this.attachTask);
        this.handler.removeCallbacks(this.initTask);
        qv qvVar2 = this.popupStatus;
        if (qvVar2 == qvVar || qvVar2 == qv.Dismiss) {
            return;
        }
        this.popupStatus = qvVar;
        clearFocus();
        lv lvVar = this.popupInfo;
        if (lvVar != null && (yvVar = lvVar.f2941throw) != null && yvVar == null) {
            throw null;
        }
        beforeDismiss();
        doDismissAnimation();
        doAfterDismiss();
    }

    public void dismissOrHideSoftInput() {
        if (ow.f3523do == 0) {
            dismiss();
        } else {
            ow.m1984if(this);
        }
    }

    public void dismissWith(Runnable runnable) {
        this.dismissWithRunnable = runnable;
        dismiss();
    }

    public void doAfterDismiss() {
        lv lvVar = this.popupInfo;
        if (lvVar != null && lvVar.f2938super.booleanValue() && !(this instanceof PartShadowPopupView)) {
            ow.m1984if(this);
        }
        this.handler.removeCallbacks(this.doAfterDismissTask);
        this.handler.postDelayed(this.doAfterDismissTask, (getAnimationDuration() * 2) / 3);
    }

    public void doAfterShow() {
        this.handler.removeCallbacks(this.doAfterShowTask);
        this.handler.postDelayed(this.doAfterShowTask, getAnimationDuration());
    }

    public void doDismissAnimation() {
        av avVar;
        if (this.popupInfo.f2943try.booleanValue() && !this.popupInfo.f2913case.booleanValue()) {
            this.shadowBgAnimator.mo114do();
        } else if (this.popupInfo.f2913case.booleanValue() && (avVar = this.blurAnimator) != null && avVar == null) {
            throw null;
        }
        cv cvVar = this.popupContentAnimator;
        if (cvVar != null) {
            cvVar.mo114do();
        }
    }

    public void doShowAnimation() {
        av avVar;
        if (this.popupInfo.f2943try.booleanValue() && !this.popupInfo.f2913case.booleanValue()) {
            this.shadowBgAnimator.mo116if();
        } else if (this.popupInfo.f2913case.booleanValue() && (avVar = this.blurAnimator) != null && avVar == null) {
            throw null;
        }
        cv cvVar = this.popupContentAnimator;
        if (cvVar != null) {
            cvVar.mo116if();
        }
    }

    public void focusAndProcessBackPress() {
        lv lvVar = this.popupInfo;
        if (lvVar == null || !lvVar.f2931package) {
            return;
        }
        setFocusableInTouchMode(true);
        requestFocus();
        if (!stack.contains(this)) {
            stack.push(this);
        }
        setOnKeyListener(new Celse());
        if (!this.popupInfo.f2932private) {
            showSoftInput(this);
        }
        ArrayList arrayList = new ArrayList();
        pw.m2093this(arrayList, (ViewGroup) getPopupContentView());
        for (int i = 0; i < arrayList.size(); i++) {
            EditText editText = (EditText) arrayList.get(i);
            editText.setOnKeyListener(new Celse());
            if (i == 0 && this.popupInfo.f2932private) {
                editText.setFocusable(true);
                editText.setFocusableInTouchMode(true);
                editText.requestFocus();
                showSoftInput(editText);
            }
        }
    }

    public cv genAnimatorByPopupType() {
        ov ovVar;
        lv lvVar = this.popupInfo;
        if (lvVar == null || (ovVar = lvVar.f2940this) == null) {
            return null;
        }
        switch (ovVar.ordinal()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                return new dv(getPopupContentView(), this.popupInfo.f2940this);
            case 5:
            case 6:
            case 7:
            case 8:
                return new gv(getPopupContentView(), this.popupInfo.f2940this);
            case 9:
            case 10:
            case 11:
            case 12:
                return new hv(getPopupContentView(), this.popupInfo.f2940this);
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                return new ev(getPopupContentView(), this.popupInfo.f2940this);
            case 21:
                return new bv(getPopupContentView());
            default:
                return null;
        }
    }

    public int getAnimationDuration() {
        if (this.popupInfo.f2940this == ov.NoAnimation) {
            return 10;
        }
        return 10 + zu.f6264if;
    }

    public int getImplLayoutId() {
        return -1;
    }

    public int getMaxHeight() {
        return this.popupInfo.f2916const;
    }

    public int getMaxWidth() {
        return 0;
    }

    public cv getPopupAnimator() {
        return null;
    }

    public View getPopupContentView() {
        return getChildAt(0);
    }

    public int getPopupHeight() {
        return 0;
    }

    public View getPopupImplView() {
        return ((ViewGroup) getPopupContentView()).getChildAt(0);
    }

    public abstract int getPopupLayoutId();

    public int getPopupWidth() {
        return 0;
    }

    public View getTargetSizeView() {
        return getPopupContentView();
    }

    public void init() {
        if (!this.isCreated) {
            initPopupContent();
        }
        if (!(this instanceof FullScreenPopupView) && !(this instanceof ImageViewerPopupView)) {
            pw.m2089native(getTargetSizeView(), (getMaxWidth() == 0 || getPopupWidth() <= getMaxWidth()) ? getPopupWidth() : getMaxWidth(), (getMaxHeight() == 0 || getPopupHeight() <= getMaxHeight()) ? getPopupHeight() : getMaxHeight());
        }
        if (!this.isCreated) {
            this.isCreated = true;
            onCreate();
            yv yvVar = this.popupInfo.f2941throw;
            if (yvVar != null) {
                yvVar.mo308if(this);
            }
        }
        this.handler.postDelayed(this.initTask, 50L);
    }

    public void initPopupContent() {
    }

    public boolean isDismiss() {
        return this.popupStatus == qv.Dismiss;
    }

    public boolean isShow() {
        return this.popupStatus != qv.Dismiss;
    }

    public void onCreate() {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        destroy();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        Bitmap bitmap;
        View findViewById;
        super.onDetachedFromWindow();
        stack.clear();
        this.handler.removeCallbacksAndMessages(null);
        lv lvVar = this.popupInfo;
        if (lvVar != null) {
            ViewGroup viewGroup = lvVar.f2945while;
            if (viewGroup != null) {
                ow.f3525if = null;
                if (viewGroup != null && (findViewById = viewGroup.findViewById(16908290)) != null) {
                    findViewById.getViewTreeObserver().removeGlobalOnLayoutListener(ow.f3525if);
                    ow.f3524for.remove(this);
                }
            }
            lv lvVar2 = this.popupInfo;
            if (lvVar2.f2928interface) {
                lvVar2.f2920else = null;
                lvVar2.f2925goto = null;
                lvVar2.f2941throw = null;
                this.popupInfo = null;
            }
        }
        this.popupStatus = qv.Dismiss;
        this.showSoftInputTask = null;
        this.hasMoveUp = false;
        av avVar = this.blurAnimator;
        if (avVar == null || (bitmap = avVar.f178for) == null || bitmap.isRecycled()) {
            return;
        }
        this.blurAnimator.f178for.recycle();
        this.blurAnimator.f178for = null;
    }

    public void onDismiss() {
    }

    public void onShow() {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        lv lvVar;
        Rect rect = new Rect();
        getPopupContentView().getGlobalVisibleRect(rect);
        if (!pw.m2092super(motionEvent.getX(), motionEvent.getY(), rect)) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.x = motionEvent.getX();
                this.y = motionEvent.getY();
            } else if (action == 1) {
                float x = motionEvent.getX() - this.x;
                if (((float) Math.sqrt(Math.pow(motionEvent.getY() - this.y, 2.0d) + Math.pow(x, 2.0d))) < this.touchSlop && this.popupInfo.f2924for.booleanValue()) {
                    dismiss();
                }
                this.x = 0.0f;
                this.y = 0.0f;
            }
        }
        iv ivVar = this.dialog;
        if (ivVar != null && (lvVar = this.popupInfo) != null && lvVar.f2911abstract) {
            ivVar.m1288if(motionEvent);
        }
        return true;
    }

    public synchronized BasePopupView show() {
        qv qvVar = qv.Showing;
        synchronized (this) {
            Activity m2090new = pw.m2090new(this);
            if (m2090new != null && !m2090new.isFinishing()) {
                if (this.popupStatus == qvVar) {
                    return this;
                }
                this.popupStatus = qvVar;
                if (this.dialog == null || !this.dialog.isShowing()) {
                    this.handler.post(this.attachTask);
                    return this;
                }
                return this;
            }
            return this;
        }
    }

    public void showSoftInput(View view) {
        if (this.popupInfo.f2938super.booleanValue()) {
            Cgoto cgoto = this.showSoftInputTask;
            if (cgoto == null) {
                this.showSoftInputTask = new Cgoto(view);
            } else {
                this.handler.removeCallbacks(cgoto);
            }
            this.handler.postDelayed(this.showSoftInputTask, 10L);
        }
    }

    public void smartDismiss() {
        this.handler.post(new Cnew());
    }

    public void toggle() {
        if (isShow()) {
            dismiss();
        } else {
            show();
        }
    }
}
