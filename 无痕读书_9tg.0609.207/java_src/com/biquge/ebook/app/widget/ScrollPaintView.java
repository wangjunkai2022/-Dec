package com.biquge.ebook.app.widget;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import com.apk.ca;
import com.apk.da;
import com.apk.ug;
import com.apk.vg;
import com.apk.wg;
import com.apk.xg;
import com.apk.ze;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.bytedance.msdk.api.AdError;
import com.ss.android.download.api.constant.BaseConstants;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ScrollPaintView extends RelativeLayout {

    /* renamed from: break  reason: not valid java name */
    public int f8119break;

    /* renamed from: case  reason: not valid java name */
    public RelativeLayout.LayoutParams f8120case;

    /* renamed from: catch  reason: not valid java name */
    public int f8121catch;

    /* renamed from: class  reason: not valid java name */
    public float f8122class;

    /* renamed from: const  reason: not valid java name */
    public int f8123const;

    /* renamed from: default  reason: not valid java name */
    public boolean f8124default;

    /* renamed from: do  reason: not valid java name */
    public ImageView f8125do;

    /* renamed from: else  reason: not valid java name */
    public int f8126else;

    /* renamed from: final  reason: not valid java name */
    public int f8127final;

    /* renamed from: for  reason: not valid java name */
    public RelativeLayout f8128for;

    /* renamed from: goto  reason: not valid java name */
    public int f8129goto;

    /* renamed from: if  reason: not valid java name */
    public RelativeLayout.LayoutParams f8130if;

    /* renamed from: import  reason: not valid java name */
    public int f8131import;

    /* renamed from: native  reason: not valid java name */
    public int f8132native;

    /* renamed from: new  reason: not valid java name */
    public RelativeLayout.LayoutParams f8133new;

    /* renamed from: public  reason: not valid java name */
    public int f8134public;

    /* renamed from: return  reason: not valid java name */
    public int f8135return;

    /* renamed from: static  reason: not valid java name */
    public ObjectAnimator f8136static;

    /* renamed from: super  reason: not valid java name */
    public Cdo f8137super;

    /* renamed from: switch  reason: not valid java name */
    public boolean f8138switch;

    /* renamed from: this  reason: not valid java name */
    public int f8139this;

    /* renamed from: throw  reason: not valid java name */
    public int f8140throw;

    /* renamed from: throws  reason: not valid java name */
    public boolean f8141throws;

    /* renamed from: try  reason: not valid java name */
    public View f8142try;

    /* renamed from: while  reason: not valid java name */
    public int f8143while;

    /* renamed from: com.biquge.ebook.app.widget.ScrollPaintView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    public ScrollPaintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8127final = 30000;
        this.f8123const = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        m3489new();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScroll(int i) {
        int i2 = this.f8126else;
        if (i > i2) {
            this.f8138switch = true;
            i = i2;
        } else if (i < 0) {
            this.f8141throws = true;
            i = 0;
        }
        RelativeLayout.LayoutParams layoutParams = this.f8133new;
        layoutParams.height = i;
        layoutParams.addRule(12);
        this.f8128for.setLayoutParams(this.f8133new);
        RelativeLayout.LayoutParams layoutParams2 = this.f8130if;
        int i3 = this.f8126else;
        layoutParams2.height = i3;
        layoutParams2.topMargin = i - i3;
        this.f8125do.setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Keep
    public void setWidth(int i) {
        RelativeLayout.LayoutParams layoutParams = this.f8120case;
        layoutParams.width = i;
        this.f8142try.setLayoutParams(layoutParams);
    }

    /* renamed from: case  reason: not valid java name */
    public void m3487case() {
        this.f8124default = true;
        ObjectAnimator objectAnimator = this.f8136static;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3488for() {
        this.f8129goto = 0;
        this.f8139this = 0;
        setScroll(this.f8126else);
        this.f8121catch = 0;
        RelativeLayout.LayoutParams layoutParams = this.f8120case;
        layoutParams.width = 0;
        this.f8142try.setLayoutParams(layoutParams);
    }

    /* renamed from: new  reason: not valid java name */
    public void m3489new() {
        this.f8119break = (int) ca.m315do().f543else;
        int i = (int) ca.m315do().f545goto;
        this.f8126else = i;
        this.f8122class = ((this.f8119break * 1.0f) / i) * 1.0f;
        setScrollSpeed(da.m425if());
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void onFinishInflate() {
        View findViewById = findViewById(R.id.roll_around_view);
        this.f8142try = findViewById;
        this.f8120case = (RelativeLayout.LayoutParams) findViewById.getLayoutParams();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.roll_content_layout);
        this.f8128for = relativeLayout;
        this.f8133new = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        ImageView imageView = (ImageView) findViewById(R.id.roll_content_view);
        this.f8125do = imageView;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        this.f8130if = layoutParams;
        this.f8125do.setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int rawY = (int) motionEvent.getRawY();
        int action = motionEvent.getAction();
        if (action == 0) {
            requestDisallowInterceptTouchEvent(true);
            this.f8131import = 0;
            this.f8132native = 0;
            this.f8134public = 0;
            this.f8140throw = rawY;
            this.f8143while = rawY;
            m3487case();
            return true;
        } else if (action == 1) {
            requestDisallowInterceptTouchEvent(false);
            if (Math.abs(this.f8143while - this.f8140throw) > this.f8123const) {
                int i = this.f8131import;
                if (i != 0) {
                    this.f8139this = i;
                    int i2 = this.f8126else;
                    if (i > i2) {
                        this.f8139this = i2;
                    } else if (i < 0) {
                        this.f8139this = 0;
                    }
                }
                int i3 = this.f8132native;
                if (i3 != 0) {
                    if (i3 < 0) {
                        this.f8132native = 0;
                    } else {
                        int i4 = this.f8119break;
                        if (i3 > i4) {
                            this.f8132native = i4;
                        }
                    }
                    this.f8121catch = this.f8132native;
                }
                Cdo cdo = this.f8137super;
                if (cdo != null) {
                    ((NewBookReadActivity.Celse) cdo).m3315do(false);
                }
                m3490try();
            } else {
                Cdo cdo2 = this.f8137super;
                if (cdo2 != null) {
                    ((NewBookReadActivity.Celse) cdo2).m3315do(true);
                }
            }
            this.f8138switch = false;
            this.f8141throws = false;
            return true;
        } else if (action != 2) {
            return super.onTouchEvent(motionEvent);
        } else {
            if (this.f8135return == 0) {
                if (this.f8138switch || this.f8141throws) {
                    return true;
                }
                this.f8143while = rawY;
                int i5 = this.f8134public;
                if (i5 != 0) {
                    this.f8143while = i5;
                }
                int i6 = this.f8143while;
                if (i6 > this.f8140throw) {
                    if (this.f8141throws) {
                        this.f8134public = i6;
                    }
                    int abs = this.f8139this - Math.abs(this.f8143while - this.f8140throw);
                    this.f8131import = abs;
                    if (abs <= 1) {
                        this.f8131import = 1;
                    }
                    setScroll(this.f8131import);
                } else {
                    if (this.f8138switch) {
                        this.f8134public = i6;
                    }
                    int abs2 = Math.abs(this.f8143while - this.f8140throw) + this.f8139this;
                    this.f8131import = abs2;
                    setScroll(abs2);
                }
            } else {
                this.f8143while = rawY;
                int i7 = this.f8140throw;
                if (rawY > i7) {
                    int i8 = this.f8121catch + ((int) ((rawY - i7) * this.f8122class));
                    this.f8132native = i8;
                    setWidth(i8);
                } else {
                    int i9 = this.f8121catch - ((int) ((i7 - rawY) * this.f8122class));
                    this.f8132native = i9;
                    setWidth(i9);
                }
            }
            return true;
        }
    }

    public void setImage(Bitmap bitmap) {
        if (bitmap != null) {
            this.f8126else = bitmap.getHeight();
            ImageView imageView = this.f8125do;
            if (imageView != null) {
                imageView.setImageBitmap(bitmap);
            }
        }
    }

    public void setScrollPaintCompleteListener(Cdo cdo) {
        if (cdo != null) {
            this.f8137super = cdo;
        }
    }

    public void setScrollSpeed(int i) {
        switch (i) {
            case 1:
                this.f8127final = BaseConstants.Time.MINUTE;
                return;
            case 2:
                this.f8127final = 55000;
                return;
            case 3:
                this.f8127final = 50000;
                return;
            case 4:
                this.f8127final = 45000;
                return;
            case 5:
                this.f8127final = 40000;
                return;
            case 6:
                this.f8127final = 35000;
                return;
            case 7:
                this.f8127final = 30000;
                return;
            case 8:
                this.f8127final = 25000;
                return;
            case 9:
                this.f8127final = AdError.ERROR_CODE_AD_LOAD_SUCCESS;
                return;
            case 10:
                this.f8127final = SpeechSynthesizer.MAX_QUEUE_SIZE;
                return;
            case 11:
                this.f8127final = 10000;
                return;
            case 12:
                this.f8127final = 5000;
                return;
            default:
                return;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m3490try() {
        int i;
        int i2;
        int m3174instanceof = ze.m3174instanceof("auto_read_type", 0);
        this.f8135return = m3174instanceof;
        if (m3174instanceof == 0) {
            this.f8128for.setVisibility(0);
            this.f8142try.setVisibility(8);
            if (this.f8129goto == 0) {
                this.f8129goto = this.f8126else;
            } else {
                this.f8129goto = this.f8139this;
            }
            long j = this.f8127final;
            int i3 = this.f8129goto;
            if (i3 != 0) {
                j = (j / this.f8126else) * i3;
            }
            ObjectAnimator objectAnimator = this.f8136static;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            ObjectAnimator ofInt = ObjectAnimator.ofInt(this.f8128for, "translationY", this.f8129goto, 0);
            this.f8136static = ofInt;
            ofInt.setDuration(j);
            this.f8136static.setRepeatCount(0);
            this.f8136static.setInterpolator(new LinearInterpolator());
            this.f8136static.addListener(new wg(this));
            this.f8136static.addUpdateListener(new xg(this));
            this.f8136static.start();
            return;
        }
        this.f8128for.setVisibility(8);
        this.f8142try.setVisibility(0);
        long j2 = this.f8127final;
        if (this.f8121catch != 0) {
            j2 = (j2 / this.f8119break) * (i2 - i);
        }
        ObjectAnimator ofInt2 = ObjectAnimator.ofInt(this, "width", this.f8121catch, this.f8119break);
        this.f8136static = ofInt2;
        ofInt2.setDuration(j2);
        this.f8136static.setInterpolator(new LinearInterpolator());
        this.f8136static.addListener(new ug(this));
        this.f8136static.addUpdateListener(new vg(this));
        this.f8136static.start();
    }
}
