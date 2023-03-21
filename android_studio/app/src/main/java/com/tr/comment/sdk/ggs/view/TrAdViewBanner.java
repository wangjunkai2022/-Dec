package com.tr.comment.sdk.ggs.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.a60;
import com.apk.bb0;
import com.apk.fa0;
import com.apk.k40;
import com.apk.v90;
import com.apk.y90;
import com.apk.z90;
import com.swl.gg.sdk.TrAdSdk;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.bean.TrGgBean;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class TrAdViewBanner extends v90 {

    /* renamed from: break  reason: not valid java name */
    public long f10416break;

    /* renamed from: case  reason: not valid java name */
    public boolean f10417case;

    /* renamed from: catch  reason: not valid java name */
    public int f10418catch;

    /* renamed from: class  reason: not valid java name */
    public ImageView f10419class;

    /* renamed from: const  reason: not valid java name */
    public a60 f10420const;

    /* renamed from: do  reason: not valid java name */
    public v90.Cdo f10421do;

    /* renamed from: else  reason: not valid java name */
    public boolean f10422else;

    /* renamed from: for  reason: not valid java name */
    public int f10423for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f10424goto;

    /* renamed from: if  reason: not valid java name */
    public int f10425if;

    /* renamed from: new  reason: not valid java name */
    public Activity f10426new;

    /* renamed from: this  reason: not valid java name */
    public List<TrGgBean> f10427this;

    /* renamed from: try  reason: not valid java name */
    public String f10428try;

    public TrAdViewBanner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10417case = true;
        this.f10422else = true;
        if (this.f10424goto) {
            setVisibility(8);
        }
        DisplayMetrics displayMetrics = getContext().getApplicationContext().getResources().getDisplayMetrics();
        int min = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.f10425if = min;
        this.f10423for = (int) (min / 6.4d);
        if (fa0.m760extends()) {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_night_bg));
        } else {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_day_bg));
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3709if(TrAdViewBanner trAdViewBanner, View view) {
        ViewGroup viewGroup;
        if (trAdViewBanner != null) {
            try {
                if (trAdViewBanner.getChildCount() > 0) {
                    trAdViewBanner.removeAllViews();
                }
                if (view != null && view.getParent() != null && (viewGroup = (ViewGroup) view.getParent()) != null && viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                if (trAdViewBanner.f10424goto && trAdViewBanner.getVisibility() != 0) {
                    trAdViewBanner.setVisibility(0);
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                trAdViewBanner.addView(view, layoutParams);
                ImageView imageView = trAdViewBanner.f10419class;
                if (imageView == null || imageView.getVisibility() == 0) {
                    return;
                }
                trAdViewBanner.f10419class.setVisibility(0);
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
        if (this.f10416break > 0 && this.f10417case) {
            if (this.f10421do == null) {
                this.f10421do = new v90.Cdo(this);
            }
            this.f10421do.removeMessages(102);
            this.f10421do.sendEmptyMessageDelayed(102, this.f10416break);
        }
        if (this.f10422else) {
            try {
                TrGgBean trGgBean = this.f10427this.get(this.f10418catch % this.f10427this.size());
                String adpt = trGgBean.getAdpt();
                String adid = trGgBean.getAdid();
                if (TrAdSdk.isTheAd(adpt)) {
                    this.f10422else = false;
                    if (this.f10420const == null) {
                        this.f10420const = new a60(this.f10426new, new z90(this), this.f10428try);
                    }
                    this.f10420const.m27try(adpt, adid, 0, 0);
                }
                this.f10418catch++;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3710for(Activity activity, JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return;
        }
        this.f10426new = activity;
        this.f10428try = str;
        new bb0().m166do(new y90(this, jSONObject));
    }

    /* renamed from: new  reason: not valid java name */
    public void m3711new() {
        setVisibility(8);
        removeAllViews();
        v90.Cdo cdo = this.f10421do;
        if (cdo != null) {
            cdo.removeCallbacksAndMessages(null);
        }
        a60 a60Var = this.f10420const;
        if (a60Var != null) {
            a60Var.m26case();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f10425if, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f10423for, 1073741824));
    }

    public void setAutoRefresh(boolean z) {
        this.f10417case = z;
    }

    public void setCloseBtn(ImageView imageView) {
        this.f10419class = imageView;
    }

    public void setLoadSuccessVisible(boolean z) {
        this.f10424goto = z;
    }
}
