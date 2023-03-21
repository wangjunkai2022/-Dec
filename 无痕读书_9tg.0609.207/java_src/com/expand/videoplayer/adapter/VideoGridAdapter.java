package com.expand.videoplayer.adapter;

import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.apk.u;
import com.baidu.tts.client.SpeechSynthesizer;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.expand.videoplayer.bean.VideoDetail;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class VideoGridAdapter extends BaseQuickAdapter<VideoDetail, BaseViewHolder> {
    public VideoGridAdapter() {
        super((int) R.layout.item_home_recommend_content_detail_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NonNull BaseViewHolder baseViewHolder, VideoDetail videoDetail) {
        VideoDetail videoDetail2 = videoDetail;
        u.m2650import(videoDetail2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_home_recommend_c_image));
        baseViewHolder.setVisible(R.id.item_home_recommend_c_type, !TextUtils.isEmpty(videoDetail2.getParentName()));
        baseViewHolder.setText(R.id.item_home_recommend_c_type, videoDetail2.getParentName());
        baseViewHolder.setText(R.id.item_home_recommend_c_score, videoDetail2.getScore());
        if (TextUtils.isEmpty(videoDetail2.getJishu()) || SpeechSynthesizer.REQUEST_DNS_OFF.equals(videoDetail2.getJishu())) {
            baseViewHolder.setVisible(R.id.item_home_recommend_number, false);
        }
        baseViewHolder.setText(R.id.item_home_recommend_number, videoDetail2.getJishu());
        baseViewHolder.setText(R.id.item_home_recommend_c_name, videoDetail2.getName());
    }
}
