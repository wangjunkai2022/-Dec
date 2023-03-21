package top.defaults.colorpicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.apk.rs0;
import com.apk.ss0;
import com.apk.ts0;
import com.apk.vs0;
import com.apk.zs0;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class ColorPickerView extends LinearLayout implements ts0 {

    /* renamed from: case  reason: not valid java name */
    public int f10573case;

    /* renamed from: do  reason: not valid java name */
    public zs0 f10574do;

    /* renamed from: else  reason: not valid java name */
    public int f10575else;

    /* renamed from: for  reason: not valid java name */
    public rs0 f10576for;

    /* renamed from: goto  reason: not valid java name */
    public int f10577goto;

    /* renamed from: if  reason: not valid java name */
    public ss0 f10578if;

    /* renamed from: new  reason: not valid java name */
    public ts0 f10579new;

    /* renamed from: this  reason: not valid java name */
    public List<vs0> f10580this;

    /* renamed from: try  reason: not valid java name */
    public boolean f10581try;

    public ColorPickerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10573case = ViewCompat.MEASURED_STATE_MASK;
        this.f10580this = new ArrayList();
        setOrientation(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ColorPickerView);
        boolean z = obtainStyledAttributes.getBoolean(R$styleable.ColorPickerView_enableAlpha, false);
        boolean z2 = obtainStyledAttributes.getBoolean(R$styleable.ColorPickerView_enableBrightness, true);
        this.f10581try = obtainStyledAttributes.getBoolean(R$styleable.ColorPickerView_onlyUpdateOnTouchEventUp, false);
        obtainStyledAttributes.recycle();
        this.f10574do = new zs0(context);
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (8.0f * f);
        this.f10575else = i * 2;
        this.f10577goto = (int) (f * 24.0f);
        addView(this.f10574do, new LinearLayout.LayoutParams(-2, -2));
        setEnabledBrightness(z2);
        setEnabledAlpha(z);
        setPadding(i, i, i, i);
    }

    @Override // com.apk.ts0
    /* renamed from: do */
    public void mo2618do(vs0 vs0Var) {
        this.f10579new.mo2618do(vs0Var);
        this.f10580this.remove(vs0Var);
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3734for() {
        if (this.f10579new != null) {
            for (vs0 vs0Var : this.f10580this) {
                this.f10579new.mo2618do(vs0Var);
            }
        }
        this.f10574do.setOnlyUpdateOnTouchEventUp(false);
        ss0 ss0Var = this.f10578if;
        if (ss0Var != null) {
            ss0Var.setOnlyUpdateOnTouchEventUp(false);
        }
        rs0 rs0Var = this.f10576for;
        if (rs0Var != null) {
            rs0Var.setOnlyUpdateOnTouchEventUp(false);
        }
        if (this.f10578if == null && this.f10576for == null) {
            zs0 zs0Var = this.f10574do;
            this.f10579new = zs0Var;
            zs0Var.setOnlyUpdateOnTouchEventUp(this.f10581try);
        } else {
            rs0 rs0Var2 = this.f10576for;
            if (rs0Var2 != null) {
                this.f10579new = rs0Var2;
                rs0Var2.setOnlyUpdateOnTouchEventUp(this.f10581try);
            } else {
                ss0 ss0Var2 = this.f10578if;
                this.f10579new = ss0Var2;
                ss0Var2.setOnlyUpdateOnTouchEventUp(this.f10581try);
            }
        }
        List<vs0> list = this.f10580this;
        if (list != null) {
            for (vs0 vs0Var2 : list) {
                this.f10579new.mo2619if(vs0Var2);
                vs0Var2.mo2836do(this.f10579new.getColor(), false, true);
            }
        }
    }

    @Override // com.apk.ts0
    public int getColor() {
        return this.f10579new.getColor();
    }

    @Override // com.apk.ts0
    /* renamed from: if */
    public void mo2619if(vs0 vs0Var) {
        this.f10579new.mo2619if(vs0Var);
        this.f10580this.add(vs0Var);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int paddingRight = getPaddingRight() + getPaddingLeft() + (View.MeasureSpec.getSize(i2) - (getPaddingBottom() + getPaddingTop()));
        if (this.f10578if != null) {
            paddingRight -= this.f10575else + this.f10577goto;
        }
        if (this.f10576for != null) {
            paddingRight -= this.f10575else + this.f10577goto;
        }
        int min = Math.min(size, paddingRight);
        int paddingBottom = getPaddingBottom() + getPaddingTop() + (min - (getPaddingRight() + getPaddingLeft()));
        if (this.f10578if != null) {
            paddingBottom += this.f10575else + this.f10577goto;
        }
        if (this.f10576for != null) {
            paddingBottom += this.f10575else + this.f10577goto;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, View.MeasureSpec.getMode(i)), View.MeasureSpec.makeMeasureSpec(paddingBottom, View.MeasureSpec.getMode(i2)));
    }

    public void setEnabledAlpha(boolean z) {
        if (z) {
            if (this.f10576for == null) {
                this.f10576for = new rs0(getContext());
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.f10577goto);
                layoutParams.topMargin = this.f10575else;
                addView(this.f10576for, layoutParams);
            }
            ts0 ts0Var = this.f10578if;
            if (ts0Var == null) {
                ts0Var = this.f10574do;
            }
            rs0 rs0Var = this.f10576for;
            if (ts0Var != null) {
                ts0Var.mo2619if(rs0Var.f5392class);
                rs0Var.m2943case(ts0Var.getColor(), true, true);
            }
            rs0Var.f5393const = ts0Var;
            m3734for();
            return;
        }
        rs0 rs0Var2 = this.f10576for;
        if (rs0Var2 != null) {
            ts0 ts0Var2 = rs0Var2.f5393const;
            if (ts0Var2 != null) {
                ts0Var2.mo2618do(rs0Var2.f5392class);
                rs0Var2.f5393const = null;
            }
            removeView(this.f10576for);
            this.f10576for = null;
        }
        m3734for();
    }

    public void setEnabledBrightness(boolean z) {
        if (z) {
            if (this.f10578if == null) {
                this.f10578if = new ss0(getContext());
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.f10577goto);
                layoutParams.topMargin = this.f10575else;
                addView(this.f10578if, 1, layoutParams);
            }
            ss0 ss0Var = this.f10578if;
            zs0 zs0Var = this.f10574do;
            if (zs0Var != null) {
                zs0Var.f6260this.mo2619if(ss0Var.f5392class);
                ss0Var.m2943case(zs0Var.getColor(), true, true);
            }
            ss0Var.f5393const = zs0Var;
            m3734for();
        } else {
            ss0 ss0Var2 = this.f10578if;
            if (ss0Var2 != null) {
                ts0 ts0Var = ss0Var2.f5393const;
                if (ts0Var != null) {
                    ts0Var.mo2618do(ss0Var2.f5392class);
                    ss0Var2.f5393const = null;
                }
                removeView(this.f10578if);
                this.f10578if = null;
            }
            m3734for();
        }
        if (this.f10576for != null) {
            setEnabledAlpha(true);
        }
    }

    public void setInitialColor(int i) {
        this.f10573case = i;
        this.f10574do.m3246for(i, true);
    }

    public void setOnlyUpdateOnTouchEventUp(boolean z) {
        this.f10581try = z;
        m3734for();
    }
}
