package com.manhua.ui.view;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.apk.kf;
import com.lxj.xpopup.core.CenterPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class DownloadCarttonPopupView extends CenterPopupView implements View.OnClickListener {
    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.download_carrton_apk_layout;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.a8t) {
            dismiss();
        } else if (view.getId() == R.id.a8v) {
            if (!TextUtils.isEmpty(null)) {
                kf.m1482for(getContext(), null, "漫画");
            }
            dismiss();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        TextView textView = (TextView) findViewById(R.id.mhtg_msg_tv);
        findViewById(R.id.a8t).setOnClickListener(this);
        findViewById(R.id.a8v).setOnClickListener(this);
    }
}
