package com.biquge.ebook.app.adapter;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.b1;
import com.apk.c1;
import com.apk.eg;
import com.apk.hf;
import com.apk.lq0;
import com.apk.mu;
import com.apk.n2;
import com.apk.tr0;
import com.apk.v3;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.WantBookBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WantProgressAdapter extends BaseQuickAdapter<WantBookBean.WantProgressBean, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final hf f6382do;

    /* renamed from: com.biquge.ebook.app.adapter.WantProgressAdapter$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemChildClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ hf f6383do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ Activity f6385if;

        /* renamed from: com.biquge.ebook.app.adapter.WantProgressAdapter$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0087do extends c1<Object> {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ boolean f6386do;

            /* renamed from: if  reason: not valid java name */
            public final /* synthetic */ WantBookBean.WantProgressBean f6388if;

            public C0087do(boolean z, WantBookBean.WantProgressBean wantProgressBean) {
                this.f6386do = z;
                this.f6388if = wantProgressBean;
            }

            @Override // com.apk.c1
            public Object doInBackground() {
                if (this.f6386do) {
                    Book m2761throw = v3.m2761throw(this.f6388if.getBookId(), true);
                    if (m2761throw != null) {
                        n2.u(m2761throw, true);
                        ze.V();
                    }
                } else {
                    ComicBean m3134super = z2.m3134super(this.f6388if.getBookId(), true);
                    if (m3134super != null) {
                        mu.w(m3134super, true);
                        ze.V();
                    }
                }
                return super.doInBackground();
            }

            @Override // com.apk.c1
            public void onPostExecute(Object obj) {
                super.onPostExecute(obj);
                WantProgressAdapter.this.notifyDataSetChanged();
            }
        }

        public Cdo(hf hfVar, Activity activity) {
            this.f6383do = hfVar;
            this.f6385if = activity;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            WantBookBean.WantProgressBean item = WantProgressAdapter.this.getItem(i);
            if (item == null || n2.f(item.getBookId())) {
                return;
            }
            boolean z = this.f6383do == hf.BOOK;
            if (z) {
                if (n2.m1844try(this.f6385if, false)) {
                    return;
                }
            } else if (mu.m1756case(this.f6385if, false)) {
                return;
            }
            b1 b1Var = new b1();
            b1Var.m143if(this.f6385if);
            b1Var.m141do(new C0087do(z, item));
        }
    }

    /* renamed from: com.biquge.ebook.app.adapter.WantProgressAdapter$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.OnItemClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ hf f6389do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ Activity f6391if;

        public Cif(hf hfVar, Activity activity) {
            this.f6389do = hfVar;
            this.f6391if = activity;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            WantBookBean.WantProgressBean item = WantProgressAdapter.this.getItem(i);
            if (item == null || item.getThreshold() != 100) {
                return;
            }
            if (this.f6389do == hf.BOOK) {
                BookDetailActivity.o(this.f6391if, n2.m1811catch(item.getBookId(), item.getBookName(), ""));
            } else {
                ComicDetailActivity.n(this.f6391if, mu.m1765final(item.getBookId(), "", ""));
            }
        }
    }

    public WantProgressAdapter(Activity activity, hf hfVar) {
        super(R.layout.item_want_novel_progress_layout, null);
        this.f6382do = hfVar;
        setOnItemChildClickListener(new Cdo(hfVar, activity));
        setOnItemClickListener(new Cif(hfVar, activity));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NonNull BaseViewHolder baseViewHolder, WantBookBean.WantProgressBean wantProgressBean) {
        boolean z;
        WantBookBean.WantProgressBean wantProgressBean2 = wantProgressBean;
        int isPass = wantProgressBean2.getIsPass();
        String str = isPass == -1 ? "不处理的书籍" : isPass == 0 ? "未审核的书籍" : "已审核的书籍";
        BaseViewHolder text = baseViewHolder.setText(R.id.item_name_tv, wantProgressBean2.getBookName()).setText(R.id.item_author_tv, wantProgressBean2.getAuthor());
        text.setText(R.id.item_threshold_tv, wantProgressBean2.getThreshold() + "%").setText(R.id.item_ispass_tv, str);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_choose);
        if (wantProgressBean2.getThreshold() == 100) {
            baseViewHolder.setVisible(R.id.item_layout_getin, false);
            if (this.f6382do == hf.BOOK) {
                z = n2.f(wantProgressBean2.getBookId());
            } else {
                z = mu.m1766finally(wantProgressBean2.getBookId()) != null;
            }
            if (z) {
                textView.setText(ze.q(R.string.add_bookshlef_txt));
                textView.setTextColor(ze.p(R.color.color_333333));
                textView.setBackgroundResource(0);
                textView.setPadding(0, 0, 0, 0);
            } else {
                textView.setText(ze.q(R.string.txt_add_bookshlef_txt));
                textView.setTextColor(lq0.m1660do(this.mContext, tr0.m2617do(R.color.main_tab_txt_color)));
                textView.setBackgroundResource(R.drawable.shape_indicator_tab_stroke_bt);
                int m587catch = eg.m587catch(10.0f);
                int m587catch2 = eg.m587catch(20.0f);
                textView.setPadding(m587catch2, m587catch, m587catch2, m587catch);
            }
            textView.setVisibility(0);
        } else {
            baseViewHolder.setVisible(R.id.item_layout_getin, true);
            textView.setVisibility(8);
        }
        baseViewHolder.addOnClickListener(R.id.tv_choose);
    }
}
