package com.biquge.ebook.app.ui.fragment;

import android.widget.TextView;
import butterknife.BindView;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.g6;
import com.apk.w0;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ShareLogFragment extends g6 {
    @BindView(R.id.share_log_device_tv)
    public TextView mDeviceTv;
    @BindView(R.id.share_log_feed_ad_tv)
    public TextView mFeedAdTv;
    @BindView(R.id.share_log_value_tv)
    public TextView mValueTv;

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_share_log;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        StringBuilder sb = new StringBuilder();
        StringBuilder m1016super = Cgoto.m1016super("当前设备号：");
        m1016super.append(eg.m613super());
        sb.append(m1016super.toString());
        sb.append("\n");
        sb.append("当前邀请码：" + w0.m2869class());
        sb.append("\n");
        this.mDeviceTv.setText(sb.toString());
    }
}
