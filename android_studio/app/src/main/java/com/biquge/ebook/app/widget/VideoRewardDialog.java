package com.biquge.ebook.app.widget;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.bg;
import com.apk.ze;
import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.lxj.xpopup.core.CenterPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class VideoRewardDialog extends CenterPopupView {

    /* renamed from: do  reason: not valid java name */
    public TextView f8284do;

    /* renamed from: for  reason: not valid java name */
    public final boolean f8285for;

    /* renamed from: if  reason: not valid java name */
    public final String f8286if;

    /* renamed from: new  reason: not valid java name */
    public final Cif f8287new;

    /* renamed from: try  reason: not valid java name */
    public final bg f8288try;

    /* renamed from: com.biquge.ebook.app.widget.VideoRewardDialog$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.share_task) {
                Cif cif = VideoRewardDialog.this.f8287new;
                if (cif != null) {
                    cif.mo2376do();
                }
            } else if (view.getId() == R.id.share_to_share) {
                FragmentManagerActivity.i(VideoRewardDialog.this.getContext(), ze.q(R.string.new_share_lb_title), "9");
            }
            VideoRewardDialog.this.dismiss();
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.VideoRewardDialog$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        void mo2376do();
    }

    public VideoRewardDialog(@NonNull Context context, String str, boolean z, Cif cif) {
        super(context);
        this.f8288try = new Cdo();
        this.f8286if = str;
        this.f8285for = z;
        this.f8287new = cif;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.dialog_ad_free_show;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f8284do = (TextView) findViewById(R.id.free_ad_tips);
        findViewById(R.id.share_task).setOnClickListener(this.f8288try);
        findViewById(R.id.share_to_share).setOnClickListener(this.f8288try);
        findViewById(R.id.share_cancel).setOnClickListener(this.f8288try);
        findViewById(R.id.share_to_share).setVisibility(this.f8285for ? 0 : 8);
        this.f8284do.setText(this.f8286if);
    }
}
