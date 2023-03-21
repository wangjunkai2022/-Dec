package com.expand.videoplayer.ui.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.eg;
import com.apk.g6;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.SameTjHistory;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.expand.listen.bean.ListenDetail;
import com.expand.videoplayer.bean.VideoDetail;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class SameThHistoryTotalFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public Cdo f9434do;

    /* renamed from: if  reason: not valid java name */
    public String f9435if;
    @BindView(R.id.same_tj_total_rv)
    public RecyclerView mRecyclerView;

    /* renamed from: com.expand.videoplayer.ui.fragment.SameThHistoryTotalFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends BaseQuickAdapter<SameTjHistory, BaseViewHolder> {
        public Cdo() {
            super((int) R.layout.item_total_same_tj_layout);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, SameTjHistory sameTjHistory) {
            SameTjHistory sameTjHistory2 = sameTjHistory;
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_same_tj_icon);
            String type = sameTjHistory2.getType();
            if ("movie".equals(type)) {
                u.m2650import(sameTjHistory2.getImg(), imageView);
            } else if ("tingshu".equals(type)) {
                u.m2646final(sameTjHistory2.getImg(), imageView);
            }
            baseViewHolder.setText(R.id.item_same_tj_name, sameTjHistory2.getName());
            baseViewHolder.setText(R.id.item_same_tj_desc, sameTjHistory2.getDesc());
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_same_tj_history_total;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9435if = arguments.getString("SOURCE_TYPE_KEY");
        }
        Cdo cdo = new Cdo();
        this.f9434do = cdo;
        this.mRecyclerView.setAdapter(cdo);
        List<SameTjHistory> find = LitePal.where("type = ?", this.f9435if).order("readTime desc").find(SameTjHistory.class);
        if (find != null && find.size() > 0) {
            for (SameTjHistory sameTjHistory : find) {
                String protxt = sameTjHistory.getProtxt();
                if (TextUtils.isEmpty(protxt)) {
                    sameTjHistory.setProtxt(ze.q(R.string.same_tj_history_no_read));
                } else {
                    sameTjHistory.setProtxt(ze.r(R.string.same_tj_history_read, protxt));
                }
            }
        }
        Cdo cdo2 = this.f9434do;
        if (cdo2 != null) {
            cdo2.setNewData(find);
        }
        this.f9434do.setOnItemClickListener(this);
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3177new(getSupportActivity(), this.mRecyclerView);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ListenDetail listenDetail;
        SameTjHistory item = this.f9434do.getItem(i);
        if (item != null) {
            if ("movie".equals(this.f9435if)) {
                VideoDetail videoDetail = (VideoDetail) ze.m3189throw(VideoDetail.class, item.getData());
                if (videoDetail != null) {
                    eg.e(getContext(), this.f9435if, eg.m595final(), videoDetail);
                }
            } else if (!"tingshu".equals(this.f9435if) || (listenDetail = (ListenDetail) ze.m3189throw(ListenDetail.class, item.getData())) == null) {
            } else {
                eg.d(getContext(), this.f9435if, eg.m589const(), listenDetail);
            }
        }
    }
}
