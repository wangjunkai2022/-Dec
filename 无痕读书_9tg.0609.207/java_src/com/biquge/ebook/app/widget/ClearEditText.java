package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.apk.eg;
import com.apk.rr0;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ClearEditText extends rr0 implements View.OnFocusChangeListener, TextWatcher {

    /* renamed from: for  reason: not valid java name */
    public Drawable f8020for;

    /* renamed from: new  reason: not valid java name */
    public boolean f8021new;

    public ClearEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842862);
        Drawable drawable = getCompoundDrawables()[2];
        this.f8020for = drawable;
        if (drawable == null) {
            this.f8020for = getResources().getDrawable(R.drawable.ss_cancel);
        }
        Drawable drawable2 = this.f8020for;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f8020for.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
        setPadding(getPaddingLeft(), getPaddingTop(), eg.m587catch(5.0f) + getPaddingRight(), getPaddingBottom());
    }

    private void setClearIconVisible(boolean z) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.f8020for : null, getCompoundDrawables()[3]);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f8021new = z;
        if (z) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f8021new) {
            setClearIconVisible(charSequence.length() > 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f8020for != null) {
            boolean z = true;
            if (motionEvent.getAction() == 1) {
                int x = (int) motionEvent.getX();
                boolean z2 = x > getWidth() - getTotalPaddingRight() && x < getWidth() - getPaddingRight();
                int m587catch = eg.m587catch(10.0f) + this.f8020for.getBounds().height();
                int y = (int) motionEvent.getY();
                int height = (getHeight() - m587catch) / 2;
                if (((y <= height || y >= height + m587catch) ? false : false) && z2) {
                    setText("");
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }
}
