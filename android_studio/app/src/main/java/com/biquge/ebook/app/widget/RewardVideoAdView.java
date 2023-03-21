package com.biquge.ebook.app.widget;

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
import com.apk.bg;
import com.apk.dg;
import com.apk.hf;
import com.apk.k30;
import com.apk.r0;
import com.apk.ze;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class RewardVideoAdView extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public Cif f8107case;

    /* renamed from: do  reason: not valid java name */
    public TextView f8108do;

    /* renamed from: else  reason: not valid java name */
    public final bg f8109else;

    /* renamed from: for  reason: not valid java name */
    public TextView f8110for;

    /* renamed from: if  reason: not valid java name */
    public TextView f8111if;

    /* renamed from: new  reason: not valid java name */
    public TextView f8112new;

    /* renamed from: try  reason: not valid java name */
    public ImageView f8113try;

    /* renamed from: com.biquge.ebook.app.widget.RewardVideoAdView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.popup_read_reward_ad_tv) {
                Cif cif = RewardVideoAdView.this.f8107case;
                if (cif != null) {
                    cif.mo905do();
                }
            } else if (view.getId() == R.id.popup_read_reward_share_tv) {
                Cif cif2 = RewardVideoAdView.this.f8107case;
                if (cif2 != null) {
                    cif2.mo906if();
                }
            } else if (view.getId() != R.id.popup_read_reward_cancel || RewardVideoAdView.this.f8107case == null) {
            } else {
                int m3174instanceof = ze.m3174instanceof("SP_VIDEO_CLOSE_SLOP_KEY", 5);
                if (m3174instanceof > 0 && dg.f857do.nextInt(10) >= m3174instanceof) {
                    RewardVideoAdView.this.f8107case.mo905do();
                } else {
                    RewardVideoAdView.this.f8107case.onClose();
                }
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.RewardVideoAdView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        void mo905do();

        /* renamed from: if */
        void mo906if();

        void onClose();
    }

    public RewardVideoAdView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8109else = new Cdo();
        LayoutInflater.from(getContext()).inflate(R.layout.pop_read_reward_layout, this);
        this.f8108do = (TextView) findViewById(R.id.popup_read_reward_title_tv);
        this.f8111if = (TextView) findViewById(R.id.popup_read_reward_message_tv);
        this.f8110for = (TextView) findViewById(R.id.popup_read_reward_ad_tv);
        this.f8112new = (TextView) findViewById(R.id.popup_read_reward_share_tv);
        this.f8113try = (ImageView) findViewById(R.id.popup_read_reward_cancel);
        this.f8110for.setOnClickListener(this.f8109else);
        this.f8112new.setOnClickListener(this.f8109else);
        this.f8113try.setOnClickListener(this.f8109else);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3483do(hf hfVar) {
        String str;
        String str2;
        String str3;
        String str4 = null;
        if (hf.BOOK == hfVar) {
            str4 = r0.m2199catch().m1801else();
            str = r0.m2199catch().m1802for();
            str2 = r0.m2199catch().m1804if();
            str3 = r0.m2199catch().m1799case();
        } else if (hf.COMIC == hfVar) {
            str4 = k30.m1427catch().m1801else();
            str = k30.m1427catch().m1802for();
            str2 = k30.m1427catch().m1804if();
            str3 = k30.m1427catch().m1799case();
        } else {
            str = null;
            str2 = null;
            str3 = null;
        }
        if (!TextUtils.isEmpty(str4)) {
            this.f8108do.setText(str4);
        }
        if (!TextUtils.isEmpty(str)) {
            this.f8111if.setText(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            this.f8110for.setText(str2);
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        this.f8112new.setText(str3);
    }

    /* renamed from: if  reason: not valid java name */
    public void m3484if(boolean z) {
        TextView textView = this.f8112new;
        if (textView != null) {
            if (z) {
                if (textView.getVisibility() != 0) {
                    this.f8112new.setVisibility(0);
                }
            } else if (textView.getVisibility() != 8) {
                this.f8112new.setVisibility(8);
            }
        }
    }

    public void setAdBtnTxt(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f8110for.setText(str);
    }

    public void setDes(String str) {
        if (this.f8111if == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f8111if.setText(str);
    }

    public void setOnRewardBtnCallback(Cif cif) {
        this.f8107case = cif;
    }

    public void setShareBtnTxt(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f8112new.setText(str);
    }

    public void setTitle(String str) {
        if (this.f8108do == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f8108do.setText(str);
    }
}
