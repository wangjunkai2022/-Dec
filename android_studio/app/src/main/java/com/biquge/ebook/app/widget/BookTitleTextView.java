package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.apk.ca;
import com.apk.eg;

/* loaded from: classes8.dex */
public class BookTitleTextView extends View {

    /* renamed from: do  reason: not valid java name */
    public String f7996do;

    /* renamed from: if  reason: not valid java name */
    public int f7997if;

    public BookTitleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7997if = eg.m587catch(34.0f) / 2;
    }

    public String getText() {
        return this.f7996do;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (TextUtils.isEmpty(this.f7996do)) {
            return;
        }
        canvas.drawText(this.f7996do, getPaddingLeft(), this.f7997if, ca.m315do().f546if);
    }

    public void setText(String str) {
        this.f7996do = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f7996do = this.f7996do;
        invalidate();
    }
}
