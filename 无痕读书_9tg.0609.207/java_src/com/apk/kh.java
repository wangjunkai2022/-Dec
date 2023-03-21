package com.apk;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.R$styleable;
import com.qq.e.comm.adevent.AdEventType;
import kimi.wuhends.ebooks.R;
/* compiled from: NumberProgressBar.java */
/* loaded from: classes8.dex */
public class kh extends View {

    /* renamed from: abstract  reason: not valid java name */
    public boolean f2538abstract;

    /* renamed from: break  reason: not valid java name */
    public String f2539break;

    /* renamed from: case  reason: not valid java name */
    public float f2540case;

    /* renamed from: catch  reason: not valid java name */
    public final int f2541catch;

    /* renamed from: class  reason: not valid java name */
    public final int f2542class;

    /* renamed from: const  reason: not valid java name */
    public final int f2543const;

    /* renamed from: default  reason: not valid java name */
    public RectF f2544default;

    /* renamed from: do  reason: not valid java name */
    public int f2545do;

    /* renamed from: else  reason: not valid java name */
    public float f2546else;

    /* renamed from: extends  reason: not valid java name */
    public RectF f2547extends;

    /* renamed from: final  reason: not valid java name */
    public final float f2548final;

    /* renamed from: finally  reason: not valid java name */
    public float f2549finally;

    /* renamed from: for  reason: not valid java name */
    public int f2550for;

    /* renamed from: goto  reason: not valid java name */
    public float f2551goto;

    /* renamed from: if  reason: not valid java name */
    public int f2552if;

    /* renamed from: import  reason: not valid java name */
    public float f2553import;

    /* renamed from: native  reason: not valid java name */
    public float f2554native;

    /* renamed from: new  reason: not valid java name */
    public int f2555new;

    /* renamed from: package  reason: not valid java name */
    public boolean f2556package;

    /* renamed from: private  reason: not valid java name */
    public boolean f2557private;

    /* renamed from: public  reason: not valid java name */
    public float f2558public;

    /* renamed from: return  reason: not valid java name */
    public String f2559return;

    /* renamed from: static  reason: not valid java name */
    public Paint f2560static;

    /* renamed from: super  reason: not valid java name */
    public final float f2561super;

    /* renamed from: switch  reason: not valid java name */
    public Paint f2562switch;

    /* renamed from: this  reason: not valid java name */
    public String f2563this;

    /* renamed from: throw  reason: not valid java name */
    public final float f2564throw;

    /* renamed from: throws  reason: not valid java name */
    public Paint f2565throws;

    /* renamed from: try  reason: not valid java name */
    public int f2566try;

    /* renamed from: while  reason: not valid java name */
    public final float f2567while;

    /* compiled from: NumberProgressBar.java */
    /* renamed from: com.apk.kh$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cdo {
        Visible,
        Invisible
    }

    public kh(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.style.fq);
    }

    /* renamed from: do  reason: not valid java name */
    public float m1502do(float f) {
        return (f * getResources().getDisplayMetrics().density) + 0.5f;
    }

    /* renamed from: for  reason: not valid java name */
    public final int m1503for(int i, boolean z) {
        int paddingTop;
        int paddingBottom;
        int suggestedMinimumHeight;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (z) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i2 = paddingBottom + paddingTop;
        if (mode == 1073741824) {
            return size;
        }
        if (z) {
            suggestedMinimumHeight = getSuggestedMinimumWidth();
        } else {
            suggestedMinimumHeight = getSuggestedMinimumHeight();
        }
        int i3 = suggestedMinimumHeight + i2;
        if (mode == Integer.MIN_VALUE) {
            if (z) {
                return Math.max(i3, size);
            }
            return Math.min(i3, size);
        }
        return i3;
    }

    public int getMax() {
        return this.f2545do;
    }

    public String getPrefix() {
        return this.f2539break;
    }

    public int getProgress() {
        return this.f2552if;
    }

    public float getProgressTextSize() {
        return this.f2540case;
    }

    public boolean getProgressTextVisibility() {
        return this.f2538abstract;
    }

    public int getReachedBarColor() {
        return this.f2550for;
    }

    public float getReachedBarHeight() {
        return this.f2546else;
    }

