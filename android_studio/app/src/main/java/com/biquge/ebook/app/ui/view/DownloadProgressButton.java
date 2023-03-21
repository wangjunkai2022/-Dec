package com.biquge.ebook.app.ui.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.apk.vc;
import com.apk.wc;
import com.apk.xc;
import com.apk.ze;
import com.qq.e.comm.adevent.AdEventType;
import java.util.ArrayList;
import java.util.Iterator;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class DownloadProgressButton extends AppCompatTextView {

    /* renamed from: break  reason: not valid java name */
    public float f7676break;

    /* renamed from: case  reason: not valid java name */
    public int f7677case;

    /* renamed from: catch  reason: not valid java name */
    public float f7678catch;

    /* renamed from: class  reason: not valid java name */
    public int f7679class;

    /* renamed from: const  reason: not valid java name */
    public int f7680const;

    /* renamed from: default  reason: not valid java name */
    public ArrayList<ValueAnimator> f7681default;

    /* renamed from: do  reason: not valid java name */
    public Paint f7682do;

    /* renamed from: else  reason: not valid java name */
    public float f7683else;

    /* renamed from: extends  reason: not valid java name */
    public float[] f7684extends;

    /* renamed from: final  reason: not valid java name */
    public float f7685final;

    /* renamed from: finally  reason: not valid java name */
    public float[] f7686finally;

    /* renamed from: for  reason: not valid java name */
    public int f7687for;

    /* renamed from: goto  reason: not valid java name */
    public float f7688goto;

    /* renamed from: if  reason: not valid java name */
    public volatile Paint f7689if;

    /* renamed from: import  reason: not valid java name */
    public float f7690import;

    /* renamed from: native  reason: not valid java name */
    public boolean f7691native;

    /* renamed from: new  reason: not valid java name */
    public int f7692new;

    /* renamed from: public  reason: not valid java name */
    public RectF f7693public;

    /* renamed from: return  reason: not valid java name */
    public LinearGradient f7694return;

    /* renamed from: static  reason: not valid java name */
    public ValueAnimator f7695static;

    /* renamed from: super  reason: not valid java name */
    public float f7696super;

    /* renamed from: switch  reason: not valid java name */
    public CharSequence f7697switch;

    /* renamed from: this  reason: not valid java name */
    public int f7698this;

    /* renamed from: throw  reason: not valid java name */
    public float f7699throw;

    /* renamed from: throws  reason: not valid java name */
    public int f7700throws;

    /* renamed from: try  reason: not valid java name */
    public int f7701try;

    /* renamed from: while  reason: not valid java name */
    public float f7702while;

    public DownloadProgressButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7698this = 2;
        this.f7676break = -1.0f;
        this.f7702while = 4.0f;
        this.f7690import = 6.0f;
        this.f7684extends = new float[]{1.0f, 1.0f, 1.0f};
        this.f7686finally = new float[3];
        if (isInEditMode()) {
            return;
        }
        this.f7679class = 100;
        this.f7680const = 0;
        this.f7676break = 0.0f;
        Paint paint = new Paint();
        this.f7682do = paint;
        paint.setAntiAlias(true);
        this.f7682do.setStyle(Paint.Style.FILL);
        this.f7689if = new Paint();
        this.f7689if.setAntiAlias(true);
        this.f7689if.setTextSize(m3406if(14));
        setLayerType(1, this.f7689if);
        this.f7700throws = 0;
        invalidate();
        this.f7687for = ze.p(R.color.colorPrimary);
        this.f7692new = Color.parseColor("#555555");
        this.f7701try = Color.parseColor("#bababa");
        this.f7677case = Color.parseColor("#ffffff");
        this.f7683else = m3406if(15);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
        this.f7695static = duration;
        duration.addUpdateListener(new vc(this));
        setBallStyle(this.f7698this);
    }

    private void setBallStyle(int i) {
        this.f7698this = i;
        if (i == 1) {
            ArrayList<ValueAnimator> arrayList = new ArrayList<>();
            int[] iArr = {120, 240, 360};
            for (int i2 = 0; i2 < 3; i2++) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
                ofFloat.setDuration(750L);
                ofFloat.setRepeatCount(-1);
                ofFloat.setStartDelay(iArr[i2]);
                ofFloat.addUpdateListener(new wc(this, i2));
                arrayList.add(ofFloat);
            }
            this.f7681default = arrayList;
            return;
        }
        ArrayList<ValueAnimator> arrayList2 = new ArrayList<>();
        int[] iArr2 = {70, 140, AdEventType.VIDEO_READY};
        for (int i3 = 0; i3 < 3; i3++) {
            float f = this.f7699throw;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(f, f - (this.f7690import * 2.0f), f);
            ofFloat2.setDuration(600L);
            ofFloat2.setRepeatCount(-1);
            ofFloat2.setStartDelay(iArr2[i3]);
            ofFloat2.addUpdateListener(new xc(this, i3));
            arrayList2.add(ofFloat2);
        }
        this.f7681default = arrayList2;
    }

    public float getBorderWidth() {
        return this.f7688goto;
    }

    public float getButtonRadius() {
        return this.f7683else;
    }

    public int getMaxProgress() {
        return this.f7679class;
    }

    public int getMinProgress() {
        return this.f7680const;
    }

    public float getProgress() {
        return this.f7676break;
    }

    public int getState() {
        return this.f7700throws;
    }

    public int getTextColor() {
        return this.f7701try;
    }

    public int getTextCoverColor() {
        return this.f7677case;
    }

    /* renamed from: if  reason: not valid java name */
    public final int m3406if(int i) {
        return (int) (i * getContext().getResources().getDisplayMetrics().density);
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode()) {
            return;
        }
        RectF rectF = new RectF();
        this.f7693public = rectF;
        rectF.left = this.f7691native ? this.f7688goto : 0.0f;
        this.f7693public.top = this.f7691native ? this.f7688goto : 0.0f;
        this.f7693public.right = getMeasuredWidth() - (this.f7691native ? this.f7688goto : 0.0f);
        this.f7693public.bottom = getMeasuredHeight() - (this.f7691native ? this.f7688goto : 0.0f);
        if (this.f7691native) {
            this.f7682do.setStyle(Paint.Style.STROKE);
            this.f7682do.setColor(this.f7687for);
            this.f7682do.setStrokeWidth(this.f7688goto);
            RectF rectF2 = this.f7693public;
            float f = this.f7683else;
            canvas.drawRoundRect(rectF2, f, f, this.f7682do);
        }
        this.f7682do.setStyle(Paint.Style.FILL);
        int i = this.f7700throws;
        if (i == 0) {
            this.f7682do.setColor(this.f7687for);
            RectF rectF3 = this.f7693public;
            float f2 = this.f7683else;
            canvas.drawRoundRect(rectF3, f2, f2, this.f7682do);
        } else if (i == 1 || i == 2) {
            this.f7685final = this.f7676break / (this.f7679class + 0.0f);
            this.f7682do.setColor(this.f7692new);
            canvas.save();
            RectF rectF4 = this.f7693public;
            float f3 = this.f7683else;
            canvas.drawRoundRect(rectF4, f3, f3, this.f7682do);
            PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP);
            this.f7682do.setColor(this.f7687for);
            this.f7682do.setXfermode(porterDuffXfermode);
            RectF rectF5 = this.f7693public;
            canvas.drawRect(rectF5.left, rectF5.top, rectF5.right * this.f7685final, rectF5.bottom, this.f7682do);
            canvas.restore();
            this.f7682do.setXfermode(null);
        } else if (i == 3) {
            this.f7682do.setColor(this.f7687for);
            RectF rectF6 = this.f7693public;
            float f4 = this.f7683else;
            canvas.drawRoundRect(rectF6, f4, f4, this.f7682do);
        }
        float height = (canvas.getHeight() / 2) - ((this.f7689if.ascent() / 2.0f) + (this.f7689if.descent() / 2.0f));
        if (this.f7697switch == null) {
            this.f7697switch = "";
        }
        float measureText = this.f7689if.measureText(this.f7697switch.toString());
        this.f7699throw = height;
        this.f7696super = (getMeasuredWidth() + measureText) / 2.0f;
        int i2 = this.f7700throws;
        if (i2 == 0) {
            this.f7689if.setShader(null);
            this.f7689if.setColor(this.f7677case);
            canvas.drawText(this.f7697switch.toString(), (getMeasuredWidth() - measureText) / 2.0f, height, this.f7689if);
            return;
        }
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return;
            }
            this.f7689if.setColor(this.f7677case);
            canvas.drawText(this.f7697switch.toString(), (getMeasuredWidth() - measureText) / 2.0f, height, this.f7689if);
            for (int i3 = 0; i3 < 3; i3++) {
                canvas.save();
                float f5 = i3;
                canvas.translate((this.f7702while * f5) + (this.f7690import * 2.0f * f5) + this.f7696super + 10.0f, this.f7699throw);
                canvas.drawCircle(0.0f, this.f7686finally[i3], this.f7690import * this.f7684extends[i3], this.f7689if);
                canvas.restore();
            }
            return;
        }
        float measuredWidth = getMeasuredWidth() * this.f7685final;
        float f6 = measureText / 2.0f;
        float measuredWidth2 = (getMeasuredWidth() / 2) - f6;
        float measuredWidth3 = (getMeasuredWidth() / 2) + f6;
        float measuredWidth4 = ((f6 - (getMeasuredWidth() / 2)) + measuredWidth) / measureText;
        if (measuredWidth <= measuredWidth2) {
            this.f7689if.setShader(null);
            this.f7689if.setColor(this.f7701try);
        } else if (measuredWidth2 < measuredWidth && measuredWidth <= measuredWidth3) {
            this.f7694return = new LinearGradient((getMeasuredWidth() - measureText) / 2.0f, 0.0f, (getMeasuredWidth() + measureText) / 2.0f, 0.0f, new int[]{this.f7677case, this.f7701try}, new float[]{measuredWidth4, measuredWidth4 + 0.001f}, Shader.TileMode.CLAMP);
            this.f7689if.setColor(this.f7701try);
            this.f7689if.setShader(this.f7694return);
        } else {
            this.f7689if.setShader(null);
            this.f7689if.setColor(this.f7677case);
        }
        canvas.drawText(this.f7697switch.toString(), (getMeasuredWidth() - measureText) / 2.0f, height, this.f7689if);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Cdo cdo = (Cdo) parcelable;
        super.onRestoreInstanceState(cdo.getSuperState());
        this.f7700throws = cdo.f7705if;
        this.f7676break = cdo.f7703do;
        this.f7697switch = cdo.f7704for;
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        return new Cdo(super.onSaveInstanceState(), (int) this.f7676break, this.f7700throws, this.f7697switch.toString());
    }

    public void setBackgroundSecondColor(int i) {
        this.f7692new = i;
    }

    public void setBorderWidth(int i) {
        this.f7688goto = m3406if(i);
    }

    public void setBtnTextColor(int i) {
        this.f7701try = i;
    }

    public void setButtonRadius(int i) {
        this.f7683else = m3406if(i);
    }

    public void setCurrentText(CharSequence charSequence) {
        this.f7697switch = charSequence;
        invalidate();
    }

    public void setCurrentTextSize(int i) {
        this.f7689if.setTextSize(m3406if(i));
    }

    public void setMaxProgress(int i) {
        this.f7679class = i;
    }

    public void setMinProgress(int i) {
        this.f7680const = i;
    }

    public void setProgress(float f) {
        this.f7676break = f;
    }

    public void setShowBorder(boolean z) {
        this.f7691native = z;
    }

    public void setState(int i) {
        if (this.f7700throws != i) {
            this.f7700throws = i;
            invalidate();
            if (i == 3) {
                for (int i2 = 0; i2 < this.f7681default.size(); i2++) {
                    this.f7681default.get(i2).start();
                }
                return;
            }
            ArrayList<ValueAnimator> arrayList = this.f7681default;
            if (arrayList != null) {
                Iterator<ValueAnimator> it = arrayList.iterator();
                while (it.hasNext()) {
                    ValueAnimator next = it.next();
                    if (next != null && next.isStarted()) {
                        next.end();
                    }
                }
            }
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        this.f7701try = i;
    }

    public void setTextCoverColor(int i) {
        this.f7677case = i;
    }

    public void setmBackgroundColor(int i) {
        this.f7687for = i;
    }

    public void setButtonRadius(float f) {
        this.f7683else = f;
    }

    /* renamed from: com.biquge.ebook.app.ui.view.DownloadProgressButton$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends View.BaseSavedState {
        public static final Parcelable.Creator<Cdo> CREATOR = new C0095do();

        /* renamed from: do  reason: not valid java name */
        public int f7703do;

        /* renamed from: for  reason: not valid java name */
        public String f7704for;

        /* renamed from: if  reason: not valid java name */
        public int f7705if;

        /* renamed from: com.biquge.ebook.app.ui.view.DownloadProgressButton$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0095do implements Parcelable.Creator<Cdo> {
            @Override // android.os.Parcelable.Creator
            public Cdo createFromParcel(Parcel parcel) {
                return new Cdo(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public Cdo[] newArray(int i) {
                return new Cdo[i];
            }
        }

        public Cdo(Parcelable parcelable, int i, int i2, String str) {
            super(parcelable);
            this.f7703do = i;
            this.f7705if = i2;
            this.f7704for = str;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f7703do);
            parcel.writeInt(this.f7705if);
            parcel.writeString(this.f7704for);
        }

        public Cdo(Parcel parcel, vc vcVar) {
            super(parcel);
            this.f7703do = parcel.readInt();
            this.f7705if = parcel.readInt();
            this.f7704for = parcel.readString();
        }
    }
}
