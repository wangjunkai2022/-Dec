package com.lxj.xpopup.core;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.apk.cv;
import com.apk.ev;
import com.apk.lv;
import com.apk.ov;
import com.apk.pv;
import com.apk.pw;
import com.codelibrary.R$color;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.widget.PartShadowContainer;

/* loaded from: classes8.dex */
public abstract class AttachPopupView extends BasePopupView {

    /* renamed from: break  reason: not valid java name */
    public int f9469break;

    /* renamed from: case  reason: not valid java name */
    public int f9470case;

    /* renamed from: catch  reason: not valid java name */
    public float f9471catch;

    /* renamed from: do  reason: not valid java name */
    public int f9472do;

    /* renamed from: else  reason: not valid java name */
    public float f9473else;

    /* renamed from: for  reason: not valid java name */
    public PartShadowContainer f9474for;

    /* renamed from: goto  reason: not valid java name */
    public float f9475goto;

    /* renamed from: if  reason: not valid java name */
    public int f9476if;

    /* renamed from: new  reason: not valid java name */
    public boolean f9477new;

    /* renamed from: this  reason: not valid java name */
    public float f9478this;

    /* renamed from: try  reason: not valid java name */
    public boolean f9479try;

    /* renamed from: com.lxj.xpopup.core.AttachPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AttachPopupView.this.mo3595if();
        }
    }

    /* renamed from: com.lxj.xpopup.core.AttachPopupView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f9481do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ Rect f9483if;

        public Cfor(boolean z, Rect rect) {
            this.f9481do = z;
            this.f9483if = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            AttachPopupView attachPopupView;
            AttachPopupView attachPopupView2;
            if (this.f9481do) {
                AttachPopupView attachPopupView3 = AttachPopupView.this;
                attachPopupView3.f9473else = -(attachPopupView3.f9479try ? ((pw.m2084final(attachPopupView3.getContext()) - this.f9483if.left) - AttachPopupView.this.getPopupContentView().getMeasuredWidth()) - AttachPopupView.this.f9476if : (pw.m2084final(attachPopupView3.getContext()) - this.f9483if.right) + AttachPopupView.this.f9476if);
            } else {
                AttachPopupView attachPopupView4 = AttachPopupView.this;
                attachPopupView4.f9473else = attachPopupView4.f9479try ? this.f9483if.left + attachPopupView4.f9476if : (this.f9483if.right - attachPopupView4.getPopupContentView().getMeasuredWidth()) - AttachPopupView.this.f9476if;
            }
            AttachPopupView attachPopupView5 = AttachPopupView.this;
            if (attachPopupView5.popupInfo.f2923finally) {
                if (attachPopupView5.f9479try) {
                    if (this.f9481do) {
                        attachPopupView5.f9473else -= (this.f9483if.width() - AttachPopupView.this.getPopupContentView().getMeasuredWidth()) / 2.0f;
                    } else {
                        attachPopupView5.f9473else = ((this.f9483if.width() - AttachPopupView.this.getPopupContentView().getMeasuredWidth()) / 2.0f) + attachPopupView5.f9473else;
                    }
                } else if (this.f9481do) {
                    attachPopupView5.f9473else = ((this.f9483if.width() - AttachPopupView.this.getPopupContentView().getMeasuredWidth()) / 2.0f) + attachPopupView5.f9473else;
                } else {
                    attachPopupView5.f9473else -= (this.f9483if.width() - AttachPopupView.this.getPopupContentView().getMeasuredWidth()) / 2.0f;
                }
            }
            if (AttachPopupView.this.m3596this()) {
                AttachPopupView.this.f9475goto = (this.f9483if.top - attachPopupView2.getPopupContentView().getMeasuredHeight()) - AttachPopupView.this.f9472do;
            } else {
                AttachPopupView.this.f9475goto = this.f9483if.bottom + attachPopupView.f9472do;
            }
            AttachPopupView.this.getPopupContentView().setTranslationX(AttachPopupView.this.f9473else);
            AttachPopupView.this.getPopupContentView().setTranslationY(AttachPopupView.this.f9475goto);
        }
    }

    /* renamed from: com.lxj.xpopup.core.AttachPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f9484do;

        public Cif(boolean z) {
            this.f9484do = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            AttachPopupView attachPopupView;
            float m2084final;
            AttachPopupView attachPopupView2;
            if (this.f9484do) {
                AttachPopupView attachPopupView3 = AttachPopupView.this;
                if (attachPopupView3.f9479try) {
                    m2084final = ((pw.m2084final(attachPopupView3.getContext()) - AttachPopupView.this.popupInfo.f2914catch.x) - attachPopupView2.getPopupContentView().getMeasuredWidth()) - AttachPopupView.this.f9476if;
                } else {
                    m2084final = (pw.m2084final(attachPopupView3.getContext()) - AttachPopupView.this.popupInfo.f2914catch.x) + attachPopupView.f9476if;
                }
                attachPopupView3.f9473else = -m2084final;
            } else {
                AttachPopupView attachPopupView4 = AttachPopupView.this;
                attachPopupView4.f9473else = attachPopupView4.f9479try ? attachPopupView4.popupInfo.f2914catch.x + attachPopupView4.f9476if : (attachPopupView4.popupInfo.f2914catch.x - attachPopupView4.getPopupContentView().getMeasuredWidth()) - AttachPopupView.this.f9476if;
            }
            AttachPopupView attachPopupView5 = AttachPopupView.this;
            if (attachPopupView5.popupInfo.f2923finally) {
                if (attachPopupView5.f9479try) {
                    if (this.f9484do) {
                        attachPopupView5.f9473else = (attachPopupView5.getPopupContentView().getMeasuredWidth() / 2.0f) + attachPopupView5.f9473else;
                    } else {
                        attachPopupView5.f9473else -= attachPopupView5.getPopupContentView().getMeasuredWidth() / 2.0f;
                    }
                } else if (this.f9484do) {
                    attachPopupView5.f9473else -= attachPopupView5.getPopupContentView().getMeasuredWidth() / 2.0f;
                } else {
                    attachPopupView5.f9473else = (attachPopupView5.getPopupContentView().getMeasuredWidth() / 2.0f) + attachPopupView5.f9473else;
                }
            }
            if (AttachPopupView.this.m3596this()) {
                AttachPopupView attachPopupView6 = AttachPopupView.this;
                attachPopupView6.f9475goto = (attachPopupView6.popupInfo.f2914catch.y - attachPopupView6.getPopupContentView().getMeasuredHeight()) - AttachPopupView.this.f9472do;
            } else {
                AttachPopupView attachPopupView7 = AttachPopupView.this;
                attachPopupView7.f9475goto = attachPopupView7.popupInfo.f2914catch.y + attachPopupView7.f9472do;
            }
            AttachPopupView.this.getPopupContentView().setTranslationX(AttachPopupView.this.f9473else);
            AttachPopupView.this.getPopupContentView().setTranslationY(AttachPopupView.this.f9475goto);
        }
    }

    public AttachPopupView(@NonNull Context context) {
        super(context);
        this.f9472do = 0;
        this.f9476if = 0;
        this.f9470case = 6;
        this.f9473else = 0.0f;
        this.f9475goto = 0.0f;
        this.f9478this = pw.m2081const(getContext());
        this.f9469break = 10;
        this.f9471catch = 0.0f;
        this.f9474for = (PartShadowContainer) findViewById(R$id.attachPopupContainer);
    }

    public void addInnerContent() {
        this.f9474for.addView(LayoutInflater.from(getContext()).inflate(getImplLayoutId(), (ViewGroup) this.f9474for, false));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        ev evVar;
        if (m3596this()) {
            evVar = new ev(getPopupContentView(), this.f9479try ? ov.ScrollAlphaFromLeftBottom : ov.ScrollAlphaFromRightBottom);
        } else {
            evVar = new ev(getPopupContentView(), this.f9479try ? ov.ScrollAlphaFromLeftTop : ov.ScrollAlphaFromRightTop);
        }
        return evVar;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_attach_popup_view;
    }

    /* renamed from: if  reason: not valid java name */
    public void mo3595if() {
        int m2081const;
        int i;
        float m2081const2;
        int i2;
        this.f9469break = pw.m2086goto(getContext(), this.f9469break);
        boolean m2094throw = pw.m2094throw(getContext());
        lv lvVar = this.popupInfo;
        PointF pointF = lvVar.f2914catch;
        if (pointF != null) {
            float f = pointF.y;
            this.f9471catch = f;
            if (f + ((float) getPopupContentView().getMeasuredHeight()) > this.f9478this) {
                this.f9477new = this.popupInfo.f2914catch.y > ((float) (pw.m2081const(getContext()) / 2));
            } else {
                this.f9477new = false;
            }
            this.f9479try = this.popupInfo.f2914catch.x < ((float) (pw.m2084final(getContext()) / 2));
            ViewGroup.LayoutParams layoutParams = getPopupContentView().getLayoutParams();
            if (m3596this()) {
                m2081const2 = this.popupInfo.f2914catch.y - pw.m2080class();
                i2 = this.f9469break;
            } else {
                m2081const2 = pw.m2081const(getContext()) - this.popupInfo.f2914catch.y;
                i2 = this.f9469break;
            }
            int i3 = (int) (m2081const2 - i2);
            int m2084final = (int) ((this.f9479try ? pw.m2084final(getContext()) - this.popupInfo.f2914catch.x : this.popupInfo.f2914catch.x) - this.f9469break);
            if (getPopupContentView().getMeasuredHeight() > i3) {
                layoutParams.height = i3;
            }
            if (getPopupContentView().getMeasuredWidth() > m2084final) {
                layoutParams.width = m2084final;
            }
            getPopupContentView().setLayoutParams(layoutParams);
            getPopupContentView().post(new Cif(m2094throw));
            return;
        }
        int[] iArr = new int[2];
        lvVar.f2920else.getLocationOnScreen(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], this.popupInfo.f2920else.getMeasuredWidth() + iArr[0], this.popupInfo.f2920else.getMeasuredHeight() + iArr[1]);
        int i4 = (rect.left + rect.right) / 2;
        boolean z = ((float) (getPopupContentView().getMeasuredHeight() + rect.bottom)) > this.f9478this;
        float f2 = (rect.top + rect.bottom) / 2;
        this.f9471catch = f2;
        if (z) {
            this.f9477new = f2 > ((float) (pw.m2081const(getContext()) / 2));
        } else {
            this.f9477new = false;
        }
        this.f9479try = i4 < pw.m2084final(getContext()) / 2;
        if (!this.isCreated) {
            ViewGroup.LayoutParams layoutParams2 = getPopupContentView().getLayoutParams();
            if (m3596this()) {
                m2081const = rect.top - pw.m2080class();
                i = this.f9469break;
            } else {
                m2081const = pw.m2081const(getContext()) - rect.bottom;
                i = this.f9469break;
            }
            int i5 = m2081const - i;
            int m2084final2 = (this.f9479try ? pw.m2084final(getContext()) - rect.left : rect.right) - this.f9469break;
            if (getPopupContentView().getMeasuredHeight() > i5) {
                layoutParams2.height = i5;
            }
            if (getPopupContentView().getMeasuredWidth() > m2084final2) {
                layoutParams2.width = m2084final2;
            }
            getPopupContentView().setLayoutParams(layoutParams2);
        }
        getPopupContentView().post(new Cfor(m2094throw, rect));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        if (this.f9474for.getChildCount() == 0) {
            addInnerContent();
        }
        lv lvVar = this.popupInfo;
        if (lvVar.f2920else == null && lvVar.f2914catch == null) {
            throw new IllegalArgumentException("atView() or touchPoint must not be null for AttachPopupView ！");
        }
        int i = this.popupInfo.f2918default;
        if (i == 0) {
            i = pw.m2086goto(getContext(), 4.0f);
        }
        this.f9472do = i;
        int i2 = this.popupInfo.f2942throws;
        this.f9476if = i2;
        this.f9474for.setTranslationX(i2);
        this.f9474for.setTranslationY(this.popupInfo.f2918default);
        if (!this.isCreated) {
            if (getPopupImplView().getBackground() != null) {
                Drawable.ConstantState constantState = getPopupImplView().getBackground().getConstantState();
                if (constantState != null) {
                    this.f9474for.setBackground(constantState.newDrawable());
                    getPopupImplView().setBackground(null);
                }
            } else {
                this.f9474for.setBackground(pw.m2078case(getResources().getColor(this.popupInfo.f2917continue ? R$color._xpopup_dark_color : R$color._xpopup_light_color), this.popupInfo.f2922final));
            }
            this.f9474for.setElevation(pw.m2086goto(getContext(), 20.0f));
        }
        pw.m2085for((ViewGroup) getPopupContentView(), getMaxWidth(), getMaxHeight(), new Cdo());
    }

    /* renamed from: this  reason: not valid java name */
    public boolean m3596this() {
        lv lvVar = this.popupInfo;
        return lvVar.f2933protected ? this.f9471catch > ((float) (pw.m2081const(getContext()) / 2)) : (this.f9477new || lvVar.f2929native == pv.Top) && this.popupInfo.f2929native != pv.Bottom;
    }
}
