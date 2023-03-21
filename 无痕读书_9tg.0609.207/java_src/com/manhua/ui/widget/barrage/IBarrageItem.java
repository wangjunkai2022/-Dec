package com.manhua.ui.widget.barrage;

import android.graphics.Canvas;
import android.graphics.RectF;
/* loaded from: classes8.dex */
public interface IBarrageItem {
    void doDraw(Canvas canvas);

    BarrageBean getBarrageBean();

    int getCurrX();

    int getCurrY();

    int getHeight();

    RectF getRectF();

    float getSpeedFactor();

    int getWidth();

    boolean isOut();

    void release();

    void setSpeedFactor(float f);

    void setStartPosition(int i, int i2);

    void setStrokeAlpha(int i);

    void setTextColor(int i);

    void setTextSize(float f);

    boolean willHit(IBarrageItem iBarrageItem);
}
