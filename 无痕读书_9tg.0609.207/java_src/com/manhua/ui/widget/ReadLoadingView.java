package com.manhua.ui.widget;

import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.apk.bg;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ReadLoadingView extends FrameLayout {
    @BindView(R.id.id_tv_loadingmsg)
    public TextView mLogingTxt;
    @BindView(R.id.ll_error_refresh)
    public LinearLayout mReloadLayout;

    public void setBgColor(int i) {
        setBackgroundColor(i);
    }

    public void setReloadListener(bg bgVar) {
    }

    public void setText(String str) {
        this.mLogingTxt.setText(str);
    }
}
