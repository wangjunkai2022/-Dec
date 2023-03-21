package com.apk;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.util.AdError;
import com.swl.gg.sdk.R$id;
import com.swl.gg.sdk.TrAdSdk;
import com.swl.gg.sdk.core.widget.TrNiceImageView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TrGdtNativeUnifiedAD.java */
/* loaded from: classes7.dex */
public abstract class t50 extends FrameLayout {

    /* renamed from: break  reason: not valid java name */
    public TextView f4642break;

    /* renamed from: case  reason: not valid java name */
    public MediaView f4643case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f4644catch;

    /* renamed from: do  reason: not valid java name */
    public NativeUnifiedADData f4645do;

    /* renamed from: else  reason: not valid java name */
    public ImageView f4646else;

    /* renamed from: for  reason: not valid java name */
    public NativeAdContainer f4647for;

    /* renamed from: goto  reason: not valid java name */
    public TextView f4648goto;

    /* renamed from: if  reason: not valid java name */
    public final x60 f4649if;

    /* renamed from: new  reason: not valid java name */
    public LinearLayout f4650new;

    /* renamed from: this  reason: not valid java name */
    public TextView f4651this;

    /* renamed from: try  reason: not valid java name */
    public TrNiceImageView f4652try;

    /* compiled from: TrGdtNativeUnifiedAD.java */
    /* renamed from: com.apk.t50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements NativeADUnifiedListener {
        public Cdo() {
        }

        @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
        public void onADLoaded(List<NativeUnifiedADData> list) {
            if (list.size() > 0) {
                t50.this.f4645do = list.get(0);
                t50 t50Var = t50.this;
                x60 x60Var = t50Var.f4649if;
                if (x60Var != null) {
                    x60Var.mo165new(t50Var);
                }
                t50 t50Var2 = t50.this;
                t50.m2577for(t50Var2, t50Var2.f4645do);
                return;
            }
            x60 x60Var2 = t50.this.f4649if;
            if (x60Var2 != null) {
                x60Var2.mo159if(83008, "请求成功，但是返回的list为空");
            }
        }

        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
        public void onNoAD(AdError adError) {
            x60 x60Var = t50.this.f4649if;
            if (x60Var != null) {
                x60Var.mo159if(adError.getErrorCode(), adError.getErrorMsg());
            }
        }
    }

    public t50(Context context, x60 x60Var) {
        super(context);
        this.f4644catch = true;
        this.f4649if = x60Var;
        LayoutInflater.from(getContext()).inflate(getLayoutId(), this);
        this.f4647for = (NativeAdContainer) findViewById(R$id.native_ad_container);
        this.f4650new = (LinearLayout) findViewById(R$id.gdt_native_ad_layout);
        this.f4652try = (TrNiceImageView) findViewById(R$id.gdt_native_img_logo);
        this.f4643case = (MediaView) findViewById(R$id.gdt_media_view);
        this.f4646else = (ImageView) findViewById(R$id.gdt_poster_img);
        this.f4648goto = (TextView) findViewById(R$id.gdt_native_btn_detail);
        this.f4651this = (TextView) findViewById(R$id.text_title);
        this.f4642break = (TextView) findViewById(R$id.text_desc);
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2577for(t50 t50Var, NativeUnifiedADData nativeUnifiedADData) {
        int adPatternType = nativeUnifiedADData.getAdPatternType();
        if (adPatternType == 1 || adPatternType == 2) {
            TrAdSdk.loadImageGlide(nativeUnifiedADData.getImgUrl(), t50Var.f4646else);
            t50Var.f4646else.setVisibility(0);
            t50Var.f4651this.setText(nativeUnifiedADData.getTitle());
            t50Var.f4642break.setText(nativeUnifiedADData.getDesc());
        } else if (adPatternType == 3) {
            ((TextView) t50Var.findViewById(R$id.native_3img_title)).setText(nativeUnifiedADData.getTitle());
            ((TextView) t50Var.findViewById(R$id.native_3img_desc)).setText(nativeUnifiedADData.getDesc());
        } else if (adPatternType == 4) {
            t50Var.f4646else.setVisibility(8);
            t50Var.f4651this.setText(nativeUnifiedADData.getTitle());
            t50Var.f4642break.setText(nativeUnifiedADData.getDesc());
        }
        TrAdSdk.loadImageGlide(nativeUnifiedADData.getIconUrl(), t50Var.f4652try);
        m2578if(t50Var.f4648goto, nativeUnifiedADData);
        ArrayList arrayList = new ArrayList();
        arrayList.add(t50Var.f4650new);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(t50Var.f4650new);
        nativeUnifiedADData.bindAdToView(t50Var.getContext(), t50Var.f4647for, null, arrayList, arrayList2);
        ArrayList arrayList3 = new ArrayList();
        if (nativeUnifiedADData.getAdPatternType() != 1 && nativeUnifiedADData.getAdPatternType() != 4) {
            if (nativeUnifiedADData.getAdPatternType() == 3) {
                arrayList3.add(t50Var.findViewById(R$id.img_1));
                arrayList3.add(t50Var.findViewById(R$id.img_2));
                arrayList3.add(t50Var.findViewById(R$id.img_3));
            }
        } else {
            arrayList3.add(t50Var.f4646else);
        }
        if (!arrayList3.isEmpty()) {
            nativeUnifiedADData.bindImageViews(arrayList3, 0);
        } else if (nativeUnifiedADData.getAdPatternType() == 2) {
            t50Var.f4646else.setVisibility(8);
            t50Var.f4643case.setVisibility(0);
            nativeUnifiedADData.bindMediaView(t50Var.f4643case, t50Var.getVideoOption(), new v50());
            nativeUnifiedADData.setVideoMute(true);
        } else if (nativeUnifiedADData.getAdPatternType() != 1 && nativeUnifiedADData.getAdPatternType() != 4) {
            arrayList.add(t50Var.findViewById(R$id.native_3img_ad_container));
        } else {
            arrayList.add(t50Var.f4646else);
        }
        nativeUnifiedADData.setNativeAdEventListener(new u50(t50Var, nativeUnifiedADData));
    }

    private VideoOption getVideoOption() {
        VideoOption.Builder builder = new VideoOption.Builder();
        builder.setAutoPlayPolicy(1);
        builder.setAutoPlayMuted(true);
        builder.setDetailPageMuted(false);
        builder.setNeedCoverImage(true);
        builder.setNeedProgressBar(true);
        builder.setEnableDetailPage(true);
        builder.setEnableUserControl(false);
        return builder.build();
    }

    /* renamed from: if  reason: not valid java name */
    public static void m2578if(TextView textView, NativeUnifiedADData nativeUnifiedADData) {
        String buttonText = nativeUnifiedADData.getButtonText();
        if (nativeUnifiedADData.isWeChatCanvasAd()) {
            if (TextUtils.isEmpty(buttonText)) {
                buttonText = "去微信看看";
            }
            textView.setText(buttonText);
        } else if (!nativeUnifiedADData.isAppAd()) {
            if (TextUtils.isEmpty(buttonText)) {
                buttonText = "查看详情";
            }
            textView.setText(buttonText);
        } else {
            int appStatus = nativeUnifiedADData.getAppStatus();
            if (appStatus == 1) {
                textView.setText("启动");
            } else if (appStatus == 4) {
                textView.setText(nativeUnifiedADData.getProgress() + "%");
            } else if (appStatus == 8) {
                textView.setText("安装");
            } else if (appStatus != 16) {
                if (TextUtils.isEmpty(buttonText)) {
                    buttonText = "立即下载";
                }
                textView.setText(buttonText);
            } else {
                textView.setText("重新下载");
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m2579do(String str) {
        NativeUnifiedADData nativeUnifiedADData = this.f4645do;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.destroy();
            this.f4645do = null;
        }
        new NativeUnifiedAD(getContext(), str, new Cdo()).loadData(1);
    }

    public abstract int getLayoutId();
}
