package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* loaded from: classes8.dex */
public class ScrollHeaderLayout extends LinearLayout {

    /* renamed from: do  reason: not valid java name */
    public boolean f8118do;

    public ScrollHeaderLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f8118do = true;
        } else if (action == 1 || action == 3) {
            this.f8118do = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
