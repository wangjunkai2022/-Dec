package com.biquge.ebook.app.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.bg;
import com.apk.lv;
import com.apk.w0;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class NewShareEntranceView extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public TextView f8087do;

    /* renamed from: for  reason: not valid java name */
    public TextView f8088for;

    /* renamed from: if  reason: not valid java name */
    public TextView f8089if;

    /* renamed from: new  reason: not valid java name */
    public VideoFreeAdDialog f8090new;

    /* renamed from: try  reason: not valid java name */
    public final bg f8091try;

    /* renamed from: com.biquge.ebook.app.widget.NewShareEntranceView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.new_share_free_video_btn) {
                NewShareEntranceView.this.f8090new = new VideoFreeAdDialog(NewShareEntranceView.this.getContext());
                NewShareEntranceView.this.getContext();
                lv lvVar = new lv();
                lvVar.f2924for = Boolean.FALSE;
                VideoFreeAdDialog videoFreeAdDialog = NewShareEntranceView.this.f8090new;
                if (videoFreeAdDialog instanceof CenterPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (videoFreeAdDialog instanceof BottomPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (videoFreeAdDialog instanceof AttachPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (videoFreeAdDialog instanceof ImageViewerPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (videoFreeAdDialog instanceof PositionPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                }
                videoFreeAdDialog.popupInfo = lvVar;
                videoFreeAdDialog.show();
            } else if (view.getId() == R.id.new_share_share_btn) {
                FragmentManagerActivity.i(NewShareEntranceView.this.getContext(), ze.q(R.string.new_share_lb_title), "9");
            }
        }
    }

    public NewShareEntranceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8091try = new Cdo();
        LayoutInflater.from(getContext()).inflate(R.layout.new_local_share_entrance_layout, this);
        this.f8087do = (TextView) findViewById(R.id.new_share_info_tg);
        this.f8089if = (TextView) findViewById(R.id.new_share_end_time);
        TextView textView = (TextView) findViewById(R.id.new_share_free_video_btn);
        this.f8088for = textView;
        textView.setOnClickListener(this.f8091try);
        NewShareDisBean m382for = Ccontinue.m379if().m382for();
        if (m382for != null && m382for.getFir_spgg() > 0 && !Cfinally.m800if() && Cfinally.m797else().f1346do) {
            this.f8088for.setVisibility(0);
        }
        findViewById(R.id.new_share_share_btn).setOnClickListener(this.f8091try);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3479do() {
        TextView textView = this.f8087do;
        if (textView != null) {
            textView.setText(ze.r(R.string.new_share_link_users, Integer.valueOf(w0.m2868catch())));
        }
        if (this.f8089if != null) {
            String m2879goto = w0.m2879goto();
            if (TextUtils.isEmpty(m2879goto)) {
                return;
            }
            this.f8089if.setText(ze.r(R.string.new_share_from_ad_endtime, m2879goto));
        }
    }
}
