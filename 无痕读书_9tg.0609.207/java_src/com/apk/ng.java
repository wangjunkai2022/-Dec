package com.apk;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.biquge.ebook.app.bean.BookChapter;
import java.util.Vector;
/* compiled from: BookTextView.java */
/* loaded from: classes8.dex */
public class ng extends View {

    /* renamed from: break  reason: not valid java name */
    public gg<String, Object> f3213break;

    /* renamed from: case  reason: not valid java name */
    public int f3214case;

    /* renamed from: catch  reason: not valid java name */
    public float f3215catch;

    /* renamed from: class  reason: not valid java name */
    public float f3216class;

    /* renamed from: const  reason: not valid java name */
    public float f3217const;

    /* renamed from: do  reason: not valid java name */
    public int f3218do;

    /* renamed from: else  reason: not valid java name */
    public String f3219else;

    /* renamed from: for  reason: not valid java name */
    public String f3220for;

    /* renamed from: goto  reason: not valid java name */
    public String f3221goto;

    /* renamed from: if  reason: not valid java name */
    public float f3222if;

    /* renamed from: new  reason: not valid java name */
    public int f3223new;

    /* renamed from: this  reason: not valid java name */
    public String f3224this;

    /* renamed from: try  reason: not valid java name */
    public Vector<String> f3225try;

    public ng(Context context) {
        super(context, null, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1879do(android.graphics.Canvas r11) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ng.m1879do(android.graphics.Canvas):int");
    }

    public int getContentHeight() {
        return this.f3218do;
    }

    /* renamed from: if  reason: not valid java name */
    public void m1880if(BookChapter bookChapter, String str) {
        try {
            this.f3219else = bookChapter.getNovelid();
            this.f3221goto = bookChapter.getChapterId();
            this.f3225try = bookChapter.getValues();
            this.f3220for = str;
            this.f3223new = bookChapter.getReadPage();
            this.f3224this = this.f3219else + "_" + this.f3221goto + "_" + this.f3223new;
            if (this.f3213break != null) {
                this.f3213break.clear();
            }
            this.f3215catch = 0.0f;
            this.f3217const = 0.0f;
            this.f3216class = 0.0f;
            int m1879do = m1879do(null);
            this.f3218do = m1879do;
            if (m1879do > 0 && getLayoutParams() != null) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = this.f3218do;
                setLayoutParams(layoutParams);
            }
            invalidate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Vector<String> vector = this.f3225try;
        if (vector == null || vector.size() <= 0) {
            return;
        }
        m1879do(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f3218do;
        if (i3 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }
}
