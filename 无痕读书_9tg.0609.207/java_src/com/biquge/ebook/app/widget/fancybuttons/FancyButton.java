package com.biquge.ebook.app.widget.fancybuttons;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.apk.lq0;
import com.apk.rh;
import com.apk.xr0;
import com.biquge.ebook.app.R$styleable;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes8.dex */
public class FancyButton extends xr0 {

    /* renamed from: abstract  reason: not valid java name */
    public ImageView f8327abstract;

    /* renamed from: break  reason: not valid java name */
    public int f8328break;

    /* renamed from: case  reason: not valid java name */
    public int f8329case;

    /* renamed from: catch  reason: not valid java name */
    public int f8330catch;

    /* renamed from: class  reason: not valid java name */
    public String f8331class;

    /* renamed from: const  reason: not valid java name */
    public Drawable f8332const;

    /* renamed from: continue  reason: not valid java name */
    public TextView f8333continue;

    /* renamed from: default  reason: not valid java name */
    public int f8334default;

    /* renamed from: else  reason: not valid java name */
    public int f8335else;

    /* renamed from: extends  reason: not valid java name */
    public int f8336extends;

    /* renamed from: final  reason: not valid java name */
    public int f8337final;

    /* renamed from: finally  reason: not valid java name */
    public int f8338finally;

    /* renamed from: for  reason: not valid java name */
    public int f8339for;

    /* renamed from: goto  reason: not valid java name */
    public int f8340goto;

    /* renamed from: if  reason: not valid java name */
    public Context f8341if;

    /* renamed from: import  reason: not valid java name */
    public int f8342import;

    /* renamed from: interface  reason: not valid java name */
    public boolean f8343interface;

    /* renamed from: native  reason: not valid java name */
    public int f8344native;

    /* renamed from: new  reason: not valid java name */
    public int f8345new;

    /* renamed from: package  reason: not valid java name */
    public boolean f8346package;

    /* renamed from: private  reason: not valid java name */
    public boolean f8347private;

    /* renamed from: protected  reason: not valid java name */
    public boolean f8348protected;

    /* renamed from: public  reason: not valid java name */
    public int f8349public;

    /* renamed from: return  reason: not valid java name */
    public int f8350return;

    /* renamed from: static  reason: not valid java name */
    public int f8351static;

    /* renamed from: strictfp  reason: not valid java name */
    public TextView f8352strictfp;

    /* renamed from: super  reason: not valid java name */
    public String f8353super;

    /* renamed from: switch  reason: not valid java name */
    public int f8354switch;

    /* renamed from: this  reason: not valid java name */
    public int f8355this;

    /* renamed from: throw  reason: not valid java name */
    public int f8356throw;

    /* renamed from: throws  reason: not valid java name */
    public int f8357throws;

    /* renamed from: try  reason: not valid java name */
    public int f8358try;

    /* renamed from: volatile  reason: not valid java name */
    public boolean f8359volatile;

    /* renamed from: while  reason: not valid java name */
    public int f8360while;

    @TargetApi(21)
    /* renamed from: com.biquge.ebook.app.widget.fancybuttons.FancyButton$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends ViewOutlineProvider {

        /* renamed from: do  reason: not valid java name */
        public int f8361do;

        /* renamed from: if  reason: not valid java name */
        public int f8363if;

