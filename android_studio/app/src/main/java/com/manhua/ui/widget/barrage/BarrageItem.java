package com.manhua.ui.widget.barrage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.apk.eg;

/* loaded from: classes8.dex */
public class BarrageItem implements IBarrageItem {
    public static final int sBaseSpeed = 3;
    public final BarrageBean mBarrageBean;
    public int mContainerHeight;
    public int mContainerWidth;
    public final SpannableStringBuilder mContent;
    public int mContentHeight;
    public int mContentWidth;
    public int mCurrX;
    public int mCurrY;
    public float mFactor;
    public int mTextAlpha;
    public int mTextColor;
    public int mTextSize;
    public StaticLayout staticLayout;
    public int strokeColor = ViewCompat.MEASURED_STATE_MASK;
    public TextPaint strokePaint;

    public BarrageItem(SpannableStringBuilder spannableStringBuilder, BarrageBean barrageBean, int i, int i2, float f, float f2) {
        this.mTextColor = -1;
        this.mContent = spannableStringBuilder;
        this.mBarrageBean = barrageBean;
        initPaint();
        this.mTextColor = i;
        this.mTextAlpha = i2;
        this.mTextSize = eg.m587catch(f);
        this.mFactor = f2;
        measure();
    }

    public static int getFontHeight(TextPaint textPaint) {
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        return ((int) Math.ceil(fontMetrics.descent - fontMetrics.top)) + 2;
    }

    private void initPaint() {
        TextPaint textPaint = new TextPaint();
        this.strokePaint = textPaint;
        textPaint.setAntiAlias(false);
        BarrageBean barrageBean = this.mBarrageBean;
        if (barrageBean == null || !TextUtils.isEmpty(barrageBean.getClickto())) {
            return;
        }
        this.strokePaint.setShadowLayer(12.0f, 0.0f, 0.0f, Color.parseColor("#666666"));
    }

    private void measure() {
        int argb = Color.argb(this.mTextAlpha, Color.red(this.mTextColor), Color.green(this.mTextColor), Color.blue(this.mTextColor));
        this.strokeColor = argb;
        this.strokePaint.setColor(argb);
        this.strokePaint.setTextSize(this.mTextSize);
        this.mContentHeight = getFontHeight(this.strokePaint);
        SpannableStringBuilder spannableStringBuilder = this.mContent;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, this.strokePaint, ((int) Layout.getDesiredWidth(spannableStringBuilder, 0, spannableStringBuilder.length(), this.strokePaint)) + 1, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.staticLayout = staticLayout;
        this.mContentWidth = staticLayout.getWidth();
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public void doDraw(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (width != this.mContainerWidth || height != this.mContainerHeight) {
            this.mContainerWidth = width;
            this.mContainerHeight = height;
        }
        canvas.save();
        canvas.translate(this.mCurrX, this.mCurrY);
        this.staticLayout.draw(canvas);
        canvas.restore();
        this.mCurrX = (int) (this.mCurrX - (this.mFactor * 3.0f));
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public BarrageBean getBarrageBean() {
        return this.mBarrageBean;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public int getCurrX() {
        return this.mCurrX;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public int getCurrY() {
        return this.mCurrY;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public int getHeight() {
        return this.mContentHeight;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public RectF getRectF() {
        int i = this.mCurrX;
        int i2 = this.mCurrY;
        return new RectF(i, i2, i + this.mContentWidth, i2 + this.mContentHeight);
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public float getSpeedFactor() {
        return this.mFactor;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public int getWidth() {
        return this.mContentWidth;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public boolean isOut() {
        int i = this.mCurrX;
        return i < 0 && Math.abs(i) > this.mContentWidth;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public void release() {
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public void setSpeedFactor(float f) {
        this.mFactor = f;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public void setStartPosition(int i, int i2) {
        this.mCurrX = i;
        this.mCurrY = i2;
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public void setStrokeAlpha(int i) {
        this.mTextAlpha = i;
        measure();
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public void setTextColor(int i) {
        if (i != 0) {
            this.mTextColor = i;
            measure();
        }
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public void setTextSize(float f) {
        if (f > 0.0f) {
            this.mTextSize = eg.m587catch(f);
            measure();
            return;
        }
        this.mTextSize = eg.m587catch(14.0f);
    }

    @Override // com.manhua.ui.widget.barrage.IBarrageItem
    public boolean willHit(IBarrageItem iBarrageItem) {
        if (iBarrageItem.getCurrX() + iBarrageItem.getWidth() > this.mContainerWidth) {
            return true;
        }
        if (iBarrageItem.getSpeedFactor() >= this.mFactor) {
            return false;
        }
        float width = iBarrageItem.getWidth() + iBarrageItem.getCurrX();
        return ((width / (iBarrageItem.getSpeedFactor() * 3.0f)) * this.mFactor) * 3.0f > width;
    }
}
