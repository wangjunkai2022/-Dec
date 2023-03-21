package com.biquge.ebook.app.widget;

import android.content.Context;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.bg;
import com.apk.ze;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.ui.activity.RewardVideoActivity;
import com.lxj.xpopup.core.CenterPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class VideoFreeAdDialog extends CenterPopupView {

    /* renamed from: do  reason: not valid java name */
    public TextView f8279do;

    /* renamed from: for  reason: not valid java name */
    public TextView f8280for;

    /* renamed from: if  reason: not valid java name */
    public TextView f8281if;

    /* renamed from: new  reason: not valid java name */
    public final bg f8282new;

    /* renamed from: com.biquge.ebook.app.widget.VideoFreeAdDialog$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.share_task) {
                RewardVideoActivity.r(VideoFreeAdDialog.this.getContext(), 13);
            } else if (view.getId() == R.id.share_to_share || view.getId() == R.id.share_cancel) {
                VideoFreeAdDialog.this.dismiss();
            }
        }
    }

    public VideoFreeAdDialog(@NonNull Context context) {
        super(context);
        this.f8282new = new Cdo();
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.dialog_ad_free_show;
    }

    /* renamed from: if  reason: not valid java name */
    public void m3529if() {
        NewShareDisBean m382for = Ccontinue.m379if().m382for();
        if (m382for == null || this.f8279do == null) {
            return;
        }
        if (Cfinally.m800if()) {
            TextView textView = this.f8279do;
            String over_tips = m382for.getOver_tips();
            textView.setText(Html.fromHtml(over_tips.replace("{next_noad_days}", m382for.getNext_noad_days() + "")));
            this.f8281if.setVisibility(8);
            this.f8280for.setText(ze.q(R.string.main_confirm));
        } else if (Cfinally.m792break() == 0) {
            this.f8279do.setText(Html.fromHtml(m382for.getFir_tips().replace("{fir_spgg}", m382for.getFir_spgg() + "")));
        } else {
            this.f8279do.setText(Html.fromHtml(m382for.getAfter_fir_tips().replace("{result}", (Cfinally.m794catch() - Cfinally.m792break()) + "")));
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        TextView textView = (TextView) findViewById(R.id.free_ad_tips);
        this.f8279do = textView;
        textView.setTextSize(2, 15.0f);
        TextView textView2 = (TextView) findViewById(R.id.share_task);
        this.f8281if = textView2;
        textView2.setText(ze.q(R.string.share_free_ad_btn_txt));
        this.f8281if.setOnClickListener(this.f8282new);
        TextView textView3 = (TextView) findViewById(R.id.share_to_share);
        this.f8280for = textView3;
        textView3.setText(ze.q(R.string.video_give_up_watch_ad));
        this.f8280for.setVisibility(0);
        this.f8280for.setOnClickListener(this.f8282new);
        findViewById(R.id.share_cancel).setOnClickListener(this.f8282new);
        m3529if();
    }
}
