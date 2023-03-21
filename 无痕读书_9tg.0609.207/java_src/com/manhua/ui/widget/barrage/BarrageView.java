package com.manhua.ui.widget.barrage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.InputDeviceCompat;
import com.apk.af;
import com.apk.b1;
import com.apk.eg;
import com.apk.g1;
import com.apk.tt;
import com.apk.ze;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
/* loaded from: classes8.dex */
public class BarrageView extends View {
    public static final int MAX_INTERVAL = 2000;
    public static final int MAX_LINE_LEN = 5;
    public static final int MIN_INTERVAL = 1000;
    public static final int STATUS_PAUSE = 2;
    public static final int STATUS_RUNNING = 1;
    public static final int STATUS_STOP = 3;
    public static final String TAG = "BarrageView";
    public static final Random random = new Random();
    public static final float[] speedFactors = {1.0f, 1.1f, 1.2f, 1.3f};
    public boolean isReloadSyncTag;
    public boolean isVisible;
    public boolean isWhileAddTag;
    public int mAlphaMark;
    public List<BarrageBean> mBarrageDatas;
    public IBarrageItem mBarrageItem;
    public HashMap<Integer, ArrayList<IBarrageItem>> mChannelMap;
    public int[] mChannelY;
    public List<BarrageBean> mChapterAllBarrages;
    public String mChapterId;
    public float mFontSizeMark;
    public GestureDetector mGestureDetector;
    public int mHeight;
    public int mMaxRow;
    public final int mMaxRunningPerRow;
    public float mSpeedMark;
    public Deque<IBarrageItem> mWaitingItems;
    public long previousTime;
    public final Runnable resumeRunnable;
    public volatile int status;

    /* loaded from: classes8.dex */
    public static class RadiusBgSpan extends ReplacementSpan {
        public boolean isAdType;
        public int mBgColor;
        public Bitmap mBitmap;
        public int mBitmapTop;
        public int mBitmapWidth;
        public final int mRadius;
        public int mSize;
        public int mStrokeSize;
        public int mTxtColor;

