package com.lxj.xpopup.core;

import android.graphics.PointF;
import android.graphics.Rect;
import com.apk.cv;
import com.apk.ev;
import com.apk.lv;
import com.apk.ov;
import com.apk.pv;
import com.apk.pw;
/* loaded from: classes8.dex */
public class HorizontalAttachPopupView extends AttachPopupView {
    /* renamed from: break  reason: not valid java name */
    public final boolean m3599break() {
        return (this.f9479try || this.popupInfo.f2929native == pv.Left) && this.popupInfo.f2929native != pv.Right;
    }

    @Override // com.lxj.xpopup.core.AttachPopupView, com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        ev evVar;
        if (m3599break()) {
            evVar = new ev(getPopupContentView(), ov.ScrollAlphaFromRight);
        } else {
            evVar = new ev(getPopupContentView(), ov.ScrollAlphaFromLeft);
        }
        evVar.f1126goto = true;
        return evVar;
    }

    @Override // com.lxj.xpopup.core.AttachPopupView
    /* renamed from: if */
    public void mo3595if() {
        boolean z;
        int i;
        float f;
        float height;
        int m2084final;
        float m2084final2;
        boolean m2094throw = pw.m2094throw(getContext());
        int measuredWidth = getPopupContentView().getMeasuredWidth();
        int measuredHeight = getPopupContentView().getMeasuredHeight();
        lv lvVar = this.popupInfo;
        PointF pointF = lvVar.f2914catch;
        if (pointF != null) {
            z = pointF.x > ((float) (pw.m2084final(getContext()) / 2));
            this.f9479try = z;
            if (m2094throw) {
                if (z) {
                    m2084final2 = (pw.m2084final(getContext()) - this.popupInfo.f2914catch.x) + this.f9476if;
                } else {
                    m2084final2 = ((pw.m2084final(getContext()) - this.popupInfo.f2914catch.x) - getPopupContentView().getMeasuredWidth()) - this.f9476if;
                }
                f = -m2084final2;
            } else {
                f = m3599break() ? (this.popupInfo.f2914catch.x - measuredWidth) - this.f9476if : this.popupInfo.f2914catch.x + this.f9476if;
            }
            height = (this.popupInfo.f2914catch.y - (measuredHeight * 0.5f)) + this.f9472do;
        } else {
            int[] iArr = new int[2];
            lvVar.f2920else.getLocationOnScreen(iArr);
            Rect rect = new Rect(iArr[0], iArr[1], this.popupInfo.f2920else.getMeasuredWidth() + iArr[0], this.popupInfo.f2920else.getMeasuredHeight() + iArr[1]);
            z = (rect.left + rect.right) / 2 > pw.m2084final(getContext()) / 2;
            this.f9479try = z;
            if (m2094throw) {
                if (z) {
                    m2084final = (pw.m2084final(getContext()) - rect.left) + this.f9476if;
                } else {
                    m2084final = ((pw.m2084final(getContext()) - rect.right) - getPopupContentView().getMeasuredWidth()) - this.f9476if;
                }
                i = -m2084final;
            } else {
                i = m3599break() ? (rect.left - measuredWidth) - this.f9476if : rect.right + this.f9476if;
            }
            f = i;
            height = ((rect.height() - measuredHeight) / 2) + rect.top + this.f9472do;
        }
        getPopupContentView().setTranslationX(f);
        getPopupContentView().setTranslationY(height);
    }

    @Override // com.lxj.xpopup.core.AttachPopupView, com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        lv lvVar = this.popupInfo;
        this.f9472do = lvVar.f2918default;
        int i = lvVar.f2942throws;
        if (i == 0) {
            i = pw.m2086goto(getContext(), 4.0f);
        }
        this.f9476if = i;
    }
}
