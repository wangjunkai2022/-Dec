package com.biquge.ebook.app.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import com.biquge.ebook.app.R$styleable;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ExpandableTextView extends FrameLayout implements View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public Drawable f8051break;

    /* renamed from: case  reason: not valid java name */
    public int f8052case;

    /* renamed from: catch  reason: not valid java name */
    public int f8053catch;

    /* renamed from: class  reason: not valid java name */
    public float f8054class;

    /* renamed from: const  reason: not valid java name */
    public boolean f8055const;

    /* renamed from: do  reason: not valid java name */
    public TextView f8056do;

    /* renamed from: else  reason: not valid java name */
    public int f8057else;

    /* renamed from: final  reason: not valid java name */
    public Cnew f8058final;

    /* renamed from: for  reason: not valid java name */
    public boolean f8059for;

    /* renamed from: goto  reason: not valid java name */
    public int f8060goto;

    /* renamed from: if  reason: not valid java name */
    public ImageButton f8061if;

    /* renamed from: new  reason: not valid java name */
    public boolean f8062new;

    /* renamed from: this  reason: not valid java name */
    public Drawable f8063this;

    /* renamed from: try  reason: not valid java name */
    public int f8064try;

    /* renamed from: com.biquge.ebook.app.widget.ExpandableTextView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Animation.AnimationListener {
        public Cdo() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ExpandableTextView.this.clearAnimation();
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.f8055const = false;
            Cnew cnew = expandableTextView.f8058final;
            if (cnew != null) {
                cnew.m3475do(expandableTextView.f8056do, !expandableTextView.f8062new);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.f8056do.setAlpha(expandableTextView.f8054class);
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ExpandableTextView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends Animation {

        /* renamed from: do  reason: not valid java name */
        public final View f8066do;

        /* renamed from: for  reason: not valid java name */
        public final int f8067for;

        /* renamed from: if  reason: not valid java name */
        public final int f8068if;

        public Cfor(View view, int i, int i2) {
            this.f8066do = view;
            this.f8068if = i;
            this.f8067for = i2;
            setDuration(ExpandableTextView.this.f8053catch);
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            int i = this.f8067for;
            int i2 = this.f8068if;
            int i3 = (int) (((i - i2) * f) + i2);
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.f8056do.setMaxHeight(i3 - expandableTextView.f8060goto);
            if (Float.compare(ExpandableTextView.this.f8054class, 1.0f) != 0) {
                ExpandableTextView expandableTextView2 = ExpandableTextView.this;
                TextView textView = expandableTextView2.f8056do;
                float f2 = expandableTextView2.f8054class;
                textView.setAlpha(((1.0f - f2) * f) + f2);
            }
            this.f8066do.getLayoutParams().height = i3;
            this.f8066do.requestLayout();
        }

        @Override // android.view.animation.Animation
        public void initialize(int i, int i2, int i3, int i4) {
            super.initialize(i, i2, i3, i4);
        }

        @Override // android.view.animation.Animation
        public boolean willChangeBounds() {
            return true;
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ExpandableTextView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.f8060goto = expandableTextView.getHeight() - ExpandableTextView.this.f8056do.getHeight();
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ExpandableTextView$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew {
        /* renamed from: do  reason: not valid java name */
        void m3475do(TextView textView, boolean z);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8062new = true;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ExpandableTextView);
        this.f8057else = obtainStyledAttributes.getInt(4, 8);
        this.f8053catch = obtainStyledAttributes.getInt(1, 300);
        this.f8054class = obtainStyledAttributes.getFloat(0, 0.7f);
        this.f8063this = obtainStyledAttributes.getDrawable(3);
        this.f8051break = obtainStyledAttributes.getDrawable(2);
        if (this.f8063this == null) {
            this.f8063this = getContext().getResources().getDrawable(R.drawable.sjxq_down_arrow);
        }
        if (this.f8051break == null) {
            this.f8051break = getContext().getResources().getDrawable(R.drawable.sjxq_up_arrow);
        }
        obtainStyledAttributes.recycle();
        setVisibility(8);
    }

    @Nullable
    public CharSequence getText() {
        TextView textView = this.f8056do;
        return textView == null ? "" : textView.getText();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Cfor cfor;
        if (this.f8061if.getVisibility() != 0) {
            return;
        }
        boolean z = !this.f8062new;
        this.f8062new = z;
        this.f8061if.setImageDrawable(z ? this.f8063this : this.f8051break);
        this.f8055const = true;
        if (this.f8062new) {
            cfor = new Cfor(this, getHeight(), this.f8064try);
        } else {
            cfor = new Cfor(this, getHeight(), (getHeight() + this.f8052case) - this.f8056do.getHeight());
        }
        cfor.setFillAfter(true);
        cfor.setAnimationListener(new Cdo());
        clearAnimation();
        startAnimation(cfor);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        TextView textView = (TextView) findViewById(R.id.expandable_text);
        this.f8056do = textView;
        textView.setOnClickListener(this);
        ImageButton imageButton = (ImageButton) findViewById(R.id.expand_collapse);
        this.f8061if = imageButton;
        imageButton.setImageDrawable(this.f8062new ? this.f8063this : this.f8051break);
        this.f8061if.setOnClickListener(this);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f8055const;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f8059for && getVisibility() != 8) {
            this.f8059for = false;
            this.f8061if.setVisibility(8);
            this.f8056do.setMaxLines(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            super.onMeasure(i, i2);
            if (this.f8056do.getLineCount() <= this.f8057else) {
                return;
            }
            TextView textView = this.f8056do;
            this.f8052case = textView.getCompoundPaddingBottom() + textView.getCompoundPaddingTop() + textView.getLayout().getLineTop(textView.getLineCount());
            if (this.f8062new) {
                this.f8056do.setMaxLines(this.f8057else);
            }
            this.f8061if.setVisibility(0);
            super.onMeasure(i, i2);
            if (this.f8062new) {
                this.f8056do.post(new Cif());
                this.f8064try = getMeasuredHeight();
                return;
            }
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setOnExpandStateChangeListener(@Nullable Cnew cnew) {
        this.f8058final = cnew;
    }

    public void setText(@Nullable CharSequence charSequence) {
        this.f8059for = true;
        this.f8056do.setText(charSequence);
        setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }
}
