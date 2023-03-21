package com.tr.comment.sdk.ggs.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.fa0;
import com.apk.k40;
import com.apk.v90;
import com.apk.x90;
import com.apk.z50;
import com.swl.gg.sdk.TrAdSdk;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.bean.TrGgBean;
import java.util.List;

/* loaded from: classes7.dex */
public class TrAdViewBangDan extends v90 {

    /* renamed from: break  reason: not valid java name */
    public ImageView f10404break;

    /* renamed from: case  reason: not valid java name */
    public boolean f10405case;

    /* renamed from: catch  reason: not valid java name */
    public z50 f10406catch;

    /* renamed from: class  reason: not valid java name */
    public int f10407class;

    /* renamed from: do  reason: not valid java name */
    public v90.Cdo f10408do;

    /* renamed from: else  reason: not valid java name */
    public List<TrGgBean> f10409else;

    /* renamed from: for  reason: not valid java name */
    public String f10410for;

    /* renamed from: goto  reason: not valid java name */
    public long f10411goto;

    /* renamed from: if  reason: not valid java name */
    public Activity f10412if;

    /* renamed from: new  reason: not valid java name */
    public boolean f10413new;

    /* renamed from: this  reason: not valid java name */
    public int f10414this;

    /* renamed from: try  reason: not valid java name */
    public boolean f10415try;

    public TrAdViewBangDan(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10413new = true;
        this.f10415try = true;
        this.f10407class = k40.m1461super(300.0f);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        if (this.f10405case) {
            setVisibility(8);
        }
        if (fa0.m760extends()) {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_night_bg));
        } else {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_day_bg));
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3707if(TrAdViewBangDan trAdViewBangDan, View view) {
        ViewGroup viewGroup;
        if (trAdViewBangDan != null) {
            try {
                if (trAdViewBangDan.getChildCount() > 0) {
                    trAdViewBangDan.removeAllViews();
                }
                if (view.getParent() != null && (viewGroup = (ViewGroup) view.getParent()) != null && viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                if (trAdViewBangDan.f10405case && trAdViewBangDan.getVisibility() != 0) {
                    trAdViewBangDan.setVisibility(0);
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                layoutParams.leftMargin = k40.m1461super(2.0f);
                layoutParams.gravity = 17;
                trAdViewBangDan.addView(view, layoutParams);
                ImageView imageView = trAdViewBangDan.f10404break;
                if (imageView == null || imageView.getVisibility() == 0) {
                    return;
                }
                trAdViewBangDan.f10404break.setVisibility(0);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.v90
    /* renamed from: do */
    public void mo2788do() {
        if (this.f10411goto > 0 && this.f10413new) {
            if (this.f10408do == null) {
                this.f10408do = new v90.Cdo(this);
            }
            this.f10408do.removeMessages(102);
            this.f10408do.sendEmptyMessageDelayed(102, this.f10411goto);
        }
        if (this.f10415try) {
            try {
                TrGgBean trGgBean = this.f10409else.get(this.f10414this % this.f10409else.size());
                String adpt = trGgBean.getAdpt();
                String adid = trGgBean.getAdid();
                if (TrAdSdk.isTheAd(adpt)) {
                    this.f10415try = false;
                    if (this.f10406catch == null) {
                        this.f10406catch = new z50(this.f10412if, new x90(this), this.f10410for);
                    }
                    this.f10406catch.m3147try(adpt, adid, 0, 0);
                }
                this.f10414this++;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3708for() {
        setVisibility(8);
        removeAllViews();
        v90.Cdo cdo = this.f10408do;
        if (cdo != null) {
            cdo.removeCallbacksAndMessages(null);
        }
        z50 z50Var = this.f10406catch;
        if (z50Var != null) {
            z50Var.m3146case();
            this.f10406catch = null;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 > this.f10407class) {
            this.f10407class = i2;
            setMinimumHeight(i2);
        }
    }

    public void setAutoRefresh(boolean z) {
        this.f10413new = z;
    }

    public void setCloseBtn(ImageView imageView) {
        this.f10404break = imageView;
    }

    public void setLoadSuccessVisible(boolean z) {
        this.f10405case = z;
    }
}
