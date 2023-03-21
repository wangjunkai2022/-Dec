package com.apk;

import android.content.Context;
import android.graphics.Color;
import com.swl.gg.sdk.R$layout;
/* compiled from: TrGdtNativeUnifiedBanner.java */
/* loaded from: classes7.dex */
public class w50 extends t50 {
    public w50(Context context, x60 x60Var) {
        super(context, x60Var);
    }

    @Override // com.apk.t50
    public int getLayoutId() {
        return R$layout.tr_ad_sdk_gdt_native_unified_banner;
    }

    public void setThemeDayNight(boolean z) {
        if (z) {
            if (this.f4644catch) {
                return;
            }
            this.f4651this.setTextColor(Color.parseColor("#111111"));
            this.f4642break.setTextColor(Color.parseColor("#666666"));
        } else if (!this.f4644catch) {
            return;
        } else {
            this.f4651this.setTextColor(Color.parseColor("#999999"));
            this.f4642break.setTextColor(Color.parseColor("#999999"));
        }
        this.f4644catch = z;
    }
}
