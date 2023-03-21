package com.swl.gg.ggs;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cclass;
import com.apk.b1;
import com.apk.bg;
import com.apk.c1;
import com.apk.k40;
import com.apk.n40;
import com.apk.r40;
import com.apk.y;
import com.apk.ze;
import com.swl.gg.bean.SwlAdView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes7.dex */
public class SwlAdBesttopTwoView extends FrameLayout {
    public n40 mAdViewListener;
    public ImageView mCloseView;
    public TextView mDescTv;
    public ImageView mIconImgView;
    public TextView mLinkTv;
    public TextView mTitleTv;
    public String mZoneid;

    public SwlAdBesttopTwoView(@NonNull Context context) {
        this(context, null);
    }

    private void init() {
        LayoutInflater.from(getContext()).inflate(R.layout.view_xyz_besttop_ad_newshow, this);
        this.mCloseView = (ImageView) findViewById(R.id.ad_view_besttop_close);
        this.mIconImgView = (ImageView) findViewById(R.id.d2);
        this.mTitleTv = (TextView) findViewById(R.id.d5);
        this.mDescTv = (TextView) findViewById(R.id.d1);
        this.mLinkTv = (TextView) findViewById(R.id.ad_view_besttop_link);
        setOnClickListener(new bg() { // from class: com.swl.gg.ggs.SwlAdBesttopTwoView.1
            @Override // com.apk.bg
            public void onNoDoubleClick(View view) {
                SwlAdView swlAdView = (SwlAdView) view.getTag();
                if (swlAdView != null) {
                    String pkg = swlAdView.getPkg();
                    if (ze.G(pkg)) {
                        SwlAdBesttopTwoView.this.getContext().startActivity(SwlAdBesttopTwoView.this.getContext().getPackageManager().getLaunchIntentForPackage(pkg));
                        return;
                    }
                    String opentype = swlAdView.getOpentype();
                    if ("apk".equals(opentype)) {
                        SwlAdHelper.setAdClick(SwlAdBesttopTwoView.this.getContext(), "2", swlAdView.getAdurl(), swlAdView.getAdtitle());
                    } else if ("inner_page".equals(opentype)) {
                        SwlAdHelper.openBrowser(SwlAdBesttopTwoView.this.getContext(), swlAdView.getAdurl(), true);
                    } else if ("browser_page".equals(opentype)) {
                        SwlAdHelper.openBrowser(SwlAdBesttopTwoView.this.getContext(), swlAdView.getAdurl(), false);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAds(SwlAdView swlAdView) {
        setTag(swlAdView);
        r40 r40Var = k40.f2467do;
        if (r40Var != null) {
            ((y) r40Var).m3052do(getContext(), swlAdView.getImgurl(), this.mIconImgView, null);
        }
        this.mTitleTv.setText(swlAdView.getAdtitle());
        this.mDescTv.setText(swlAdView.getAddesc());
        this.mLinkTv.setText(swlAdView.getLinktxt());
        n40 n40Var = this.mAdViewListener;
        if (n40Var != null) {
            ((Cclass.Cdo) n40Var).m362for();
        }
    }

    public void destroy() {
    }

    public void loadAd(final String str) {
        this.mZoneid = str;
        if (TextUtils.isEmpty(str)) {
            n40 n40Var = this.mAdViewListener;
            if (n40Var != null && ((Cclass.Cdo) n40Var) == null) {
                throw null;
            }
            return;
        }
        new b1().m141do(new c1<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdBesttopTwoView.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.apk.c1
            public SwlAdView doInBackground() {
                return SwlAdHelper.getSwlAdView(str);
            }

            @Override // com.apk.c1
            public void onPostExecute(SwlAdView swlAdView) {
                super.onPostExecute((AnonymousClass3) swlAdView);
                if (swlAdView != null) {
                    SwlAdBesttopTwoView.this.initAds(swlAdView);
                } else if (SwlAdBesttopTwoView.this.mAdViewListener != null && ((Cclass.Cdo) SwlAdBesttopTwoView.this.mAdViewListener) == null) {
                    throw null;
                }
            }
        });
    }

    public void setAdViewListener(n40 n40Var) {
        this.mAdViewListener = n40Var;
    }

    public void setClose(boolean z) {
        if (z) {
            this.mCloseView.setVisibility(0);
            this.mCloseView.setOnClickListener(new bg() { // from class: com.swl.gg.ggs.SwlAdBesttopTwoView.2
                @Override // com.apk.bg
                public void onNoDoubleClick(View view) {
                    if (SwlAdBesttopTwoView.this.mAdViewListener != null) {
                        ((Cclass.Cdo) SwlAdBesttopTwoView.this.mAdViewListener).m363if();
                    }
                }
            });
        }
    }

    public SwlAdBesttopTwoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