        public RadiusBgSpan(BarrageBean barrageBean, float f, int i) {
            int parseColor = Color.parseColor(barrageBean.getColor());
            this.mTxtColor = Color.argb(i, Color.red(parseColor), Color.green(parseColor), Color.blue(parseColor));
            this.mRadius = BarrageView.dip2px(10.0f);
            if (TextUtils.isEmpty(barrageBean.getClickto())) {
                return;
            }
            this.mStrokeSize = BarrageView.dip2px(0.6f);
            if (!TextUtils.isEmpty(barrageBean.getBgcolor())) {
                this.mBgColor = Color.parseColor(barrageBean.getBgcolor());
            }
            this.isAdType = true;
            String pre_Str = barrageBean.getPre_Str();
            String pre_Ico = barrageBean.getPre_Ico();
            g1 g1Var = new g1() { // from class: com.manhua.ui.widget.barrage.BarrageView.RadiusBgSpan.1
                @Override // com.apk.g1
                public void onData(Object obj) {
                    if (obj != null) {
                        RadiusBgSpan.this.mBitmap = (Bitmap) obj;
                        if (RadiusBgSpan.this.mBitmap != null) {
                            RadiusBgSpan.this.mBitmapTop = BarrageView.dip2px(2.5f);
                            RadiusBgSpan radiusBgSpan = RadiusBgSpan.this;
                            radiusBgSpan.mBitmapWidth = BarrageView.dip2px(10.0f) + radiusBgSpan.mBitmap.getWidth();
                        }
                    }
                }
            };
            Bitmap bitmap = null;
            if (!TextUtils.isEmpty(pre_Str) || !TextUtils.isEmpty(pre_Ico)) {
                int m587catch = eg.m587catch(f + 2.0f);
                int m587catch2 = eg.m587catch(3.0f);
                int i2 = (int) (m587catch * 0.6f);
                Paint paint = new Paint((int) InputDeviceCompat.SOURCE_KEYBOARD);
                paint.setAntiAlias(true);
                if (!TextUtils.isEmpty(pre_Str)) {
                    bitmap = Bitmap.createBitmap(pre_Str.length() * m587catch, m587catch, Bitmap.Config.ARGB_4444);
                    Canvas canvas = new Canvas(bitmap);
                    RectF rectF = new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
                    paint.setColor(Color.parseColor("#F15B50"));
                    float f2 = m587catch2;
                    canvas.drawRoundRect(rectF, f2, f2, paint);
                    paint.setColor(-1);
                    paint.setTextSize(i2);
                    paint.setTextAlign(Paint.Align.CENTER);
                    Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
                    canvas.drawText(pre_Str, rectF.centerX(), (((rectF.bottom + rectF.top) - fontMetricsInt.bottom) - fontMetricsInt.top) / 2.0f, paint);
                } else if (!TextUtils.isEmpty(pre_Ico)) {
                    new b1().m141do(new af(pre_Ico, g1Var));
                }
            }
            this.mBitmap = bitmap;
            if (bitmap != null) {
                this.mBitmapTop = BarrageView.dip2px(2.5f);
                this.mBitmapWidth = BarrageView.dip2px(10.0f) + this.mBitmap.getWidth();
            }
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            int i6;
            if (this.mBitmap != null) {
                float f2 = i4;
                RectF rectF = new RectF(f + 1.0f + (this.mBitmapTop * 2), (paint.ascent() * 1.2f) + f2 + 1.5f, f + this.mSize, (paint.descent() * 1.2f) + f2);
                canvas.drawBitmap(this.mBitmap, rectF.left, rectF.top + this.mBitmapTop, paint);
            }
            if (this.isAdType && (i6 = this.mBgColor) != 0) {
                paint.setColor(i6);
                paint.setStyle(Paint.Style.FILL);
                paint.setStrokeWidth(this.mStrokeSize);
                paint.setAntiAlias(true);
                float f3 = i4 + 1.5f;
                RectF rectF2 = new RectF(f + 1.0f, (paint.ascent() * 1.5f) + f3, f + this.mSize + this.mBitmapWidth, (paint.descent() * 2.0f) + f3);
                int i7 = this.mRadius;
                canvas.drawRoundRect(rectF2, i7, i7, paint);
            }
            paint.setColor(this.mTxtColor);
            paint.setStyle(Paint.Style.FILL);
            paint.setAntiAlias(true);
            canvas.drawText(charSequence, i, i2, f + this.mBitmapWidth, i4, paint);
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            int measureText = (int) (paint.measureText(charSequence, i, i2) + (this.mRadius * 2));
            this.mSize = measureText;
            return measureText + 5;
        }
    }

    public BarrageView(Context context) {
        this(context, null);
    }

    private void addItemToHead(IBarrageItem iBarrageItem) {
        synchronized (this.mWaitingItems) {
            this.mWaitingItems.offerFirst(iBarrageItem);
        }
    }

    private void clear() {
        clearItems();
        this.status = 3;
        invalidate();
    }

    private void clearItems() {
        clearRunning();
        clearWaiting();
    }

    private void clearRunning() {
        HashMap<Integer, ArrayList<IBarrageItem>> hashMap = this.mChannelMap;
        if (hashMap == null || hashMap.isEmpty()) {
            return;
        }
        this.mChannelMap.clear();
    }

    private void clearWaiting() {
        Deque<IBarrageItem> deque = this.mWaitingItems;
        if (deque == null || deque.isEmpty()) {
            return;
        }
        this.mWaitingItems.clear();
    }

    public static int dip2px(float f) {
        return eg.m587catch(f);
    }