        public Cdo(int i, int i2) {
            this.f8361do = i;
            this.f8363if = i2;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int i = FancyButton.this.f8354switch;
            if (i == 0) {
                outline.setRect(0, 10, this.f8361do, this.f8363if);
            } else {
                outline.setRoundRect(0, 10, this.f8361do, this.f8363if, i);
            }
        }
    }

    public FancyButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8339for = ViewCompat.MEASURED_STATE_MASK;
        this.f8345new = 0;
        this.f8358try = Color.parseColor("#f6f7f9");
        this.f8329case = Color.parseColor("#bec2c9");
        this.f8335else = Color.parseColor("#dddfe2");
        this.f8340goto = -1;
        this.f8355this = -1;
        this.f8328break = rh.m2267if(getContext(), 15.0f);
        this.f8330catch = 17;
        this.f8331class = null;
        this.f8332const = null;
        this.f8337final = rh.m2267if(getContext(), 15.0f);
        this.f8353super = null;
        this.f8356throw = 1;
        this.f8360while = 10;
        this.f8342import = 10;
        this.f8344native = 0;
        this.f8349public = 0;
        this.f8350return = 0;
        this.f8351static = 0;
        this.f8354switch = 0;
        this.f8357throws = 0;
        this.f8334default = 0;
        this.f8336extends = 0;
        this.f8338finally = 0;
        this.f8346package = true;
        this.f8347private = false;
        this.f8359volatile = false;
        this.f8343interface = false;
        this.f8348protected = true;
        this.f8341if = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FancyButtonsAttrs, 0, 0);
        this.f8339for = obtainStyledAttributes.getColor(6, this.f8339for);
        this.f8345new = obtainStyledAttributes.getColor(10, this.f8345new);
        this.f8358try = obtainStyledAttributes.getColor(8, this.f8358try);
        this.f8346package = obtainStyledAttributes.getBoolean(0, true);
        this.f8329case = obtainStyledAttributes.getColor(9, this.f8329case);
        this.f8335else = obtainStyledAttributes.getColor(7, this.f8335else);
        int color = obtainStyledAttributes.getColor(29, this.f8340goto);
        this.f8340goto = color;
        this.f8355this = obtainStyledAttributes.getColor(14, color);
        int dimension = (int) obtainStyledAttributes.getDimension(33, this.f8328break);
        this.f8328break = dimension;
        this.f8328break = (int) obtainStyledAttributes.getDimension(1, dimension);
        this.f8330catch = obtainStyledAttributes.getInt(31, this.f8330catch);
        this.f8350return = obtainStyledAttributes.getColor(4, this.f8350return);
        this.f8351static = (int) obtainStyledAttributes.getDimension(5, this.f8351static);
        int dimension2 = (int) obtainStyledAttributes.getDimension(22, this.f8354switch);
        this.f8354switch = dimension2;
        this.f8357throws = (int) obtainStyledAttributes.getDimension(25, dimension2);
        this.f8334default = (int) obtainStyledAttributes.getDimension(26, this.f8354switch);
        this.f8336extends = (int) obtainStyledAttributes.getDimension(23, this.f8354switch);
        this.f8338finally = (int) obtainStyledAttributes.getDimension(24, this.f8354switch);
        this.f8337final = (int) obtainStyledAttributes.getDimension(12, this.f8337final);
        this.f8360while = (int) obtainStyledAttributes.getDimension(17, this.f8360while);
        this.f8342import = (int) obtainStyledAttributes.getDimension(18, this.f8342import);
        this.f8344native = (int) obtainStyledAttributes.getDimension(19, this.f8344native);
        this.f8349public = (int) obtainStyledAttributes.getDimension(16, this.f8349public);
        this.f8347private = obtainStyledAttributes.getBoolean(28, false);
        this.f8347private = obtainStyledAttributes.getBoolean(3, false);
        this.f8359volatile = obtainStyledAttributes.getBoolean(13, this.f8359volatile);
        this.f8343interface = obtainStyledAttributes.getBoolean(34, this.f8343interface);
        String string = obtainStyledAttributes.getString(27);
        string = string == null ? obtainStyledAttributes.getString(2) : string;
        this.f8356throw = obtainStyledAttributes.getInt(20, this.f8356throw);
        String string2 = obtainStyledAttributes.getString(11);
        obtainStyledAttributes.getString(15);
        obtainStyledAttributes.getString(30);
        try {
            this.f8332const = obtainStyledAttributes.getDrawable(21);
        } catch (Exception unused) {
            this.f8332const = null;
        }
        if (string2 != null) {
            this.f8353super = string2;
        }
        if (string != null) {
            this.f8331class = this.f8347private ? string.toUpperCase() : string;
        }
        obtainStyledAttributes.recycle();
        m3541new();
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3540for(GradientDrawable gradientDrawable) {
        int i = this.f8354switch;
        if (i > 0) {
            gradientDrawable.setCornerRadius(i);
            return;
        }
        float f = this.f8357throws;
        float f2 = this.f8334default;
        float f3 = this.f8338finally;
        float f4 = this.f8336extends;
        gradientDrawable.setCornerRadii(new float[]{f, f, f2, f2, f3, f3, f4, f4});
    }

    public TextView getIconFontObject() {
        return this.f8333continue;
    }

    public ImageView getIconImageObject() {
        return this.f8327abstract;
    }

    public CharSequence getText() {
        TextView textView = this.f8352strictfp;
        return textView != null ? textView.getText() : "";
    }

    public TextView getTextViewObject() {
        return this.f8352strictfp;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3541new() {
        ImageView imageView;
        int i = this.f8356throw;
        if (i != 3 && i != 4) {
            setOrientation(0);
        } else {
            setOrientation(1);
        }
        if (getLayoutParams() == null) {
            setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        }
        setGravity(17);
        setClickable(true);
        setFocusable(true);
        if (this.f8332const == null && this.f8353super == null && getPaddingLeft() == 0 && getPaddingRight() == 0 && getPaddingTop() == 0 && getPaddingBottom() == 0) {
            setPadding(20, 20, 20, 20);
        }
        if (this.f8331class == null) {
            this.f8331class = "Fancy Button";
        }
        TextView textView = new TextView(this.f8341if);
        textView.setText(this.f8331class);
        textView.setGravity(this.f8330catch);
        textView.setTextColor(this.f8346package ? this.f8340goto : this.f8329case);
        textView.setTextSize(rh.m2266do(getContext(), this.f8328break));
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f8352strictfp = textView;
        TextView textView2 = null;
        if (this.f8332const != null) {
            imageView = new ImageView(this.f8341if);
            imageView.setImageDrawable(this.f8332const);
            imageView.setPadding(this.f8360while, this.f8344native, this.f8342import, this.f8349public);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            if (this.f8352strictfp != null) {
                int i2 = this.f8356throw;
                if (i2 != 3 && i2 != 4) {
                    layoutParams.gravity = GravityCompat.START;
                } else {
                    layoutParams.gravity = 17;
                }
                layoutParams.rightMargin = 10;
                layoutParams.leftMargin = 10;
            } else {
                layoutParams.gravity = 16;
            }
            imageView.setLayoutParams(layoutParams);
        } else {
            imageView = null;
        }
        this.f8327abstract = imageView;
        if (this.f8353super != null) {
            textView2 = new TextView(this.f8341if);
            textView2.setTextColor(this.f8346package ? this.f8355this : this.f8329case);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.rightMargin = this.f8342import;
            layoutParams2.leftMargin = this.f8360while;
            layoutParams2.topMargin = this.f8344native;
            layoutParams2.bottomMargin = this.f8349public;
            if (this.f8352strictfp != null) {
                int i3 = this.f8356throw;
                if (i3 != 3 && i3 != 4) {
                    textView2.setGravity(16);
                    layoutParams2.gravity = 16;
                } else {
                    layoutParams2.gravity = 17;
                    textView2.setGravity(17);
                }
            } else {
                layoutParams2.gravity = 17;
                textView2.setGravity(16);
            }
            textView2.setLayoutParams(layoutParams2);
            if (!isInEditMode()) {
                textView2.setTextSize(rh.m2266do(getContext(), this.f8337final));
                textView2.setText(this.f8353super);
            } else {
                textView2.setTextSize(rh.m2266do(getContext(), this.f8337final));
                textView2.setText("O");
            }
        }
        this.f8333continue = textView2;
        removeAllViews();
        m3542try();
        ArrayList arrayList = new ArrayList();
        int i4 = this.f8356throw;
        if (i4 != 1 && i4 != 3) {
            TextView textView3 = this.f8352strictfp;
            if (textView3 != null) {
                arrayList.add(textView3);
            }
            ImageView imageView2 = this.f8327abstract;
            if (imageView2 != null) {
                arrayList.add(imageView2);
            }
            TextView textView4 = this.f8333continue;
            if (textView4 != null) {
                arrayList.add(textView4);
            }
        } else {
            ImageView imageView3 = this.f8327abstract;
            if (imageView3 != null) {
                arrayList.add(imageView3);
            }
            TextView textView5 = this.f8333continue;
            if (textView5 != null) {
                arrayList.add(textView5);
            }
            TextView textView6 = this.f8352strictfp;
            if (textView6 != null) {
                arrayList.add(textView6);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            addView((View) it.next());
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setOutlineProvider(new Cdo(i, i2));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f8339for = lq0.m1660do(getContext(), i);
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setBorderColor(int i) {
        this.f8350return = lq0.m1660do(getContext(), i);
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setBorderWidth(int i) {
        this.f8351static = i;
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setCustomIconFont(String str) {
        if (this.f8333continue == null) {
            m3541new();
        }
    }

    public void setCustomTextFont(String str) {
        if (this.f8352strictfp == null) {
            m3541new();
        }
    }

    public void setDisableBackgroundColor(int i) {
        this.f8358try = lq0.m1660do(getContext(), i);
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setDisableBorderColor(int i) {
        this.f8335else = lq0.m1660do(getContext(), i);
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setDisableTextColor(int i) {
        int m1660do = lq0.m1660do(getContext(), i);
        this.f8329case = m1660do;
        TextView textView = this.f8352strictfp;
        if (textView == null) {
            m3541new();
        } else if (this.f8346package) {
        } else {
            textView.setTextColor(m1660do);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f8346package = z;
        m3541new();
    }

    public void setFocusBackgroundColor(int i) {
        this.f8345new = lq0.m1660do(getContext(), i);
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setFontIconSize(int i) {
        float f = i;
        this.f8337final = rh.m2267if(getContext(), f);
        TextView textView = this.f8333continue;
        if (textView != null) {
            textView.setTextSize(f);
        }
    }

    public void setGhost(boolean z) {
        this.f8359volatile = z;
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setIconColor(int i) {
        if (this.f8333continue != null) {
            this.f8333continue.setTextColor(lq0.m1660do(getContext(), i));
        }
    }

    public void setIconPosition(int i) {
        if (i > 0 && i < 5) {
            this.f8356throw = i;
        } else {
            this.f8356throw = 1;
        }
        m3541new();
    }

    public void setIconResource(int i) {
        Drawable drawable = this.f8341if.getResources().getDrawable(i);
        this.f8332const = drawable;
        ImageView imageView = this.f8327abstract;
        if (imageView != null && this.f8333continue == null) {
            imageView.setImageDrawable(drawable);
            return;
        }
        this.f8333continue = null;
        m3541new();
    }

    public void setRadius(int i) {
        this.f8354switch = i;
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setText(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f8347private) {
            str = str.toUpperCase();
        }
        this.f8331class = str;
        TextView textView = this.f8352strictfp;
        if (textView == null) {
            m3541new();
        } else {
            textView.setText(str);
        }
    }

    public void setTextAllCaps(boolean z) {
        this.f8347private = z;
        setText(this.f8331class);
    }

    public void setTextColor(int i) {
        int m1660do = lq0.m1660do(getContext(), i);
        this.f8340goto = m1660do;
        TextView textView = this.f8352strictfp;
        if (textView == null) {
            m3541new();
        } else {
            textView.setTextColor(m1660do);
        }
    }

    public void setTextGravity(int i) {
        this.f8330catch = i;
        if (this.f8352strictfp != null) {
            setGravity(i);
        }
    }

    public void setTextSize(int i) {
        float f = i;
        this.f8328break = rh.m2267if(getContext(), f);
        TextView textView = this.f8352strictfp;
        if (textView != null) {
            textView.setTextSize(f);
        }
    }

    public void setUsingSystemFont(boolean z) {
        this.f8343interface = z;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: try  reason: not valid java name */
    public final void m3542try() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        m3540for(gradientDrawable);
        if (this.f8359volatile) {
            gradientDrawable.setColor(getResources().getColor(17170445));
        } else {
            gradientDrawable.setColor(this.f8339for);
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        m3540for(gradientDrawable2);
        gradientDrawable2.setColor(this.f8345new);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        m3540for(gradientDrawable3);
        gradientDrawable3.setColor(this.f8358try);
        gradientDrawable3.setStroke(this.f8351static, this.f8335else);
        int i = this.f8350return;
        if (i != 0) {
            gradientDrawable.setStroke(this.f8351static, i);
        }
        if (!this.f8346package) {
            gradientDrawable.setStroke(this.f8351static, this.f8335else);
            if (this.f8359volatile) {
                gradientDrawable3.setColor(getResources().getColor(17170445));
            }
        }
        if (this.f8348protected) {
            Drawable drawable = gradientDrawable3;
            if (this.f8346package) {
                drawable = new RippleDrawable(ColorStateList.valueOf(this.f8345new), gradientDrawable, gradientDrawable2);
            }
            setBackground(drawable);
            return;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable4 = new GradientDrawable();
        m3540for(gradientDrawable4);
        if (this.f8359volatile) {
            gradientDrawable4.setColor(getResources().getColor(17170445));
        } else {
            gradientDrawable4.setColor(this.f8345new);
        }
        int i2 = this.f8350return;
        if (i2 != 0) {
            if (this.f8359volatile) {
                gradientDrawable4.setStroke(this.f8351static, this.f8345new);
            } else {
                gradientDrawable4.setStroke(this.f8351static, i2);
            }
        }
        if (!this.f8346package) {
            if (this.f8359volatile) {
                gradientDrawable4.setStroke(this.f8351static, this.f8335else);
            } else {
                gradientDrawable4.setStroke(this.f8351static, this.f8335else);
            }
        }
        if (this.f8345new != 0) {
            stateListDrawable.addState(new int[]{16842919}, gradientDrawable4);
            stateListDrawable.addState(new int[]{16842908}, gradientDrawable4);
            stateListDrawable.addState(new int[]{-16842910}, gradientDrawable3);
        }
        stateListDrawable.addState(new int[0], gradientDrawable);
        setBackground(stateListDrawable);
    }

    public void setRadius(int[] iArr) {
        this.f8357throws = iArr[0];
        this.f8334default = iArr[1];
        this.f8336extends = iArr[2];
        this.f8338finally = iArr[3];
        if (this.f8327abstract == null && this.f8333continue == null && this.f8352strictfp == null) {
            return;
        }
        m3542try();
    }

    public void setIconResource(Drawable drawable) {
        this.f8332const = drawable;
        ImageView imageView = this.f8327abstract;
        if (imageView != null && this.f8333continue == null) {
            imageView.setImageDrawable(drawable);
            return;
        }
        this.f8333continue = null;
        m3541new();
    }

    public void setIconResource(String str) {
        this.f8353super = str;
        TextView textView = this.f8333continue;
        if (textView == null) {
            this.f8327abstract = null;
            m3541new();
            return;
        }
        textView.setText(str);
    }
}
