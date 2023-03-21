package com.lxj.xpopup.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.pw;
import com.apk.tv;
import com.lxj.xpopup.impl.PartShadowPopupView;

/* loaded from: classes8.dex */
public class PartShadowContainer extends FrameLayout {
    public boolean isDismissOnTouchOutside;
    public tv listener;
    public float x;
    public float y;

    public PartShadowContainer(@NonNull Context context) {
        super(context);
        this.isDismissOnTouchOutside = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        tv tvVar;
        View childAt = getChildAt(0);
        int[] iArr = new int[2];
        childAt.getLocationInWindow(iArr);
        if (!pw.m2092super(motionEvent.getRawX(), motionEvent.getRawY(), new Rect(iArr[0], iArr[1], childAt.getMeasuredWidth() + iArr[0], childAt.getMeasuredHeight() + iArr[1]))) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.x = motionEvent.getX();
                this.y = motionEvent.getY();
            } else if (action == 1) {
                if (((float) Math.sqrt(Math.pow(motionEvent.getY() - this.y, 2.0d) + Math.pow(motionEvent.getX() - this.x, 2.0d))) < ViewConfiguration.get(getContext()).getScaledTouchSlop() && this.isDismissOnTouchOutside && (tvVar = this.listener) != null) {
                    PartShadowPopupView.Cif cif = (PartShadowPopupView.Cif) tvVar;
                    if (cif.f9598do.popupInfo.f2924for.booleanValue()) {
                        cif.f9598do.dismiss();
                    }
                }
                this.x = 0.0f;
                this.y = 0.0f;
            }
        }
        return true;
    }

    public void setOnClickOutsideListener(tv tvVar) {
        this.listener = tvVar;
    }

    public PartShadowContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PartShadowContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isDismissOnTouchOutside = true;
    }
}
