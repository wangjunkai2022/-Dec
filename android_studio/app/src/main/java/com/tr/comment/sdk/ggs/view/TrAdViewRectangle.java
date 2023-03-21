package com.tr.comment.sdk.ggs.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.ba0;
import com.apk.f60;
import com.apk.k40;
import com.apk.v90;
import com.swl.gg.sdk.TrAdSdk;
import com.tr.comment.sdk.bean.TrGgBean;
import java.util.List;

/* loaded from: classes7.dex */
public class TrAdViewRectangle extends v90 {

    /* renamed from: break  reason: not valid java name */
    public f60 f10429break;

    /* renamed from: case  reason: not valid java name */
    public boolean f10430case;

    /* renamed from: do  reason: not valid java name */
    public v90.Cdo f10431do;

    /* renamed from: else  reason: not valid java name */
    public long f10432else;

    /* renamed from: for  reason: not valid java name */
    public String f10433for;

    /* renamed from: goto  reason: not valid java name */
    public List<TrGgBean> f10434goto;

    /* renamed from: if  reason: not valid java name */
    public Activity f10435if;

    /* renamed from: new  reason: not valid java name */
    public boolean f10436new;

    /* renamed from: this  reason: not valid java name */
    public int f10437this;

    /* renamed from: try  reason: not valid java name */
    public boolean f10438try;

    public TrAdViewRectangle(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10436new = true;
        this.f10438try = true;
        setVisibility(8);
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3712if(TrAdViewRectangle trAdViewRectangle, View view) {
        ViewGroup viewGroup;
        if (trAdViewRectangle != null) {
            try {
                if (trAdViewRectangle.getChildCount() > 0) {
                    trAdViewRectangle.removeAllViews();
                }
                if (view.getParent() != null && (viewGroup = (ViewGroup) view.getParent()) != null && viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                if (trAdViewRectangle.f10430case && trAdViewRectangle.getVisibility() != 0) {
                    trAdViewRectangle.setVisibility(0);
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                layoutParams.leftMargin = k40.m1461super(2.0f);
                layoutParams.gravity = 17;
                trAdViewRectangle.addView(view, layoutParams);
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
        if (this.f10432else > 0 && this.f10436new) {
            if (this.f10431do == null) {
                this.f10431do = new v90.Cdo(this);
            }
            this.f10431do.removeMessages(102);
            this.f10431do.sendEmptyMessageDelayed(102, this.f10432else);
        }
        if (this.f10438try) {
            try {
                TrGgBean trGgBean = this.f10434goto.get(this.f10437this % this.f10434goto.size());
                String adpt = trGgBean.getAdpt();
                String adid = trGgBean.getAdid();
                if (TrAdSdk.isTheAd(adpt)) {
                    this.f10438try = false;
                    String str = this.f10433for;
                    if (this.f10429break == null) {
                        this.f10429break = new f60(this.f10435if, new ba0(this), str);
                    }
                    this.f10429break.m750try(adpt, adid, 0, 0);
                }
                this.f10437this++;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setAutoRefresh(boolean z) {
        this.f10436new = z;
    }

    public void setLoadSuccessVisible(boolean z) {
        this.f10430case = z;
    }
}
