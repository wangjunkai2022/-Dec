package com.expand;

import android.content.Context;
import android.text.Html;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Ccontinue;
import com.apk.bg;
import com.apk.eg;
import com.apk.kf;
import com.apk.mu;
import com.apk.n2;
import com.apk.tt;
import com.apk.vt;
import com.apk.ze;
import com.biquge.ebook.app.bean.CommendMediaListNameBean;
import com.biquge.ebook.app.bean.SameCommendBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.CenterPopupView;
import com.manhua.ui.activity.ComicDetailActivity;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CommendMediaDialog extends CenterPopupView {

    /* renamed from: do  reason: not valid java name */
    public RecyclerView f9391do;

    /* renamed from: for  reason: not valid java name */
    public final List<CommendMediaListNameBean> f9392for;

    /* renamed from: if  reason: not valid java name */
    public Cif f9393if;

    /* renamed from: new  reason: not valid java name */
    public final bg f9394new;

    /* renamed from: com.expand.CommendMediaDialog$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.same_tj_close_btn) {
                CommendMediaDialog.this.dismiss();
            } else if (view.getId() == R.id.same_tj_detail_btn || view.getId() == R.id.same_tj_source_type_layout) {
                CommendMediaDialog.m3589if(CommendMediaDialog.this.getContext(), (CommendMediaListNameBean) view.getTag());
            }
        }
    }

    /* renamed from: com.expand.CommendMediaDialog$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseQuickAdapter<CommendMediaListNameBean, BaseViewHolder> {
        public Cif(@Nullable List<CommendMediaListNameBean> list) {
            super(R.layout.item_commend_same_jh_layout, list);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, CommendMediaListNameBean commendMediaListNameBean) {
            CommendMediaListNameBean commendMediaListNameBean2 = commendMediaListNameBean;
            baseViewHolder.setText(R.id.item_jhtj_desc_tv, Html.fromHtml(commendMediaListNameBean2.getDesc().replace("{name}", commendMediaListNameBean2.getBookName()).replace("{author}", commendMediaListNameBean2.getAuthor()).replace("{score}", commendMediaListNameBean2.getScore())));
        }
    }

    public CommendMediaDialog(@NonNull Context context, List<CommendMediaListNameBean> list) {
        super(context);
        this.f9394new = new Cdo();
        this.f9392for = list;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3589if(Context context, CommendMediaListNameBean commendMediaListNameBean) {
        if (commendMediaListNameBean != null) {
            String sourceType = commendMediaListNameBean.getSourceType();
            if ("cartoon".equals(sourceType)) {
                ComicDetailActivity.n(context, mu.m1765final(commendMediaListNameBean.getId(), commendMediaListNameBean.getBookName(), ""));
            } else if ("novel".equals(sourceType)) {
                BookDetailActivity.o(context, n2.m1811catch(commendMediaListNameBean.getId(), commendMediaListNameBean.getBookName(), ""));
            } else if ("apk".equals(sourceType)) {
                kf.m1482for(context, commendMediaListNameBean.getBookName(), commendMediaListNameBean.getUrl());
            }
        }
    }

    private void setCommendMediaBean(CommendMediaListNameBean commendMediaListNameBean) {
        int i;
        String replace = commendMediaListNameBean.getDesc().replace("{name}", commendMediaListNameBean.getBookName()).replace("{author}", commendMediaListNameBean.getAuthor());
        ((TextView) findViewById(R.id.item_jhtj_desc_tv)).setText(Html.fromHtml(replace.replace("{score}", commendMediaListNameBean.getScore() + "")));
        ImageView imageView = (ImageView) findViewById(R.id.same_tj_source_type_iv);
        String sourceType = commendMediaListNameBean.getSourceType();
        if ("movie".equals(sourceType)) {
            i = R.drawable.jhtj_video;
        } else if ("tingshu".equals(sourceType)) {
            i = R.drawable.jhtj_listen;
        } else if ("cartoon".equals(sourceType)) {
            i = R.drawable.jhtj_cartoon;
        } else {
            i = "novel".equals(sourceType) ? R.drawable.jhtj_novel : 0;
        }
        imageView.setImageResource(i);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.same_tj_source_type_layout);
        frameLayout.setTag(commendMediaListNameBean);
        frameLayout.setOnClickListener(this.f9394new);
        TextView textView = (TextView) findViewById(R.id.same_tj_detail_btn);
        textView.setTag(commendMediaListNameBean);
        textView.setOnClickListener(this.f9394new);
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.app_commend_media_layout;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        return (int) (eg.m614switch() * 0.9f);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        Cif cif;
        List<CommendMediaListNameBean> list;
        super.onCreate();
        SameCommendBean sameCommendBean = Ccontinue.m379if().f712else;
        if (this.f9392for != null && sameCommendBean != null && sameCommendBean.getGet_data_size() > this.f9392for.size()) {
            sameCommendBean.setGet_data_size(this.f9392for.size());
        }
        if (sameCommendBean != null && sameCommendBean.getGet_data_size() > 1) {
            RecyclerView recyclerView = (RecyclerView) findViewById(R.id.same_tj_list_rv);
            this.f9391do = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            this.f9391do.setHasFixedSize(true);
            this.f9391do.setMinimumHeight(this.f9392for.size() * eg.m587catch(60.0f));
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.f9392for.size(); i++) {
                arrayList.add(null);
            }
            Cif cif2 = new Cif(arrayList);
            this.f9393if = cif2;
            this.f9391do.setAdapter(cif2);
            this.f9393if.setOnItemClickListener(new vt(this));
            findViewById(R.id.same_tj_style_one_layout).setVisibility(8);
            findViewById(R.id.same_tj_style_two_layout).setVisibility(0);
        } else {
            int m3174instanceof = ze.m3174instanceof("SP_SAME_COMMEND_INDEX_KEY", 0);
            List<CommendMediaListNameBean> list2 = this.f9392for;
            CommendMediaListNameBean commendMediaListNameBean = list2.get(m3174instanceof % list2.size());
            if (commendMediaListNameBean != null) {
                setCommendMediaBean(commendMediaListNameBean);
            }
            tt.f4763do.putInt("SP_SAME_COMMEND_INDEX_KEY", m3174instanceof + 1);
            findViewById(R.id.same_tj_style_one_layout).setVisibility(0);
            findViewById(R.id.same_tj_style_two_layout).setVisibility(8);
        }
        findViewById(R.id.same_tj_close_btn).setOnClickListener(this.f9394new);
        if (this.f9391do == null || (cif = this.f9393if) == null || (list = this.f9392for) == null) {
            return;
        }
        cif.setNewData(list);
    }
}
