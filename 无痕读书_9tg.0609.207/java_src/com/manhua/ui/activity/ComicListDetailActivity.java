package com.manhua.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cfinally;
import com.apk.bg;
import com.apk.f6;
import com.apk.hf;
import com.apk.j3;
import com.apk.r5;
import com.apk.u;
import com.apk.w;
import com.apk.w0;
import com.apk.x4;
import com.apk.xw;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.ui.view.TopCommentLayout;
import com.biquge.ebook.app.widget.ExpandableTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicInfoEntity;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicListDetailActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: break  reason: not valid java name */
    public RecyclerView f9731break;

    /* renamed from: case  reason: not valid java name */
    public TextView f9732case;

    /* renamed from: catch  reason: not valid java name */
    public ComicRankListAdapter f9733catch;

    /* renamed from: class  reason: not valid java name */
    public AdViewBangDan f9734class;

    /* renamed from: const  reason: not valid java name */
    public AdViewRectangle f9735const;

    /* renamed from: do  reason: not valid java name */
    public String f9736do;

    /* renamed from: else  reason: not valid java name */
    public ExpandableTextView f9737else;

    /* renamed from: final  reason: not valid java name */
    public PublicLoadingView f9738final;

    /* renamed from: for  reason: not valid java name */
    public ImageView f9739for;

    /* renamed from: goto  reason: not valid java name */
    public TopCommentLayout f9740goto;

    /* renamed from: if  reason: not valid java name */
    public String f9741if;

    /* renamed from: new  reason: not valid java name */
    public TextView f9742new;

    /* renamed from: super  reason: not valid java name */
    public ComicInfoEntity f9743super;

    /* renamed from: this  reason: not valid java name */
    public z2 f9744this;

    /* renamed from: try  reason: not valid java name */
    public TextView f9746try;

    /* renamed from: throw  reason: not valid java name */
    public final r5 f9745throw = new Cif();

    /* renamed from: while  reason: not valid java name */
    public final bg f9747while = new Cfor();

    /* renamed from: com.manhua.ui.activity.ComicListDetailActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PublicLoadingView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            ComicListDetailActivity.this.j();
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicListDetailActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends bg {
        public Cfor() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            switch (view.getId()) {
                case R.id.act_booklist_collect_bt /* 2131296307 */:
                    try {
                        if (ComicListDetailActivity.this.f9744this == null || ComicListDetailActivity.this.f9743super == null || TextUtils.isEmpty(ComicListDetailActivity.this.f9736do)) {
                            return;
                        }
                        ComicListDetailActivity.this.f9744this.m3139const(true, ComicListDetailActivity.this.f9736do, ComicListDetailActivity.this.f9743super, 0);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case R.id.act_booklist_comment_bt /* 2131296308 */:
                    try {
                        if (TextUtils.isEmpty(ComicListDetailActivity.this.f9736do)) {
                            return;
                        }
                        ze.s(ComicListDetailActivity.this, ComicListDetailActivity.this.f9736do, ComicListDetailActivity.this.f9741if, false, false);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                case R.id.act_booklist_error_bt /* 2131296309 */:
                    try {
                        if (TextUtils.isEmpty(ComicListDetailActivity.this.f9741if)) {
                            return;
                        }
                        w0.m2874else(ComicListDetailActivity.this, hf.COMIC, ze.r(R.string.problem_feedback_booklist_txt, ComicListDetailActivity.this.f9741if));
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                case R.id.act_booklist_recommend_bt /* 2131296310 */:
                    try {
                        if (ComicListDetailActivity.this.f9744this == null || TextUtils.isEmpty(ComicListDetailActivity.this.f9736do)) {
                            return;
                        }
                        ComicListDetailActivity.this.f9744this.m3138class(ComicListDetailActivity.this.f9736do);
                        return;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return;
                    }
                default:
                    return;
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicListDetailActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends r5 {

        /* renamed from: com.manhua.ui.activity.ComicListDetailActivity$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ComicListDetailActivity.this.f9738final.m3666for();
            }
        }

        public Cif() {
        }

        @Override // com.apk.r5
        /* renamed from: try */
        public void mo2243try(ComicInfoEntity comicInfoEntity) {
            if (comicInfoEntity != null) {
                ComicListDetailActivity comicListDetailActivity = ComicListDetailActivity.this;
                comicListDetailActivity.f9743super = comicInfoEntity;
                try {
                    comicListDetailActivity.f9741if = comicInfoEntity.getTitle();
                    u.m2650import(comicInfoEntity.getCover(), ComicListDetailActivity.this.f9739for);
                    ComicListDetailActivity.this.f9742new.setText(comicInfoEntity.getTitle());
                    ComicListDetailActivity.this.f9746try.setText(ComicListDetailActivity.this.getString(R.string.element_book_count_txt, new Object[]{String.valueOf(comicInfoEntity.getBookCount())}));
                    ComicListDetailActivity.this.f9732case.setText(comicInfoEntity.getAddTime());
                    ComicListDetailActivity.this.f9737else.setText(comicInfoEntity.getDescription());
                    List<ComicBean> books = comicInfoEntity.getBooks();
                    if (books.size() > 0) {
                        ComicListDetailActivity.this.f9733catch.setNewData(books);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ComicListDetailActivity.this.postDelayed(new Cdo(), 200L);
                return;
            }
            ComicListDetailActivity.this.f9738final.setError(null);
        }
    }

    public static void k(Context context, String str, String str2) {
        Intent intent = new Intent(context, ComicListDetailActivity.class);
        intent.putExtra("LIST_ID", str);
        intent.putExtra("LIST_NAME", str2);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_activity_list_detail;
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        Intent intent = getIntent();
        this.f9736do = intent.getStringExtra("LIST_ID");
        this.f9741if = intent.getStringExtra("LIST_NAME");
    }

    @Override // com.apk.f6
    public void initData() {
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(this, null, null, false, true);
        this.f9733catch = comicRankListAdapter;
        this.f9731break.setAdapter(comicRankListAdapter);
        View inflate = View.inflate(this, R.layout.comic_include_list_detail_header, null);
        this.f9733catch.addHeaderView(inflate);
        this.f9739for = (ImageView) inflate.findViewById(R.id.act_element_detail_book_image);
        this.f9742new = (TextView) inflate.findViewById(R.id.act_element_detail_book_name_txt);
        this.f9746try = (TextView) inflate.findViewById(R.id.act_element_detail_book_author_txt);
        this.f9732case = (TextView) inflate.findViewById(R.id.act_element_detail_book_date_txt);
        this.f9737else = (ExpandableTextView) inflate.findViewById(R.id.book_detail_intro_text);
        this.f9740goto = (TopCommentLayout) inflate.findViewById(R.id.app_top_commentview);
        inflate.findViewById(R.id.act_booklist_recommend_bt).setOnClickListener(this.f9747while);
        inflate.findViewById(R.id.act_booklist_collect_bt).setOnClickListener(this.f9747while);
        inflate.findViewById(R.id.act_booklist_error_bt).setOnClickListener(this.f9747while);
        inflate.findViewById(R.id.act_booklist_comment_bt).setOnClickListener(this.f9747while);
        this.f9734class = (AdViewBangDan) inflate.findViewById(R.id.adview_bangdan);
        this.f9735const = (AdViewRectangle) inflate.findViewById(R.id.adview_rectangle);
        this.f9744this = new z2(this, this.f9745throw);
        j();
        this.f9733catch.setOnItemClickListener(this);
        try {
            if (w0.m2896throws() && !TextUtils.isEmpty(this.f9736do) && !TextUtils.isEmpty(this.f9741if) && this.f9740goto != null) {
                this.f9740goto.m3422do(this, false, false, this.f9736do, this.f9741if);
                this.f9740goto.setVisibility(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (Cfinally.m797else().m829volatile()) {
                findViewById(R.id.adview_bangdan_lineview).setVisibility(0);
                this.f9734class.m3268new(this, "sddetaillist");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (Cfinally.m797else().m821strictfp()) {
                findViewById(R.id.adview_rectangle_lineview).setVisibility(0);
                this.f9735const.m3274for(this, null, "rectsddetail");
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_element_detail_actionbar, R.string.element_detail_txt);
        PublicLoadingView publicLoadingView = (PublicLoadingView) findViewById(R.id.public_loadingview);
        this.f9738final = publicLoadingView;
        publicLoadingView.setReloadListener(new Cdo());
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_list);
        this.f9731break = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.f9731break.setHasFixedSize(true);
        ze.m3165else(this.f9731break);
        ze.m3177new(this, this.f9731break);
    }

    public final void j() {
        z2 z2Var;
        if (TextUtils.isEmpty(this.f9736do) || (z2Var = this.f9744this) == null) {
            return;
        }
        String str = this.f9736do;
        if (z2Var == null) {
            throw null;
        }
        x4.m2957import(w.m2838case(str), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new j3(z2Var, "SP_HOST_SHUC_MH_KEY"));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ComicRankListAdapter comicRankListAdapter = this.f9733catch;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3616do();
        }
        AdViewBangDan adViewBangDan = this.f9734class;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
            this.f9734class = null;
        }
        AdViewRectangle adViewRectangle = this.f9735const;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
            this.f9735const = null;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicBean comicBean = (ComicBean) this.f9733catch.getItem(i);
        if (comicBean == null || comicBean.getItemType() != 1) {
            return;
        }
        ComicDetailActivity.n(this, comicBean);
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ComicRankListAdapter comicRankListAdapter = this.f9733catch;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3618if();
        }
        AdViewBangDan adViewBangDan = this.f9734class;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = true;
        }
        AdViewRectangle adViewRectangle = this.f9735const;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = true;
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ComicRankListAdapter comicRankListAdapter = this.f9733catch;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3617for();
        }
        AdViewBangDan adViewBangDan = this.f9734class;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = false;
        }
        AdViewRectangle adViewRectangle = this.f9735const;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = false;
        }
    }
}