    private int findVacant(IBarrageItem iBarrageItem) {
        try {
            if (this.mChannelMap == null || this.mChannelMap.size() <= 0) {
                return -1;
            }
            for (int i = 0; i < this.mMaxRow; i++) {
                if (this.mChannelMap.get(Integer.valueOf(i)).size() == 0) {
                    return i;
                }
            }
            int nextInt = random.nextInt(this.mMaxRow);
            for (int i2 = 0; i2 < this.mMaxRow; i2++) {
                int i3 = i2 + nextInt;
                ArrayList<IBarrageItem> arrayList = this.mChannelMap.get(Integer.valueOf(i3 % this.mMaxRow));
                if (arrayList.size() <= 2 && !iBarrageItem.willHit(arrayList.get(arrayList.size() - 1))) {
                    return i3 % this.mMaxRow;
                }
            }
            return -1;
        } catch (Exception e) {
            e.toString();
            return -1;
        }
    }

    private int getAlphaMark() {
        return this.mAlphaMark;
    }

    private float getFontSize() {
        return this.mFontSizeMark + 14.5f;
    }

    public static int getRandom(int i, int i2) {
        return (random.nextInt(i2) % ((i2 - i) + 1)) + i;
    }

    public static float getRandomFloat() {
        float[] fArr = speedFactors;
        return fArr[random.nextInt(fArr.length)];
    }

    private ReplacementSpan getReplacementSpan(BarrageBean barrageBean) {
        return new RadiusBgSpan(barrageBean, getFontSize(), getAlphaMark());
    }

