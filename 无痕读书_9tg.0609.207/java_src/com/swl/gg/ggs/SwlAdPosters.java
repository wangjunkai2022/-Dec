package com.swl.gg.ggs;

import android.app.Activity;
import android.text.TextUtils;
import com.apk.b1;
import com.apk.c1;
import com.apk.k40;
import com.apk.lv;
import com.apk.n40;
import com.apk.o40;
import com.apk.r40;
import com.apk.y;
import com.apk.zu;
import com.swl.gg.bean.SwlAdView;
/* loaded from: classes7.dex */
public class SwlAdPosters {
    public Activity mActivity;

    public void load(Activity activity, final String str, n40 n40Var) {
        this.mActivity = activity;
        if (activity == null || str == null) {
            return;
        }
        new b1().m141do(new c1<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdPosters.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.apk.c1
            public SwlAdView doInBackground() {
                return SwlAdHelper.getSwlAdView(str);
            }

            @Override // com.apk.c1
            public void onPostExecute(final SwlAdView swlAdView) {
                r40 r40Var;
                super.onPostExecute((AnonymousClass1) swlAdView);
                if (SwlAdPosters.this.mActivity == null || SwlAdPosters.this.mActivity.isFinishing() || swlAdView == null) {
                    return;
                }
                String imgurl = swlAdView.getImgurl();
                if (TextUtils.isEmpty(imgurl) || (r40Var = k40.f2467do) == null) {
                    return;
                }
                ((y) r40Var).m3052do(SwlAdPosters.this.mActivity, imgurl, null, new o40() { // from class: com.swl.gg.ggs.SwlAdPosters.1.1
                    @Override // com.apk.o40
                    public void error() {
                    }

                    @Override // com.apk.o40
                    public void success() {
                        if (SwlAdPosters.this.mActivity == null || SwlAdPosters.this.mActivity.isFinishing()) {
                            return;
                        }
                        Activity unused = SwlAdPosters.this.mActivity;
                        lv lvVar = new lv();
                        lvVar.f2924for = Boolean.FALSE;
                        ShowImagePopupView showImagePopupView = new ShowImagePopupView(SwlAdPosters.this.mActivity, swlAdView, true);
                        lvVar.f2917continue = zu.f6266try;
                        showImagePopupView.popupInfo = lvVar;
                        showImagePopupView.show();
                    }
                });
            }
        });
    }

    public void onDestory() {
    }
}