    public String getSuffix() {
        return this.f2563this;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max((int) this.f2540case, Math.max((int) this.f2546else, (int) this.f2551goto));
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return (int) this.f2540case;
    }

    public int getTextColor() {
        return this.f2566try;
    }

    public int getUnreachedBarColor() {
        return this.f2555new;
    }

    public float getUnreachedBarHeight() {
        return this.f2551goto;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1504if() {
        Paint paint = new Paint(1);
        this.f2560static = paint;
        paint.setColor(this.f2550for);
        Paint paint2 = new Paint(1);
        this.f2562switch = paint2;
        paint2.setColor(this.f2555new);
        Paint paint3 = new Paint(1);
        this.f2565throws = paint3;
        paint3.setColor(this.f2566try);
        this.f2565throws.setTextSize(this.f2540case);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f2538abstract) {
            this.f2559return = String.format("%d", Integer.valueOf((getProgress() * 100) / getMax()));
            String str = this.f2539break + this.f2559return + this.f2563this;
            this.f2559return = str;
            this.f2553import = this.f2565throws.measureText(str);
            if (getProgress() == 0) {
                this.f2557private = false;
                this.f2554native = getPaddingLeft();
            } else {
                this.f2557private = true;
                this.f2547extends.left = getPaddingLeft();
                this.f2547extends.top = (getHeight() / 2.0f) - (this.f2546else / 2.0f);
                this.f2547extends.right = (((((getWidth() - getPaddingLeft()) - getPaddingRight()) / (getMax() * 1.0f)) * getProgress()) - this.f2549finally) + getPaddingLeft();
                this.f2547extends.bottom = (this.f2546else / 2.0f) + (getHeight() / 2.0f);
                this.f2554native = this.f2547extends.right + this.f2549finally;
            }
            this.f2558public = (int) ((getHeight() / 2.0f) - ((this.f2565throws.ascent() + this.f2565throws.descent()) / 2.0f));
            if (this.f2554native + this.f2553import >= getWidth() - getPaddingRight()) {
                float width = (getWidth() - getPaddingRight()) - this.f2553import;
                this.f2554native = width;
                this.f2547extends.right = width - this.f2549finally;
            }
            float f = this.f2554native + this.f2553import + this.f2549finally;
            if (f >= getWidth() - getPaddingRight()) {
                this.f2556package = false;
            } else {
                RectF rectF = this.f2544default;
                rectF.left = f;
                rectF.right = getWidth() - getPaddingRight();
                this.f2544default.top = ((-this.f2551goto) / 2.0f) + (getHeight() / 2.0f);
                this.f2544default.bottom = (this.f2551goto / 2.0f) + (getHeight() / 2.0f);
            }
        } else {
            this.f2547extends.left = getPaddingLeft();
            this.f2547extends.top = (getHeight() / 2.0f) - (this.f2546else / 2.0f);
            this.f2547extends.right = ((((getWidth() - getPaddingLeft()) - getPaddingRight()) / (getMax() * 1.0f)) * getProgress()) + getPaddingLeft();
            this.f2547extends.bottom = (this.f2546else / 2.0f) + (getHeight() / 2.0f);
            RectF rectF2 = this.f2544default;
            rectF2.left = this.f2547extends.right;
            rectF2.right = getWidth() - getPaddingRight();
            this.f2544default.top = ((-this.f2551goto) / 2.0f) + (getHeight() / 2.0f);
            this.f2544default.bottom = (this.f2551goto / 2.0f) + (getHeight() / 2.0f);
        }
        if (this.f2557private) {
            canvas.drawRect(this.f2547extends, this.f2560static);
        }
        if (this.f2556package) {
            canvas.drawRect(this.f2544default, this.f2562switch);
        }
        if (this.f2538abstract) {
            canvas.drawText(this.f2559return, this.f2554native, this.f2558public, this.f2565throws);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(m1503for(i, true), m1503for(i2, false));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f2566try = bundle.getInt("text_color");
            this.f2540case = bundle.getFloat("text_size");
            this.f2546else = bundle.getFloat("reached_bar_height");
            this.f2551goto = bundle.getFloat("unreached_bar_height");
            this.f2550for = bundle.getInt("reached_bar_color");
            this.f2555new = bundle.getInt("unreached_bar_color");
            m1504if();
            setMax(bundle.getInt("max"));
            setProgress(bundle.getInt(NotificationCompat.CATEGORY_PROGRESS));
            setPrefix(bundle.getString("prefix"));
            setSuffix(bundle.getString("suffix"));
            setProgressTextVisibility(bundle.getBoolean("text_visibility") ? Cdo.Visible : Cdo.Invisible);
            super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putInt("text_color", getTextColor());
        bundle.putFloat("text_size", getProgressTextSize());
        bundle.putFloat("reached_bar_height", getReachedBarHeight());
        bundle.putFloat("unreached_bar_height", getUnreachedBarHeight());
        bundle.putInt("reached_bar_color", getReachedBarColor());
        bundle.putInt("unreached_bar_color", getUnreachedBarColor());
        bundle.putInt("max", getMax());
        bundle.putInt(NotificationCompat.CATEGORY_PROGRESS, getProgress());
        bundle.putString("suffix", getSuffix());
        bundle.putString("prefix", getPrefix());
        bundle.putBoolean("text_visibility", getProgressTextVisibility());
        return bundle;
    }

    public void setMax(int i) {
        if (i > 0) {
            this.f2545do = i;
            invalidate();
        }
    }

    public void setPrefix(String str) {
        if (str == null) {
            this.f2539break = "";
        } else {
            this.f2539break = str;
        }
    }

    public void setProgress(int i) {
        if (i > getMax() || i < 0) {
            return;
        }
        this.f2552if = i;
        invalidate();
    }

    public void setProgressTextColor(int i) {
        this.f2566try = i;
        this.f2565throws.setColor(i);
        invalidate();
    }

    public void setProgressTextSize(float f) {
        this.f2540case = f;
        this.f2565throws.setTextSize(f);
        invalidate();
    }

    public void setProgressTextVisibility(Cdo cdo) {
        this.f2538abstract = cdo == Cdo.Visible;
        invalidate();
    }

    public void setReachedBarColor(int i) {
        this.f2550for = i;
        this.f2560static.setColor(i);
        invalidate();
    }

    public void setReachedBarHeight(float f) {
        this.f2546else = f;
    }

    public void setSuffix(String str) {
        if (str == null) {
            this.f2563this = "";
        } else {
            this.f2563this = str;
        }
    }

    public void setUnreachedBarColor(int i) {
        this.f2555new = i;
        this.f2562switch.setColor(i);
        invalidate();
    }

    public void setUnreachedBarDrawStatus(boolean z) {
        this.f2556package = z;
    }

    public void setUnreachedBarHeight(float f) {
        this.f2551goto = f;
    }

    public kh(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2545do = 100;
        this.f2552if = 0;
        this.f2563this = "%";
        this.f2539break = "";
        this.f2541catch = Color.rgb(66, 145, 241);
        this.f2542class = Color.rgb(66, 145, 241);
        this.f2543const = Color.rgb((int) AdEventType.VIDEO_PAUSE, (int) AdEventType.VIDEO_PAUSE, (int) AdEventType.VIDEO_PAUSE);
        this.f2544default = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.f2547extends = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.f2556package = true;
        this.f2557private = true;
        this.f2538abstract = true;
        this.f2564throw = m1502do(1.5f);
        this.f2567while = m1502do(1.0f);
        this.f2561super = 10.0f * getResources().getDisplayMetrics().scaledDensity;
        this.f2548final = m1502do(3.0f);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.NumberProgressBar, i, 0);
        this.f2550for = obtainStyledAttributes.getColor(3, this.f2542class);
        this.f2555new = obtainStyledAttributes.getColor(9, this.f2543const);
        this.f2566try = obtainStyledAttributes.getColor(4, this.f2541catch);
        this.f2540case = obtainStyledAttributes.getDimension(6, this.f2561super);
        this.f2546else = obtainStyledAttributes.getDimension(2, this.f2564throw);
        this.f2551goto = obtainStyledAttributes.getDimension(8, this.f2567while);
        this.f2549finally = obtainStyledAttributes.getDimension(5, this.f2548final);
        if (obtainStyledAttributes.getInt(7, 0) != 0) {
            this.f2538abstract = false;
        }
        setProgress(obtainStyledAttributes.getInt(1, 0));
        setMax(obtainStyledAttributes.getInt(0, 100));
        obtainStyledAttributes.recycle();
        m1504if();
    }
}
