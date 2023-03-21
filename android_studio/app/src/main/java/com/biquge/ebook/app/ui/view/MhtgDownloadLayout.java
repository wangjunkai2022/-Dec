package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.apk.bg;
import com.apk.kf;
import com.apk.ze;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MhtgDownloadLayout extends FrameLayout {
    @BindView(R.id.cartoon_tg_cacel_btn)
    public TextView cancelBtn;
    @BindView(R.id.cartoon_close_layout)
    public LinearLayout closeView;
    @BindView(R.id.cartoon_tg_desc_tv)
    public TextView descTv;

    /* renamed from: do  reason: not valid java name */
    public String f7706do;

    /* renamed from: for  reason: not valid java name */
    public final bg f7707for;

    /* renamed from: if  reason: not valid java name */
    public String f7708if;
    @BindView(R.id.cartoon_tg_download_btn)
    public TextView installBtn;

    /* renamed from: com.biquge.ebook.app.ui.view.MhtgDownloadLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.cartoon_tg_download_btn) {
                if (ze.G(MhtgDownloadLayout.this.f7706do)) {
                    ze.g0(MhtgDownloadLayout.this.getContext(), MhtgDownloadLayout.this.f7706do);
                } else if (TextUtils.isEmpty(MhtgDownloadLayout.this.f7708if)) {
                } else {
                    kf.m1482for(MhtgDownloadLayout.this.getContext(), MhtgDownloadLayout.this.f7708if, "App");
                }
            } else if (view.getId() == R.id.cartoon_tg_cacel_btn) {
                MhtgDownloadLayout.this.setVisibility(8);
            }
        }
    }

    public MhtgDownloadLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7707for = new Cdo();
        LayoutInflater.from(getContext()).inflate(R.layout.view_mhtg_download_layout, this);
        ButterKnife.bind(this);
        setOnClickListener(null);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3407do() {
        try {
            if (ze.G(this.f7706do)) {
                this.installBtn.setText(getResources().getString(R.string.mgtg_two_btn_open_txt));
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m3408if(boolean z, boolean z2, int i, String str, String str2, String str3, String str4) {
        this.f7706do = str;
        this.f7708if = str2;
        if (z) {
            try {
                this.closeView.setVisibility(8);
            } catch (Exception unused) {
                return;
            }
        }
        this.installBtn.setOnClickListener(this.f7707for);
        this.cancelBtn.setOnClickListener(this.f7707for);
        if (!z2) {
            str3 = str4;
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = ze.q(R.string.mgtg_two_msg);
        }
        TextView textView = this.descTv;
        textView.setText(Html.fromHtml(str3.replace("{days}", Math.max(i, 0) + "")));
        if (z2) {
            this.cancelBtn.setVisibility(8);
        }
        if (ze.G(str)) {
            this.installBtn.setText(getResources().getString(R.string.mgtg_two_btn_open_txt));
        }
    }
}
