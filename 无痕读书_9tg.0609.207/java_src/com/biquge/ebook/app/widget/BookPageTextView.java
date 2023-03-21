package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.apk.ca;
import com.apk.eg;
import com.apk.kg;
import com.apk.p0;
import com.apk.ze;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookPageTextView extends View {

    /* renamed from: break  reason: not valid java name */
    public int f7983break;

    /* renamed from: case  reason: not valid java name */
    public int f7984case;

    /* renamed from: catch  reason: not valid java name */
    public String f7985catch;

    /* renamed from: do  reason: not valid java name */
    public int f7986do;

    /* renamed from: else  reason: not valid java name */
    public int f7987else;

    /* renamed from: for  reason: not valid java name */
    public int f7988for;

    /* renamed from: goto  reason: not valid java name */
    public Rect f7989goto;

    /* renamed from: if  reason: not valid java name */
    public int f7990if;

    /* renamed from: new  reason: not valid java name */
    public int f7991new;

    /* renamed from: this  reason: not valid java name */
    public int f7992this;

    /* renamed from: try  reason: not valid java name */
    public int f7993try;

    public BookPageTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7992this = -1;
        this.f7983break = -1;
        this.f7988for = eg.m587catch(15.0f);
        this.f7989goto = new Rect();
        this.f7984case = eg.m587catch(20.0f);
        this.f7987else = eg.m587catch(9.0f);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3467do(Canvas canvas) {
        this.f7989goto.left = getPaddingLeft() + 0;
        this.f7989goto.right = (getPaddingLeft() + this.f7984case) - 2;
        Rect rect = this.f7989goto;
        int i = this.f7991new;
        int i2 = this.f7987else;
        rect.top = i - i2;
        rect.bottom = (i + 2) - i2;
        canvas.drawRect(rect, ca.m315do().f546if);
        this.f7989goto.left = getPaddingLeft() + 0;
        this.f7989goto.right = getPaddingLeft() + 2;
        Rect rect2 = this.f7989goto;
        int i3 = this.f7991new;
        rect2.top = i3 - this.f7987else;
        rect2.bottom = i3;
        canvas.drawRect(rect2, ca.m315do().f546if);
        this.f7989goto.left = (this.f7984case - 2) + getPaddingLeft();
        this.f7989goto.right = getPaddingLeft() + this.f7984case;
        Rect rect3 = this.f7989goto;
        int i4 = this.f7991new;
        rect3.top = i4 - this.f7987else;
        rect3.bottom = i4;
        canvas.drawRect(rect3, ca.m315do().f546if);
        this.f7989goto.left = getPaddingLeft() + 0;
        this.f7989goto.right = (this.f7984case - 2) + getPaddingLeft();
        Rect rect4 = this.f7989goto;
        int i5 = this.f7991new;
        rect4.top = i5;
        rect4.bottom = i5 + 2;
        canvas.drawRect(rect4, ca.m315do().f546if);
        this.f7989goto.left = getPaddingLeft() + this.f7984case;
        this.f7989goto.right = this.f7984case + 3 + getPaddingLeft();
        Rect rect5 = this.f7989goto;
        int i6 = this.f7991new;
        rect5.top = (i6 + 3) - this.f7987else;
        rect5.bottom = i6 - 3;
        canvas.drawRect(rect5, ca.m315do().f546if);
        this.f7989goto.left = getPaddingLeft() + 3;
        this.f7989goto.right = (((this.f7984case - 4) * this.f7993try) / 100) + getPaddingLeft();
        Rect rect6 = this.f7989goto;
        int i7 = this.f7991new;
        rect6.top = (i7 + 3) - (this.f7987else - 1);
        rect6.bottom = i7 - 2;
        canvas.drawRect(rect6, ca.m315do().f546if);
        canvas.drawText(kg.m1499new(), getPaddingLeft() + 10 + this.f7984case, this.f7991new, ca.m315do().f546if);
    }

    /* renamed from: if  reason: not valid java name */
    public void m3468if(int i, int i2) {
        this.f7992this = i;
        this.f7983break = i2;
        String r = ze.r(R.string.book_read_page_txt, i + "", i2 + "");
        this.f7985catch = r;
        this.f7985catch = r;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f7992this == -1 || this.f7983break == -1) {
            return;
        }
        try {
            this.f7991new = (int) ((this.f7990if - ca.m315do().f546if.getTextSize()) / 2.0f);
            canvas.drawText(this.f7985catch, ((this.f7986do - ((int) ca.m315do().f546if.measureText(this.f7985catch))) - (this.f7988for / 5)) + getPaddingLeft(), this.f7991new, ca.m315do().f546if);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (eg.m598goto("battery_broadcast_value_action")) {
                this.f7993try = ((Integer) p0.m2001do("battery_broadcast_value_action")).intValue();
            }
            m3467do(canvas);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f7986do = View.MeasureSpec.getSize(i);
        int size = View.MeasureSpec.getSize(i2);
        this.f7990if = size;
        setMeasuredDimension(this.f7986do, size);
        this.f7986do = (this.f7986do - getPaddingLeft()) - getPaddingRight();
        this.f7990if = eg.m587catch(50.0f);
    }
}
