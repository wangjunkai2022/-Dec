package com.biquge.ebook.app.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.bg;
import com.apk.e40;
import com.apk.eg;
import com.apk.f6;
import com.apk.g40;
import com.apk.h40;
import com.apk.hf;
import com.apk.i40;
import com.apk.lv;
import com.apk.n2;
import com.apk.nz;
import com.apk.o0;
import com.apk.u;
import com.apk.u3;
import com.apk.u5;
import com.apk.v;
import com.apk.v3;
import com.apk.w;
import com.apk.w0;
import com.apk.x4;
import com.apk.xw;
import com.apk.y30;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.NovelCategory;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.fragment.BookDetailDataFragment;
import com.biquge.ebook.app.ui.fragment.BookDetailDirFragment;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.CenterPopupView;
import com.manhua.ui.view.DetailSharePopupView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class BookDetailActivity extends f6 {

    /* renamed from: case  reason: not valid java name */
    public boolean f6425case;

    /* renamed from: do  reason: not valid java name */
    public View f6426do;

    /* renamed from: else  reason: not valid java name */
    public BookDetailDataFragment f6427else;

    /* renamed from: for  reason: not valid java name */
    public Book f6428for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f6429goto;

    /* renamed from: if  reason: not valid java name */
    public v3 f6430if;
    @BindView(R.id.activity_book_detail_add_shelf_bt)
    public TextView mAddOrDelShelfBT;
    @BindView(R.id.comic_detail_appbarlayout)
    public AppBarLayout mAppBarLayout;
    @BindView(R.id.activity_book_detail_author_txt)
    public TextView mAuthorTxt;
    @BindView(R.id.comic_detail_blur_bg_iv)
    public ImageView mBlurBgIv;
    @BindView(R.id.comic_detail_icon_iv)
    public ImageView mIconIv;
    @BindView(R.id.comic_detail_indicator)
    public ScrollIndicatorView mIndicator;
    @BindView(R.id.activity_book_detail_major_tv)
    public TextView mMajorTv;
    @BindView(R.id.activity_book_detail_name_txt)
    public TextView mNameTxt;
    @BindView(R.id.activity_book_detail_flexbox)
    public FlexboxLayout mTagFlexboxLayout;
    @BindView(R.id.book_detail_to_shelf_view)
    public ImageView mToolbarAddShelfBtn;
    @BindView(R.id.book_detail_back_view)
    public ImageView mToolbarBackBtn;
    @BindView(R.id.comic_top_toolbar_layout)
    public LinearLayout mToolbarLayout;
    @BindView(R.id.book_detail_share_view)
    public ImageView mToolbarShareBtn;
    @BindView(R.id.book_detail_tile_txt)
    public TextView mToolbarTitleTv;
    @BindView(R.id.activity_book_detail_upload_tv)
    public TextView mUploadAuthorTv;
    @BindView(R.id.comic_detail_viewpager)
    public ViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public boolean f6431new;

    /* renamed from: this  reason: not valid java name */
    public final u5 f6432this = new Cnew();

    /* renamed from: try  reason: not valid java name */
    public boolean f6433try;

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends g40 {
        public Cdo(BookDetailActivity bookDetailActivity, Context context, int i, h40.Cdo cdo) {
            super(context, i, cdo);
        }

        @Override // com.apk.g40, com.apk.h40
        /* renamed from: for */
        public int mo450for(int i) {
            return eg.m587catch(4.5f);
        }

        @Override // com.apk.g40, com.apk.h40
        /* renamed from: new */
        public int mo451new(int i) {
            return eg.m587catch(20.0f);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends bg {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6434do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f6436if;

        public Cfor(String str, String str2) {
            this.f6434do = str;
            this.f6436if = str2;
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            NovelCategory novelCategory = new NovelCategory();
            novelCategory.setcId(this.f6434do);
            novelCategory.setName(this.f6436if);
            novelCategory.setPy(this.f6434do);
            BookListCategoryActivity.i(BookDetailActivity.this, novelCategory);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements AppBarLayout.OnOffsetChangedListener {
        public Cif() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            float abs = Math.abs(i * 1.0f) / appBarLayout.getTotalScrollRange();
            BookDetailActivity.this.mToolbarLayout.setBackgroundColor(ze.X(ze.j(R.color.main_bg_color), abs));
            BookDetailActivity.this.mToolbarTitleTv.setAlpha(abs);
            int X = ze.X(ze.j(R.color.color_999999), abs);
            BookDetailActivity.this.mToolbarBackBtn.setColorFilter(X);
            BookDetailActivity.this.mToolbarAddShelfBtn.setColorFilter(X);
            BookDetailActivity.this.mToolbarShareBtn.setColorFilter(X);
            if (abs > 0.6d) {
                BookDetailActivity.i(BookDetailActivity.this, true);
            } else {
                BookDetailActivity.i(BookDetailActivity.this, false);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends u5 {
        public Cnew() {
        }

        @Override // com.apk.u5
        /* renamed from: if */
        public void mo2679if(Book book) {
            BookDetailActivity bookDetailActivity = BookDetailActivity.this;
            bookDetailActivity.f6425case = false;
            bookDetailActivity.f6433try = true;
            bookDetailActivity.f6428for = book;
            bookDetailActivity.w();
        }

        @Override // com.apk.u5
        /* renamed from: switch */
        public void mo2687switch() {
            BookDetailActivity.this.f6425case = true;
            ToastUtils.show((int) R.string.book_detail_request_failed_txt);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements o0.Celse {
        public Ctry() {
        }

        @Override // com.apk.o0.Celse
        /* renamed from: do */
        public void mo1179do(boolean z) {
            if (z) {
                BookDetailActivity bookDetailActivity = BookDetailActivity.this;
                if (!bookDetailActivity.f6431new) {
                    n2.u(bookDetailActivity.f6428for, true);
                }
            }
            BookDetailActivity.this.k(true);
        }
    }

    public static void i(BookDetailActivity bookDetailActivity, boolean z) {
        if (bookDetailActivity.f6429goto == z) {
            return;
        }
        bookDetailActivity.f6429goto = z;
        super.setImmersionBar(z);
    }

    public static void n(Activity activity, Book book, int i) {
        try {
            Intent intent = new Intent(activity, BookDetailActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("book", book);
            activity.startActivityForResult(intent, i);
        } catch (Exception unused) {
        }
        v m2734do = v.m2734do();
        book.getId();
        book.getName();
        if (m2734do == null) {
            throw null;
        }
    }

    public static void o(Context context, Book book) {
        u(context, book);
        v m2734do = v.m2734do();
        book.getId();
        book.getName();
        if (m2734do == null) {
            throw null;
        }
    }

    public static void p(Context context, Book book) {
        u(context, book);
        v m2734do = v.m2734do();
        book.getId();
        book.getName();
        if (m2734do == null) {
            throw null;
        }
    }

    public static void q(Context context, Book book) {
        u(context, book);
        v m2734do = v.m2734do();
        book.getId();
        book.getName();
        if (m2734do == null) {
            throw null;
        }
    }

    public static void r(Context context, Book book) {
        u(context, book);
        if (book != null) {
            v m2734do = v.m2734do();
            book.getId();
            book.getName();
            if (m2734do == null) {
                throw null;
            }
        }
    }

    public static void s(Context context, CollectBook collectBook) {
        if (collectBook != null) {
            u(context, n2.m1809break(collectBook));
            v m2734do = v.m2734do();
            collectBook.getCollectId();
            collectBook.getName();
            if (m2734do == null) {
                throw null;
            }
        }
    }

    public static void t(Context context, String str, Book book) {
        u(context, book);
        if (book != null) {
            v m2734do = v.m2734do();
            book.getId();
            book.getName();
            if (m2734do == null) {
                throw null;
            }
        }
    }

    public static void u(Context context, Book book) {
        try {
            Intent intent = new Intent(context, BookDetailActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("book", book);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_book_detail;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6428for = (Book) getIntent().getSerializableExtra("book");
        if (w0.m2888public(l())) {
            StringBuilder m1016super = Cgoto.m1016super("《");
            m1016super.append(m());
            m1016super.append("》");
            ((TextView) ((ViewStub) findViewById(R.id.copyright_tips_layout)).inflate().findViewById(R.id.view_copyright_title_tv)).setText(m1016super.toString());
            return;
        }
        w();
        String[] strArr = {ze.q(R.string.tips_config_detail_tip_title_txt), ze.q(R.string.book_catalogue_txt)};
        ArrayList arrayList = new ArrayList();
        Book book = this.f6428for;
        BookDetailDataFragment bookDetailDataFragment = new BookDetailDataFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("book", book);
        bookDetailDataFragment.setArguments(bundle);
        this.f6427else = bookDetailDataFragment;
        arrayList.add(bookDetailDataFragment);
        Book book2 = this.f6428for;
        BookDetailDirFragment bookDetailDirFragment = new BookDetailDirFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putSerializable("book", book2);
        bookDetailDirFragment.setArguments(bundle2);
        arrayList.add(bookDetailDirFragment);
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        this.mIndicator.setAdapter(new nz(this, strArr, 0));
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), strArr, arrayList));
    }

    @Override // com.apk.f6
    public void initView() {
        this.mIndicator.setScrollBar(new Cdo(this, this, R.drawable.shape_indicator_tab_underline, h40.Cdo.BOTTOM));
        ScrollIndicatorView scrollIndicatorView = this.mIndicator;
        i40 i40Var = new i40();
        i40Var.m1181for(R.color.color_333333, R.color.color_999999);
        i40Var.m1183new(20.0f, 16.0f);
        scrollIndicatorView.setOnTransitionListener(i40Var);
        this.mAppBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new Cif());
        this.mToolbarTitleTv.setAlpha(0.0f);
    }

    public final void k(boolean z) {
        try {
            if (!TextUtils.isEmpty(l())) {
                if (n2.f(l())) {
                    this.mAddOrDelShelfBT.setText(ze.q(R.string.txt_remove_bookshlef_txt));
                    this.f6431new = true;
                } else {
                    this.mAddOrDelShelfBT.setText(ze.q(R.string.txt_add_bookshlef_txt));
                    this.f6431new = false;
                }
            }
            if (z) {
                ze.V();
                if (this.f6431new) {
                    v m2734do = v.m2734do();
                    l();
                    m();
                    if (m2734do != null) {
                        return;
                    }
                    throw null;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final String l() {
        Book book = this.f6428for;
        return book != null ? book.getId() : "";
    }

    public final String m() {
        Book book = this.f6428for;
        return book != null ? book.getName() : "";
    }

    @OnClick({R.id.activity_book_detail_add_shelf_bt, R.id.activity_book_detail_read_bt, R.id.activity_book_detail_cache_bt, R.id.book_detail_back_view, R.id.book_detail_to_shelf_view, R.id.book_detail_share_view})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.activity_book_detail_add_shelf_bt /* 2131296334 */:
                if (this.f6428for == null) {
                    return;
                }
                if (this.f6431new) {
                    String l = l();
                    try {
                        LitePal.deleteAll(CollectBook.class, "collectId = ?", l);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    o0.m1925else().m1926break(l);
                    ToastUtils.show((CharSequence) ze.q(R.string.remove_bookshlef_txt));
                } else if (!this.f6433try) {
                    ToastUtils.show((int) R.string.book_detail_request_load_txt);
                    v();
                    return;
                } else if (n2.m1844try(this, false)) {
                    return;
                } else {
                    n2.u(this.f6428for, true);
                }
                k(true);
                return;
            case R.id.activity_book_detail_cache_bt /* 2131296336 */:
                if (this.f6428for == null) {
                    return;
                }
                if (!this.f6433try) {
                    ToastUtils.show((int) R.string.book_detail_request_load_txt);
                    v();
                    return;
                } else if (this.f6431new || !n2.m1817else(this)) {
                    o0.m1925else().m1931do(this, l(), m(), false, true, new Ctry());
                    return;
                } else {
                    return;
                }
            case R.id.activity_book_detail_read_bt /* 2131296343 */:
                if (this.f6428for == null) {
                    return;
                }
                if (!this.f6433try) {
                    ToastUtils.show((int) R.string.book_detail_request_load_txt);
                    v();
                    return;
                }
                NewBookReadActivity.b0(this, l());
                return;
            case R.id.book_detail_back_view /* 2131296463 */:
                onBackPressed();
                return;
            case R.id.book_detail_share_view /* 2131296470 */:
                if (this.f6428for == null) {
                    return;
                }
                if (this.f6426do == null) {
                    View inflate = ((ViewStub) findViewById(R.id.new_share_detail_layout)).inflate();
                    this.f6426do = inflate;
                    inflate.setVisibility(4);
                }
                lv lvVar = new lv();
                DetailSharePopupView detailSharePopupView = new DetailSharePopupView(this, this.f6426do, this.f6428for);
                if (detailSharePopupView instanceof CenterPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else {
                    lvVar.f2917continue = zu.f6266try;
                }
                detailSharePopupView.popupInfo = lvVar;
                detailSharePopupView.show();
                return;
            case R.id.book_detail_to_shelf_view /* 2131296473 */:
                Intent intent = new Intent(this, MainActivity.class);
                intent.putExtra("type", 1001);
                intent.putExtra("source", hf.BOOK);
                startActivity(intent);
                finish();
                return;
            default:
                return;
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            k(false);
            if (this.f6430if == null) {
                v3 v3Var = new v3(this, this.f6432this);
                this.f6430if = v3Var;
                x4.m2957import(w.m2864while(l()), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new u3(v3Var));
            }
        }
    }

    public final void v() {
        if (this.f6425case) {
            this.f6425case = false;
            v3 v3Var = this.f6430if;
            if (v3Var != null) {
                x4.m2957import(w.m2864while(l()), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new u3(v3Var));
            }
        }
    }

    public final void w() {
        Book book = this.f6428for;
        if (book != null) {
            try {
                u.m2653public(book.getImg(), this.mIconIv);
                u.m2662while(this.f6428for.getImg(), this.mBlurBgIv, true);
                this.mToolbarTitleTv.setText(this.f6428for.getName());
                this.mNameTxt.setText(this.f6428for.getName());
                if (!TextUtils.isEmpty(this.f6428for.getAuthor())) {
                    this.mAuthorTxt.setText(ze.r(R.string.xml_author_placeholder_txt, this.f6428for.getAuthor()));
                }
                if (!TextUtils.isEmpty(this.f6428for.getUpUser())) {
                    this.mUploadAuthorTv.setText(ze.r(R.string.book_detail_upload_author_txt, this.f6428for.getUpUser()));
                    this.mUploadAuthorTv.setVisibility(0);
                }
                if (!TextUtils.isEmpty(this.f6428for.getMajorCharacters())) {
                    this.mMajorTv.setText(ze.r(R.string.book_detail_upload_major_txt, this.f6428for.getMajorCharacters()));
                    this.mMajorTv.setVisibility(0);
                }
                List<String> tagJson = this.f6428for.getTagJson();
                if (tagJson != null && tagJson.size() > 0) {
                    this.mTagFlexboxLayout.removeAllViews();
                    LayoutInflater layoutInflater = getLayoutInflater();
                    for (String str : tagJson) {
                        try {
                            if (!TextUtils.isEmpty(str)) {
                                String[] split = str.split("#");
                                String str2 = split[0];
                                String str3 = split[1];
                                View inflate = layoutInflater.inflate(R.layout.item_detail_tag_view, (ViewGroup) null);
                                TextView textView = (TextView) inflate.findViewById(R.id.item_simple_txt);
                                textView.setText(str2);
                                textView.setOnClickListener(new Cfor(str3, str2));
                                this.mTagFlexboxLayout.addView(inflate);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    this.mTagFlexboxLayout.setVisibility(0);
                }
                if (this.f6427else != null) {
                    BookDetailDataFragment bookDetailDataFragment = this.f6427else;
                    bookDetailDataFragment.f7197try = this.f6428for;
                    bookDetailDataFragment.m3363synchronized();
                }
            } catch (Exception unused) {
            }
        }
    }
}
