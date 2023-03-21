package com.biquge.ebook.app.ui.fragment;

import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.c1;
import com.apk.g6;
import com.biquge.ebook.app.bean.ShareTgBean;
import com.biquge.ebook.app.widget.FullyLinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class NewShareDeviceFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public Cif f7542do;
    @BindView(R.id.a03)
    public RecyclerView rc;
    @BindView(R.id.tv_empty)
    public LinearLayout tv_empty;

    /* renamed from: com.biquge.ebook.app.ui.fragment.NewShareDeviceFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<List<ShareTgBean>> {
        public Cdo() {
        }

        @Override // com.apk.c1
        public List<ShareTgBean> doInBackground() {
            return LitePal.findAll(ShareTgBean.class, new long[0]);
        }

        @Override // com.apk.c1
        public void onPostExecute(List<ShareTgBean> list) {
            List<ShareTgBean> list2 = list;
            if (list2 != null && list2.size() != 0) {
                NewShareDeviceFragment.this.tv_empty.setVisibility(8);
            } else {
                NewShareDeviceFragment.this.tv_empty.setVisibility(0);
            }
            NewShareDeviceFragment.this.f7542do.setNewData(list2);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.NewShareDeviceFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseQuickAdapter<ShareTgBean, BaseViewHolder> {
        public Cif() {
            super(R.layout.item_ad_share_list, null);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, ShareTgBean shareTgBean) {
            ShareTgBean shareTgBean2 = shareTgBean;
            StringBuilder m1016super = Cgoto.m1016super("用户");
            m1016super.append(shareTgBean2.getCode());
            baseViewHolder.setText(R.id.item_username_txt, m1016super.toString());
            baseViewHolder.setText(R.id.item_create_time_txt, "注册时间：" + shareTgBean2.getCreateTime());
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.activity_ad_task_list_layout;
    }

    @Override // com.apk.g6
    public void initData() {
        new b1().m141do(new Cdo());
    }

    @Override // com.apk.g6
    public void initView() {
        this.rc.setLayoutManager(new FullyLinearLayoutManager(getSupportActivity()));
        Cif cif = new Cif();
        this.f7542do = cif;
        this.rc.setAdapter(cif);
    }
}