    private SpannableStringBuilder getSpannableStringBuilder(BarrageBean barrageBean) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(barrageBean.getContent());
        spannableStringBuilder.setSpan(getReplacementSpan(barrageBean), 0, barrageBean.getContent().length(), 33);
        return spannableStringBuilder;
    }

    private float getSpeed() {
        return getRandomFloat() + this.mSpeedMark;
    }

    private List<BarrageBean> getUseBarrageBeans(int i) {
        List<BarrageBean> list;
        if (this.mBarrageDatas.size() == 0 && (list = this.mChapterAllBarrages) != null) {
            this.mBarrageDatas.addAll(list);
        }
        ArrayList arrayList = new ArrayList();
        if (this.mBarrageDatas.size() > 0) {
            if (i > this.mBarrageDatas.size()) {
                i = this.mBarrageDatas.size();
            }
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(this.mBarrageDatas.remove(0));
            }
        }
        return arrayList;
    }

    private void init() {
    }

    private void initGestureDetector() {
        this.mGestureDetector = new GestureDetector(getContext().getApplicationContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.manhua.ui.widget.barrage.BarrageView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                if (BarrageView.this.mChannelMap != null) {
                    for (Map.Entry entry : BarrageView.this.mChannelMap.entrySet()) {
                        ArrayList arrayList = (ArrayList) entry.getValue();
                        if (arrayList != null && arrayList.size() > 0) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                IBarrageItem iBarrageItem = (IBarrageItem) it.next();
                                RectF rectF = iBarrageItem.getRectF();
                                if (rectF != null && rectF.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                                    BarrageView.this.mBarrageItem = iBarrageItem;
                                    return true;
                                }
                            }
                            continue;
                        }
                    }
                }
                return super.onDown(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                BarrageBean barrageBean;
                if (BarrageView.this.mBarrageItem != null && (barrageBean = BarrageView.this.mBarrageItem.getBarrageBean()) != null && !TextUtils.isEmpty(barrageBean.getClickto())) {
                    BarrageDataUtils.clickAdDanMu(BarrageView.this.getContext(), barrageBean);
                }
                return super.onSingleTapUp(motionEvent);
            }
        });
    }

    private void setData() {
        this.mWaitingItems.clear();
        if (this.mBarrageDatas == null) {
            return;
        }
        List<BarrageBean> useBarrageBeans = getUseBarrageBeans(8);
        if (useBarrageBeans.size() < 8 && useBarrageBeans.size() < this.mChapterAllBarrages.size()) {
            useBarrageBeans.addAll(getUseBarrageBeans(8 - useBarrageBeans.size()));
        }
        if (useBarrageBeans.size() > 0) {
            Collections.shuffle(useBarrageBeans);
            ArrayList arrayList = new ArrayList();
            for (BarrageBean barrageBean : useBarrageBeans) {
                arrayList.add(new BarrageItem(getSpannableStringBuilder(barrageBean), barrageBean, !TextUtils.isEmpty(barrageBean.getColor()) ? Color.parseColor(barrageBean.getColor()) : 0, getAlphaMark(), getFontSize(), getSpeed()));
            }
            this.mWaitingItems.addAll(arrayList);
        }
    }

    private void whileAddBarrage() {
        Deque<IBarrageItem> deque;
        if (this.isVisible && (deque = this.mWaitingItems) != null && deque.size() == 0 && BarrageDataUtils.getInstance().isScrollIdle()) {
            setData();
            invalidate();
        }
    }

    public void addData(String str, BarrageBean barrageBean) {
        if (barrageBean == null || !str.equals(this.mChapterId)) {
            return;
        }
        try {
            if (this.mMaxRow != 0 && this.mChannelMap != null && this.mChannelMap.size() != 0) {
                if (this.mWaitingItems != null) {
                    this.mWaitingItems.addFirst(new BarrageItem(getSpannableStringBuilder(barrageBean), barrageBean, !TextUtils.isEmpty(barrageBean.getColor()) ? Color.parseColor(barrageBean.getColor()) : 0, getAlphaMark(), getFontSize(), getSpeed()));
                    showBarrage();
                    return;
                }
                return;
            }
            initBarrageView();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void destory() {
        clear();
        HashMap<Integer, ArrayList<IBarrageItem>> hashMap = this.mChannelMap;
        if (hashMap != null) {
            hashMap.clear();
        }
        Deque<IBarrageItem> deque = this.mWaitingItems;
        if (deque != null) {
            deque.clear();
        }
        List<BarrageBean> list = this.mBarrageDatas;
        if (list != null) {
            list.clear();
        }
        List<BarrageBean> list2 = this.mChapterAllBarrages;
        if (list2 != null) {
            list2.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f A[Catch: Exception -> 0x0107, TryCatch #0 {Exception -> 0x0107, blocks: (B:2:0x0000, B:5:0x0009, B:7:0x000d, B:8:0x0013, B:11:0x0018, B:13:0x001d, B:15:0x0021, B:21:0x002f, B:23:0x003f, B:31:0x0075, B:33:0x0079, B:35:0x0081, B:36:0x0083, B:38:0x008d, B:39:0x0095, B:41:0x0099, B:43:0x009d, B:45:0x00a5, B:46:0x00af, B:48:0x00b3, B:49:0x00c5, B:50:0x00d1, B:52:0x00d5, B:25:0x0047, B:27:0x0061, B:28:0x0066, B:30:0x0070, B:53:0x00dd, B:55:0x00e1, B:57:0x00e9, B:59:0x00ed, B:60:0x00f4, B:62:0x00fc, B:63:0x00ff, B:64:0x0103), top: B:69:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initBarrageView() {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.manhua.ui.widget.barrage.BarrageView.initBarrageView():void");
    }

    public void initMark() {
        this.mAlphaMark = ze.m3174instanceof("SP_BARRAGE_FONT_ALPHA_MARK_KEY", this.mAlphaMark);
        this.mFontSizeMark = tt.f4763do.getFloat("SP_BARRAGE_FONT_SIZE_MARK_KEY", this.mFontSizeMark);
        this.mSpeedMark = tt.f4763do.getFloat("SP_BARRAGE_FONT_SPEED_MARK_KEY", this.mSpeedMark);
    }

    public boolean isPaused() {
        return 2 == this.status;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (getVisibility() == 8) {
            destory();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        HashMap<Integer, ArrayList<IBarrageItem>> hashMap;
        super.onDraw(canvas);
        canvas.drawColor(0);
        if (this.status == 1 && BarrageDataUtils.getInstance().isScrollIdle()) {
            try {
                if (this.mChannelMap != null && this.mChannelMap.size() > 0) {
                    for (int i = 0; i < this.mChannelMap.size(); i++) {
                        Iterator<IBarrageItem> it = this.mChannelMap.get(Integer.valueOf(i)).iterator();
                        while (it.hasNext()) {
                            IBarrageItem next = it.next();
                            if (next.isOut()) {
                                it.remove();
                            } else {
                                next.doDraw(canvas);
                            }
                        }
                    }
                }
                long random2 = getRandom(1000, 2000);
                if (this.isWhileAddTag) {
                    random2 *= 3;
                }
                if (this.isReloadSyncTag) {
                    random2 = 0;
                }
                if (System.currentTimeMillis() - this.previousTime > random2) {
                    this.isWhileAddTag = false;
                    this.isReloadSyncTag = false;
                    this.previousTime = System.currentTimeMillis();
                    IBarrageItem pollFirst = this.mWaitingItems.pollFirst();
                    if (pollFirst != null) {
                        int findVacant = findVacant(pollFirst);
                        if (findVacant >= 0) {
                            pollFirst.setStartPosition(getWidth() - 2, this.mChannelY[findVacant]);
                            pollFirst.doDraw(canvas);
                            this.mChannelMap.get(Integer.valueOf(findVacant)).add(pollFirst);
                        } else {
                            addItemToHead(pollFirst);
                        }
                    } else {
                        this.isWhileAddTag = true;
                        if (this.mWaitingItems.size() == 0) {
                            whileAddBarrage();
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            invalidate();
        } else if (this.status != 3 && (hashMap = this.mChannelMap) != null && hashMap.size() > 0) {
            for (int i2 = 0; i2 < this.mChannelMap.size(); i2++) {
                ArrayList<IBarrageItem> arrayList = this.mChannelMap.get(Integer.valueOf(i2));
                if (arrayList != null) {
                    Iterator<IBarrageItem> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        IBarrageItem next2 = it2.next();
                        if (next2.isOut()) {
                            it2.remove();
                        } else {
                            next2.doDraw(canvas);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector = this.mGestureDetector;
        if (gestureDetector != null) {
            return gestureDetector.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.isVisible = i == 0;
    }

    public void pause() {
        this.status = 2;
        invalidate();
    }

    public void reloadSync() {
        destory();
        initBarrageView();
    }

    public void reset() {
        clear();
        initBarrageView();
    }

    public void resume() {
        showBarrage(500L);
    }

    public void setChapterId(String str, int i) {
        this.mChapterId = str;
        List<BarrageBean> list = this.mChapterAllBarrages;
        if (list != null) {
            list.clear();
        }
        clear();
    }

    public void setHeight(int i) {
        this.mHeight = i;
    }

    public void showBarrage() {
        showBarrage(50L);
    }

    public void stop() {
        this.status = 3;
        invalidate();
    }

    public BarrageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void showBarrage(long j) {
        removeCallbacks(this.resumeRunnable);
        postDelayed(this.resumeRunnable, j);
    }

    public BarrageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.status = 3;
        this.mMaxRow = 0;
        this.mMaxRunningPerRow = 2;
        this.previousTime = 0L;
        this.mAlphaMark = 255;
        this.resumeRunnable = new Runnable() { // from class: com.manhua.ui.widget.barrage.BarrageView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!BarrageView.this.isVisible || BarrageView.this.mWaitingItems == null || BarrageView.this.mWaitingItems.size() <= 0) {
                    return;
                }
                BarrageView.this.status = 1;
                BarrageView.this.invalidate();
            }
        };
        init();
    }
}
