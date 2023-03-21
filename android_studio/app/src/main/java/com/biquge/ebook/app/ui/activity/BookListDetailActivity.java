package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.bg;
import com.apk.f6;
import com.apk.hf;
import com.apk.u;
import com.apk.u5;
import com.apk.v;
import com.apk.v0;
import com.apk.v3;
import com.apk.w;
import com.apk.w0;
import com.apk.w3;
import com.apk.x4;
import com.apk.xw;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.adapter.NovelRankListAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.BookInfoEntity;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.biquge.ebook.app.ui.view.TopCommentLayout;
import com.biquge.ebook.app.widget.ExpandableTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookListDetailActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: break  reason: not valid java name */
    public ExpandableTextView f6486break;

    /* renamed from: case  reason: not valid java name */
    public ImageView f6487case;

    /* renamed from: catch  reason: not valid java name */
    public String f6488catch;

    /* renamed from: class  reason: not valid java name */
    public String f6489class;

    /* renamed from: const  reason: not valid java name */
    public BookInfoEntity f6490const;

    /* renamed from: do  reason: not valid java name */
    public TopCommentLayout f6491do;

    /* renamed from: else  reason: not valid java name */
    public TextView f6492else;

    /* renamed from: for  reason: not valid java name */
    public NovelRankListAdapter f6494for;

    /* renamed from: goto  reason: not valid java name */
    public TextView f6495goto;

    /* renamed from: if  reason: not valid java name */
    public v3 f6496if;
    @BindView(R.id.public_loadingview)
    public PublicLoadingView mPublicLoadingView;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public AdViewBangDan f6497new;

    /* renamed from: this  reason: not valid java name */
    public TextView f6499this;

    /* renamed from: try  reason: not valid java name */
    public AdViewRectangle f6500try;

    /* renamed from: final  reason: not valid java name */
    public final u5 f6493final = new Cdo();

    /* renamed from: super  reason: not valid java name */
    public final bg f6498super = new Cif();

    /* renamed from: com.biquge.ebook.app.ui.activity.BookListDetailActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: case */
        public void mo2670case(BookInfoEntity bookInfoEntity) {
            try {
                if (bookInfoEntity != null) {
                    BookListDetailActivity.this.f6490const = bookInfoEntity;
                    List<Book> bookList = bookInfoEntity.getBookList();
                    if (bookList.size() > 0) {
                        BookListDetailActivity.this.f6494for.setNewData(bookList);
                    }
                    BookListDetailActivity.this.mPublicLoadingView.m3666for();
                    BookListDetailActivity.this.f6489class = bookInfoEntity.getTitle();
                    u.m2653public(bookInfoEntity.getCover(), BookListDetailActivity.this.f6487case);
                    BookListDetailActivity.this.f6492else.setText(bookInfoEntity.getTitle());
                    TextView textView = BookListDetailActivity.this.f6495goto;
                    BookListDetailActivity bookListDetailActivity = BookListDetailActivity.this;
                    textView.setText(bookListDetailActivity.getString(R.string.element_book_count_txt, new Object[]{bookList.size() + ""}));
                    BookListDetailActivity.this.f6499this.setText(bookInfoEntity.getAddTime());
                    BookListDetailActivity.this.f6486break.setText(bookInfoEntity.getDescription());
                    return;
                }
                BookListDetailActivity.this.mPublicLoadingView.setError(null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookListDetailActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {
        public Cif() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.act_booklist_recommend_bt) {
                try {
                    if (!v0.m2736try().m2741const()) {
                        LoginActivity.l(BookListDetailActivity.this);
                    } else if (BookListDetailActivity.this.f6496if == null || TextUtils.isEmpty(BookListDetailActivity.this.f6488catch)) {
                    } else {
                        BookListDetailActivity.this.f6496if.m2766final(BookListDetailActivity.this.f6488catch);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (view.getId() == R.id.act_booklist_collect_bt) {
                try {
                    if (!v0.m2736try().m2741const()) {
                        LoginActivity.l(BookListDetailActivity.this);
                    } else if (BookListDetailActivity.this.f6496if == null || TextUtils.isEmpty(BookListDetailActivity.this.f6488catch)) {
                    } else {
                        BookListDetailActivity.this.f6496if.m2764const(true, BookListDetailActivity.this.f6488catch, BookListDetailActivity.this.f6490const, 0);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else if (view.getId() == R.id.act_booklist_error_bt) {
                try {
                    if (!v0.m2736try().m2741const()) {
                        LoginActivity.l(BookListDetailActivity.this);
                    } else {
                        w0.m2874else(BookListDetailActivity.this, hf.BOOK, ze.r(R.string.problem_feedback_booklist_txt, BookListDetailActivity.this.f6489class));
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } else if (view.getId() == R.id.act_booklist_comment_bt) {
                try {
                    if (TextUtils.isEmpty(BookListDetailActivity.this.f6488catch)) {
                        return;
                    }
                    ze.s(BookListDetailActivity.this, BookListDetailActivity.this.f6488catch, BookListDetailActivity.this.f6489class, true, false);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public static void k(Context context, String str, String str2) {
        Intent intent = new Intent(context, BookListDetailActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("LIST_ID", str);
        intent.putExtra("LIST_NAME", str2);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_booklist_detail;
    }

    /* renamed from: i */
    public final void j() {
        if (this.f6496if == null || TextUtils.isEmpty(this.f6488catch)) {
            return;
        }
        v3 v3Var = this.f6496if;
        String str = this.f6488catch;
        if (v3Var == null) {
            throw null;
        }
        x4.m2957import(w.m2857static(str), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new w3(v3Var, "SP_HOST_SHUC_XS_KEY"));
    }

    @Override // com.apk.f6
    public void initData() {
        Intent intent = getIntent();
        this.f6488catch = intent.getStringExtra("LIST_ID");
        this.f6489class = intent.getStringExtra("LIST_NAME");
        NovelRankListAdapter novelRankListAdapter = new NovelRankListAdapter(this, null, null, true);
        this.f6494for = novelRankListAdapter;
        this.mRecyclerView.setAdapter(novelRankListAdapter);
        View inflate = View.inflate(this, R.layout.include_booklist_detail_header, null);
        this.f6494for.addHeaderView(inflate);
        this.f6487case = (ImageView) inflate.findViewById(R.id.act_element_detail_book_image);
        this.f6492else = (TextView) inflate.findViewById(R.id.act_element_detail_book_name_txt);
        this.f6495goto = (TextView) inflate.findViewById(R.id.act_element_detail_book_author_txt);
        this.f6499this = (TextView) inflate.findViewById(R.id.act_element_detail_book_date_txt);
        this.f6486break = (ExpandableTextView) inflate.findViewById(R.id.book_detail_intro_text);
        this.f6491do = (TopCommentLayout) inflate.findViewById(R.id.app_top_commentview);
        inflate.findViewById(R.id.act_booklist_recommend_bt).setOnClickListener(this.f6498super);
        inflate.findViewById(R.id.act_booklist_collect_bt).setOnClickListener(this.f6498super);
        inflate.findViewById(R.id.act_booklist_error_bt).setOnClickListener(this.f6498super);
        inflate.findViewById(R.id.act_booklist_comment_bt).setOnClickListener(this.f6498super);
        this.f6497new = (AdViewBangDan) inflate.findViewById(R.id.adview_bangdan);
        this.f6500try = (AdViewRectangle) inflate.findViewById(R.id.adview_rectangle);
        this.f6496if = new v3(this, this.f6493final);
        j();
        this.f6494for.setOnItemClickListener(this);
        try {
            if (w0.m2896throws() && !TextUtils.isEmpty(this.f6488catch) && !TextUtils.isEmpty(this.f6489class) && this.f6491do != null) {
                this.f6491do.m3422do(this, true, false, this.f6488catch, this.f6489class);
                this.f6491do.setVisibility(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (Cfinally.m797else().m829volatile()) {
                findViewById(R.id.adview_bangdan_lineview).setVisibility(0);
                this.f6497new.m3268new(this, "sddetaillist");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (!Cfinally.m797else().m821strictfp() || this.f6500try == null) {
                return;
            }
            findViewById(R.id.adview_rectangle_lineview).setVisibility(0);
            this.f6500try.m3274for(this, null, "rectsddetail");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_booklist_detail_actionbar, R.string.element_detail_txt);
        this.mPublicLoadingView.setReloadListener(new PublicLoadingView.Cdo() { // from class: com.apk.n6
            @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
            /* renamed from: do  reason: not valid java name */
            public final void mo1847do() {
                BookListDetailActivity.this.j();
            }
        });
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        NovelRankListAdapter novelRankListAdapter = this.f6494for;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3287do();
        }
        AdViewBangDan adViewBangDan = this.f6497new;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
            this.f6497new = null;
        }
        AdViewRectangle adViewRectangle = this.f6500try;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
            this.f6500try = null;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) this.f6494for.getItem(i);
        if (book == null || book.getItemType() != 1) {
            return;
        }
        BookDetailActivity.u(this, book);
        v m2734do = v.m2734do();
        book.getId();
        book.getName();
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        NovelRankListAdapter novelRankListAdapter = this.f6494for;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3289if();
        }
        AdViewBangDan adViewBangDan = this.f6497new;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = true;
        }
        AdViewRectangle adViewRectangle = this.f6500try;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = true;
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        NovelRankListAdapter novelRankListAdapter = this.f6494for;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3288for();
        }
        AdViewBangDan adViewBangDan = this.f6497new;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = false;
        }
        AdViewRectangle adViewRectangle = this.f6500try;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = false;
        }
    }
}
