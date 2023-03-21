package com.biquge.ebook.app.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.Cfinal;
import com.apk.Cfinally;
import com.apk.ab;
import com.apk.b1;
import com.apk.b40;
import com.apk.bg;
import com.apk.c1;
import com.apk.eg;
import com.apk.g6;
import com.apk.hf;
import com.apk.i6;
import com.apk.lq0;
import com.apk.lv;
import com.apk.mf;
import com.apk.mu;
import com.apk.n2;
import com.apk.nt;
import com.apk.nz;
import com.apk.ot;
import com.apk.ow;
import com.apk.sb0;
import com.apk.ss;
import com.apk.tr0;
import com.apk.ts;
import com.apk.tt;
import com.apk.u5;
import com.apk.v;
import com.apk.v0;
import com.apk.v3;
import com.apk.w0;
import com.apk.w5;
import com.apk.x4;
import com.apk.xa;
import com.apk.xp0;
import com.apk.ya;
import com.apk.za;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.adapter.HotSearchAdapter;
import com.biquge.ebook.app.adapter.SearchFastResultAdapter;
import com.biquge.ebook.app.adapter.SearchResultAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.FastSearchWord;
import com.biquge.ebook.app.bean.SearchPlatform;
import com.biquge.ebook.app.bean.SearchTop;
import com.biquge.ebook.app.bean.StoreConfigBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.ui.activity.WantReadBookActivity;
import com.biquge.ebook.app.ui.fragment.BookSearchFragment;
import com.biquge.ebook.app.ui.view.WebSearchGuidePopup;
import com.biquge.ebook.app.widget.ClearEditText;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.expand.listen.bean.ListenDetail;
import com.expand.videoplayer.bean.VideoDetail;
import com.google.android.flexbox.FlexboxLayout;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookSearchFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, TextWatcher, TextView.OnEditorActionListener {

    /* renamed from: native  reason: not valid java name */
    public static final int[] f7303native = {Color.parseColor("#3498DB"), Color.parseColor("#FD032C"), Color.parseColor("#FC9943"), Color.parseColor("#67CB99")};

    /* renamed from: break  reason: not valid java name */
    public boolean f7304break;

    /* renamed from: class  reason: not valid java name */
    public hf f7307class;

    /* renamed from: const  reason: not valid java name */
    public hf f7308const;

    /* renamed from: do  reason: not valid java name */
    public xp0 f7309do;

    /* renamed from: else  reason: not valid java name */
    public SearchResultAdapter f7310else;
    @BindView(R.id.search_fast_result_layout)
    public FrameLayout fastLayout;
    @BindView(R.id.search_fast_result_rv)
    public RecyclerView fastRecyclerView;

    /* renamed from: final  reason: not valid java name */
    public Book f7311final;

    /* renamed from: for  reason: not valid java name */
    public SearchFastResultAdapter f7312for;

    /* renamed from: goto  reason: not valid java name */
    public v3 f7313goto;

    /* renamed from: if  reason: not valid java name */
    public HotSearchAdapter f7314if;
    @BindView(R.id.adview_search_rectangle)
    public AdViewRectangle mAdViewRectangle;
    @BindView(R.id.search_result_qs_layout)
    public LinearLayout mForBooksLayout;
    @BindView(R.id.search_result_qs_tv)
    public TextView mForBooksTv;
    @BindView(R.id.search_history_flexbox_layout)
    public FlexboxLayout mHistoryFlexboxLayout;
    @BindView(R.id.search_hot_recyclerView)
    public RecyclerView mHotSearchRecyclerView;
    @BindView(R.id.search_model_indicator)
    public ScrollIndicatorView mModuleIndicatorView;
    @BindView(R.id.search_toolbar_more_tag)
    public View mMoreTagView;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;
    @BindView(R.id.search_result_layout)
    public LinearLayout mResultLayout;
    @BindView(R.id.search_input_et)
    public ClearEditText mSearchEdit;
    @BindView(R.id.select_finish_bt)
    public Button mSelectFinishBT;
    @BindView(R.id.search_platform_spinner)
    public TextView mSpinnerTxt;

    /* renamed from: new  reason: not valid java name */
    public List<SearchPlatform> f7316new;

    /* renamed from: this  reason: not valid java name */
    public x4 f7318this;

    /* renamed from: try  reason: not valid java name */
    public SearchPlatform f7320try;

    /* renamed from: while  reason: not valid java name */
    public Cfinal f7321while;

    /* renamed from: case  reason: not valid java name */
    public int f7305case = 1;

    /* renamed from: catch  reason: not valid java name */
    public final Map<String, Book> f7306catch = new HashMap();

    /* renamed from: super  reason: not valid java name */
    public final u5 f7317super = new Celse();

    /* renamed from: throw  reason: not valid java name */
    public final w5 f7319throw = new Cgoto();

    /* renamed from: import  reason: not valid java name */
    public final nt.Cdo f7315import = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Runnable {
        public Ccase() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BookSearchFragment.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements nt.Cdo {
        public Cdo() {
        }

        @Override // com.apk.nt.Cdo
        public void onDismiss() {
        }

        @Override // com.apk.nt.Cdo
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ScrollIndicatorView scrollIndicatorView = BookSearchFragment.this.mModuleIndicatorView;
            if (scrollIndicatorView != null) {
                scrollIndicatorView.setCurrentItem(i);
            }
            BookSearchFragment.a(BookSearchFragment.this, i);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse extends u5 {
        public Celse() {
        }

        @Override // com.apk.u5
        /* renamed from: final */
        public void mo2676final(List<FastSearchWord> list) {
            SearchFastResultAdapter searchFastResultAdapter = BookSearchFragment.this.f7312for;
            if (searchFastResultAdapter != null) {
                searchFastResultAdapter.setNewData(list);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements BaseQuickAdapter.OnItemClickListener {
        public Cfor() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            FastSearchWord item;
            SearchFastResultAdapter searchFastResultAdapter = BookSearchFragment.this.f7312for;
            if (searchFastResultAdapter == null || (item = searchFastResultAdapter.getItem(i)) == null) {
                return;
            }
            BookSearchFragment.this.mSearchEdit.setText(item.getWord());
            BookSearchFragment.this.s();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto extends w5 {

        /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$goto$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements BaseQuickAdapter.OnItemClickListener {
            public Cdo() {
            }

            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchTop item;
                HotSearchAdapter hotSearchAdapter = BookSearchFragment.this.f7314if;
                if (hotSearchAdapter == null || (item = hotSearchAdapter.getItem(i)) == null) {
                    return;
                }
                BookSearchFragment.this.mSearchEdit.setText(item.getName());
                BookSearchFragment.this.s();
            }
        }

        /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$goto$if  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cif extends bg {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ String f7328do;

            public Cif(String str) {
                this.f7328do = str;
            }

            @Override // com.apk.bg
            public void onNoDoubleClick(View view) {
                BookSearchFragment.this.mSearchEdit.setText(this.f7328do);
                BookSearchFragment.this.s();
            }
        }

        public Cgoto() {
        }

        @Override // com.apk.w5
        /* renamed from: do */
        public void mo2901do(String str, List<Book> list, boolean z) {
            try {
                if (BookSearchFragment.this.f7320try != null && BookSearchFragment.this.f7311final != null) {
                    int size = list.size();
                    if (size <= 0 || size >= 3) {
                        for (int i = 0; i < size; i++) {
                            if ((i - 2) % 10 == 0) {
                                list.add(i, BookSearchFragment.this.f7311final);
                            }
                        }
                    } else {
                        list.add(BookSearchFragment.this.f7311final);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                BookSearchFragment.f(BookSearchFragment.this, BookSearchFragment.this.f7305case == 0, list, z);
                if (BookSearchFragment.this.f7310else.getItemCount() == 0) {
                    ToastUtils.show((int) R.string.search_not_find_book_txt);
                    if (ze.m3179private("WEB_SEARCH_SHOW_GUIDE_POP_KEY", true)) {
                        tt.f4763do.putBoolean("WEB_SEARCH_SHOW_GUIDE_POP_KEY", false);
                        BookSearchFragment.this.getSupportActivity().postDelayed(new Runnable() { // from class: com.apk.ha
                            @Override // java.lang.Runnable
                            public final void run() {
                                BookSearchFragment.Cgoto.this.m3369else();
                            }
                        }, 500L);
                    }
                }
                if (BookSearchFragment.this.f7318this != null) {
                    BookSearchFragment.this.f7318this.m2972return(BookSearchFragment.this.m());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            BookSearchFragment.this.q(false);
        }

        /* renamed from: else  reason: not valid java name */
        public void m3369else() {
            BookSearchFragment.this.getSupportActivity();
            lv lvVar = new lv();
            lvVar.f2918default = eg.m611static() - eg.m587catch(130.0f);
            lvVar.f2923finally = true;
            WebSearchGuidePopup webSearchGuidePopup = new WebSearchGuidePopup(BookSearchFragment.this.getSupportActivity());
            if (webSearchGuidePopup instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webSearchGuidePopup instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webSearchGuidePopup instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webSearchGuidePopup instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else {
                lvVar.f2917continue = zu.f6266try;
            }
            webSearchGuidePopup.popupInfo = lvVar;
            webSearchGuidePopup.show();
        }

        @Override // com.apk.w5
        /* renamed from: for */
        public void mo2902for(List<String> list) {
            try {
                if (BookSearchFragment.this.mHistoryFlexboxLayout != null) {
                    BookSearchFragment.this.mHistoryFlexboxLayout.removeAllViews();
                }
                LayoutInflater from = LayoutInflater.from(BookSearchFragment.this.getSupportActivity());
                for (String str : list) {
                    View inflate = from.inflate(R.layout.item_search_recommend_view, (ViewGroup) null);
                    TextView textView = (TextView) inflate.findViewById(R.id.item_search_recommend_name_txt);
                    textView.setText(str);
                    textView.setOnClickListener(new Cif(str));
                    BookSearchFragment.this.mHistoryFlexboxLayout.addView(inflate);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.w5
        /* renamed from: if */
        public void mo2903if(List<SearchPlatform> list, int i) {
            try {
                BookSearchFragment.this.f7316new = list;
                if (!BookSearchFragment.this.f7304break && list.size() > 1 && !ze.m3179private("SP_SEARCH_PLATFORM_RED_TAGKEY", false)) {
                    BookSearchFragment.this.f7309do = new xp0(BookSearchFragment.this.getSupportActivity());
                    xp0 xp0Var = BookSearchFragment.this.f7309do;
                    xp0Var.m3031do(BookSearchFragment.this.mSpinnerTxt);
                    xp0Var.f5722case = sb0.m2430switch(xp0Var.getContext(), 4.0f);
                    xp0Var.m3035if();
                    xp0Var.invalidate();
                    xp0Var.m3034goto(-1);
                    xp0Var.m3037this(8.0f, 10.0f, true);
                }
                try {
                    if (BookSearchFragment.this.mModuleIndicatorView != null) {
                        BookSearchFragment.this.mModuleIndicatorView.setCurrentItem(i);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                BookSearchFragment.a(BookSearchFragment.this, i);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.apk.w5
        /* renamed from: new */
        public void mo2904new(List<SearchTop> list) {
            try {
                if (BookSearchFragment.this.f7314if == null) {
                    BookSearchFragment.this.f7314if = new HotSearchAdapter();
                    HotSearchAdapter hotSearchAdapter = BookSearchFragment.this.f7314if;
                    BookSearchFragment.this.mHotSearchRecyclerView.setAdapter(BookSearchFragment.this.f7314if);
                    BookSearchFragment.this.f7314if.setOnItemClickListener(new Cdo());
                }
                BookSearchFragment.this.f7314if.setNewData(ze.m3167final(list, 10));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<Object> {
        public Cif() {
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            try {
                String l = BookSearchFragment.this.l();
                for (T t : BookSearchFragment.this.f7310else.getData()) {
                    if (hf.BOOK.toString().equals(l)) {
                        t.setHaveShelf(n2.f(t.getId()));
                    } else if (hf.COMIC.toString().equals(l)) {
                        t.setHaveShelf(mu.m1766finally(t.getId()) != null);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            SearchResultAdapter searchResultAdapter = BookSearchFragment.this.f7310else;
            if (searchResultAdapter == null || searchResultAdapter.getItemCount() <= 0) {
                return;
            }
            BookSearchFragment.this.f7310else.notifyDataSetChanged();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ts {
        public Cnew() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            BookSearchFragment.m3368synchronized(BookSearchFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(BookSearchFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis extends ClickableSpan {

        /* renamed from: do  reason: not valid java name */
        public final Context f7332do;

        /* renamed from: if  reason: not valid java name */
        public final int f7334if;

        public Cthis(Context context, int i, Cnew cnew) {
            this.f7332do = context;
            this.f7334if = i;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            try {
                if (this.f7334if == 1) {
                    mf.m1712do("EVENT_CHANGE_WEB_SEARCH_KEY", null);
                } else {
                    String trim = BookSearchFragment.this.mSearchEdit.getText().toString().trim();
                    Context context = this.f7332do;
                    boolean m = BookSearchFragment.this.m();
                    if (!v0.m2736try().m2741const()) {
                        LoginActivity.l(context);
                    } else {
                        WantReadBookActivity.i(context, trim, m);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setTextSize((int) TypedValue.applyDimension(2, 15, Resources.getSystem().getDisplayMetrics()));
            textPaint.setColor(lq0.m1660do(BookSearchFragment.this.getSupportActivity(), tr0.m2617do(R.color.main_tab_txt_color)));
            textPaint.setUnderlineText(true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements b40.Cnew {
        public Ctry() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            BookSearchFragment.a(BookSearchFragment.this, i);
            boolean z = true;
            if (!Ccontinue.m379if().m380case() ? i >= 1 : i >= 2) {
                z = false;
            }
            BookSearchFragment.this.mForBooksTv.setVisibility(z ? 0 : 4);
        }
    }

    public static void a(BookSearchFragment bookSearchFragment, int i) {
        if (bookSearchFragment != null) {
            try {
                if (bookSearchFragment.f7316new != null) {
                    bookSearchFragment.f7320try = bookSearchFragment.f7316new.get(i);
                    bookSearchFragment.mRecyclerView.setLayoutManager(new LinearLayoutManager(bookSearchFragment.getSupportActivity()));
                    bookSearchFragment.mSearchEdit.setHint(R.string.search_book_or_author_txt);
                    if (bookSearchFragment.f7320try != null && bookSearchFragment.f7316new.size() > 1) {
                        bookSearchFragment.mSpinnerTxt.setText(bookSearchFragment.f7320try.getSename());
                        if (bookSearchFragment.mSpinnerTxt.getVisibility() != 0) {
                            bookSearchFragment.mSpinnerTxt.setVisibility(0);
                        }
                    }
                    if (!TextUtils.isEmpty(bookSearchFragment.mSearchEdit.getText().toString().trim())) {
                        bookSearchFragment.s();
                    }
                    if (Ccontinue.m379if().m380case() && bookSearchFragment.f7320try != null && i < 2) {
                        w0.m2891strictfp(i);
                    }
                }
                if (bookSearchFragment.f7318this != null) {
                    bookSearchFragment.f7318this.m2973static(bookSearchFragment.m());
                    bookSearchFragment.f7318this.m2972return(bookSearchFragment.m());
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void f(BookSearchFragment bookSearchFragment, boolean z, List list, boolean z2) {
        if (bookSearchFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                bookSearchFragment.f7310else.setNewData(list);
                if (z2) {
                    bookSearchFragment.f7310else.setEnableLoadMore(true);
                    bookSearchFragment.f7305case++;
                    return;
                }
                bookSearchFragment.f7310else.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                bookSearchFragment.f7310else.addData((Collection) list);
            }
            if (z2) {
                bookSearchFragment.f7310else.loadMoreComplete();
                bookSearchFragment.f7305case++;
                return;
            }
            bookSearchFragment.f7310else.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static void j(BookSearchFragment bookSearchFragment) {
        if (bookSearchFragment != null) {
            try {
                String trim = bookSearchFragment.mSearchEdit != null ? bookSearchFragment.mSearchEdit.getText().toString().trim() : "";
                if (TextUtils.isEmpty(trim)) {
                    return;
                }
                bookSearchFragment.f7318this.m2970package(trim, bookSearchFragment.f7305case, bookSearchFragment.l(), bookSearchFragment.f7320try);
                if (bookSearchFragment.f7310else != null) {
                    bookSearchFragment.f7310else.f6375else = trim;
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3368synchronized(BookSearchFragment bookSearchFragment) {
        if (bookSearchFragment != null) {
            try {
                bookSearchFragment.f7305case = 0;
                String trim = bookSearchFragment.mSearchEdit != null ? bookSearchFragment.mSearchEdit.getText().toString().trim() : "";
                if (TextUtils.isEmpty(trim)) {
                    return;
                }
                bookSearchFragment.f7318this.m2970package(trim, bookSearchFragment.f7305case, bookSearchFragment.l(), bookSearchFragment.f7320try);
                if (bookSearchFragment.f7310else != null) {
                    bookSearchFragment.f7310else.f6375else = trim;
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    @Override // android.text.TextWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void afterTextChanged(android.text.Editable r9) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.fragment.BookSearchFragment.afterTextChanged(android.text.Editable):void");
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_search;
    }

    @Override // com.apk.g6
    public void initData() {
        int i;
        this.f7313goto = new v3(getSupportActivity(), this.f7317super);
        this.f7318this = new x4(getSupportActivity(), this.f7319throw);
        Cfinally m797else = Cfinally.m797else();
        boolean z = true;
        boolean z2 = (m797else.q == null || !m797else.m808final() || Cfinally.m796do(m797else.q, "searchnative") == null) ? false : true;
        if (z2) {
            Book book = new Book();
            this.f7311final = book;
            book.setItemType(2);
        }
        SearchResultAdapter searchResultAdapter = new SearchResultAdapter(getSupportActivity(), this.f7304break, z2);
        this.f7310else = searchResultAdapter;
        searchResultAdapter.f6376for = this.f7306catch;
        this.mRecyclerView.setAdapter(searchResultAdapter);
        this.f7310else.setOnLoadMoreListener(new xa(this), this.mRecyclerView);
        this.f7310else.setOnItemClickListener(this);
        this.f7310else.setOnItemChildClickListener(new ya(this));
        x4 x4Var = this.f7318this;
        hf hfVar = this.f7307class;
        hf hfVar2 = this.f7308const;
        if (x4Var != null) {
            try {
                ArrayList arrayList = new ArrayList();
                if (hfVar == null) {
                    hfVar = Ccontinue.m379if().f729while;
                }
                arrayList.addAll(ze.d(hfVar));
                List<StoreConfigBean> list = Ccontinue.m379if().f707case;
                if (list != null && list.size() > 0) {
                    for (StoreConfigBean storeConfigBean : list) {
                        String type = storeConfigBean.getType();
                        if ("movie".equals(type)) {
                            SearchPlatform searchPlatform = new SearchPlatform(storeConfigBean.getName(), type);
                            searchPlatform.setUrl(storeConfigBean.getSrh_url());
                            arrayList.add(searchPlatform);
                        } else if ("tingshu".equals(type)) {
                            SearchPlatform searchPlatform2 = new SearchPlatform(storeConfigBean.getName(), type);
                            searchPlatform2.setUrl(storeConfigBean.getSrh_url());
                            arrayList.add(searchPlatform2);
                        }
                    }
                }
                if (hfVar2 != null) {
                    i = 0;
                    while (i < arrayList.size()) {
                        if (hfVar2.toString().equals(((SearchPlatform) arrayList.get(i)).getPid())) {
                            break;
                        }
                        i++;
                    }
                }
                i = 0;
                if (x4Var.f5453for != null) {
                    x4Var.f5453for.mo2903if(arrayList, i);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (Cfinally.m797else().m830while()) {
                Cfinal cfinal = new Cfinal();
                this.f7321while = cfinal;
                cfinal.m789if(getSupportActivity(), (ViewStub) findViewById(R.id.native_list_adview_layout));
            }
            try {
                Cfinally m797else2 = Cfinally.m797else();
                if (m797else2.f1364return == null || !m797else2.m808final() || Cfinally.m796do(m797else2.f1364return, "rectznsearch") == null) {
                    z = false;
                }
                if (z) {
                    this.mAdViewRectangle.m3274for(getSupportActivity(), new za(this), "rectznsearch");
                    return;
                }
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.g6
    public void initView() {
        int i;
        Bundle arguments = getArguments();
        if (arguments != null) {
            hf hfVar = (hf) arguments.getSerializable("createSource");
            this.f7307class = hfVar;
            if (hfVar != null) {
                this.f7304break = true;
            }
            this.f7308const = (hf) arguments.getSerializable("selectPlatform");
        }
        this.mHotSearchRecyclerView.setHasFixedSize(true);
        this.mHotSearchRecyclerView.setLayoutManager(new GridLayoutManager(getSupportActivity(), 2));
        this.mHotSearchRecyclerView.setNestedScrollingEnabled(false);
        ze.m3165else(this.mHotSearchRecyclerView);
        this.mResultLayout.setOnClickListener(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(getSupportActivity(), this.mRecyclerView);
        this.fastRecyclerView.setHasFixedSize(true);
        this.fastRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.fastRecyclerView);
        ze.m3177new(getSupportActivity(), this.fastRecyclerView);
        this.mPtrClassicFrameLayout.setPtrHandler(new Cnew());
        this.mSearchEdit.addTextChangedListener(this);
        this.mSearchEdit.setOnEditorActionListener(this);
        if (this.f7304break) {
            this.mForBooksLayout.setVisibility(8);
            findViewById(R.id.search_select_layout).setVisibility(0);
            r(0);
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (Ccontinue.m379if().m380case()) {
            arrayList.addAll(Arrays.asList(ze.e()));
        }
        List<StoreConfigBean> list = Ccontinue.m379if().f707case;
        if (list != null && list.size() > 0) {
            if (arrayList.size() == 0) {
                hf hfVar2 = Ccontinue.m379if().f729while;
                if (hfVar2 == hf.BOOK) {
                    arrayList.add(ze.q(R.string.ebook_txt));
                } else if (hfVar2 == hf.COMIC) {
                    arrayList.add(ze.q(R.string.comic_txt));
                }
            }
            for (StoreConfigBean storeConfigBean : list) {
                arrayList.add(storeConfigBean.getName());
            }
        }
        if (arrayList.size() > 1) {
            if (arrayList.size() > 5) {
                i = eg.m587catch(70.0f);
            } else {
                this.mModuleIndicatorView.setSplitAuto(true);
                i = 0;
            }
            this.mModuleIndicatorView.setAdapter(new nz(getSupportActivity(), arrayList, i));
            ze.u(getSupportActivity(), this.mModuleIndicatorView, 40, 14);
            this.mModuleIndicatorView.setOnItemSelectListener(new Ctry());
            this.mModuleIndicatorView.setVisibility(0);
        }
        try {
            String q = ze.q(R.string.search_result_bottom_tips_txt);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(q);
            Cthis cthis = new Cthis(getSupportActivity(), 1, null);
            Cthis cthis2 = new Cthis(getSupportActivity(), 2, null);
            spannableStringBuilder.setSpan(cthis, 10, 14, 17);
            spannableStringBuilder.setSpan(cthis2, 19, q.length() - 2, 17);
            this.mForBooksTv.setMovementMethod(LinkMovementMethod.getInstance());
            this.mForBooksTv.setText(spannableStringBuilder);
            this.mForBooksTv.setHighlightColor(getResources().getColor(17170445));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean k() {
        try {
            if (this.mResultLayout != null && this.mResultLayout.getVisibility() == 0) {
                if (this.mSearchEdit != null) {
                    this.mSearchEdit.setText("");
                }
                return true;
            } else if (this.fastLayout != null && this.fastLayout.getVisibility() == 0) {
                this.fastLayout.setVisibility(8);
                return true;
            } else {
                getSupportActivity().finish();
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final String l() {
        SearchPlatform searchPlatform = this.f7320try;
        return searchPlatform != null ? searchPlatform.getPid() : hf.BOOK.toString();
    }

    public final boolean m() {
        return hf.BOOK.toString().equals(l());
    }

    @OnClick({R.id.search_back_layout, R.id.search_platform_spinner, R.id.search_gosearch_txt, R.id.search_hot_search_refresh_txt, R.id.search_hot_clear_history_txt, R.id.select_cancel_bt, R.id.select_finish_bt})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.search_back_layout /* 2131297446 */:
                k();
                return;
            case R.id.search_gosearch_txt /* 2131297455 */:
                s();
                return;
            case R.id.search_hot_clear_history_txt /* 2131297457 */:
                try {
                    if (this.mHistoryFlexboxLayout != null) {
                        this.mHistoryFlexboxLayout.removeAllViews();
                    }
                    if (m()) {
                        tt.f4763do.putString("search_history_key", "");
                        return;
                    } else {
                        tt.f4763do.putString("search_comic_history_key", "");
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R.id.search_hot_search_refresh_txt /* 2131297459 */:
                x4 x4Var = this.f7318this;
                if (x4Var != null) {
                    x4Var.m2973static(m());
                    return;
                }
                return;
            case R.id.search_platform_spinner /* 2131297464 */:
                View view2 = this.mMoreTagView;
                i6 supportActivity = getSupportActivity();
                ArrayList arrayList = new ArrayList();
                int size = this.f7316new.size();
                for (int i = 0; i < size; i++) {
                    SearchPlatform searchPlatform = this.f7316new.get(i);
                    if (!searchPlatform.getPid().equals("movie") && !searchPlatform.getPid().equals("tingshu")) {
                        ot otVar = new ot();
                        otVar.f3498if = searchPlatform.getSename();
                        otVar.f3496do = R.drawable.search_icon_gray;
                        otVar.f3497for = f7303native[i % size];
                        otVar.f3499new = this.mSpinnerTxt.getText().toString().equals(searchPlatform.getSename());
                        arrayList.add(otVar);
                    }
                }
                nt ntVar = new nt(supportActivity, arrayList, this.f7315import, false, true);
                ntVar.m1915if(eg.m587catch(100.0f));
                ntVar.f3309for = true;
                ntVar.m1913do(1);
                ntVar.m1914for(view2);
                xp0 xp0Var = this.f7309do;
                if (xp0Var != null) {
                    xp0Var.m3034goto(0);
                    tt.f4763do.putBoolean("SP_SEARCH_PLATFORM_RED_TAGKEY", true);
                    return;
                }
                return;
            case R.id.select_cancel_bt /* 2131297472 */:
                try {
                    SearchResultAdapter searchResultAdapter = this.f7310else;
                    LinkedHashMap<String, Book> linkedHashMap = searchResultAdapter.f6374do;
                    if (linkedHashMap != null) {
                        linkedHashMap.clear();
                    }
                    searchResultAdapter.notifyDataSetChanged();
                    r(0);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case R.id.select_finish_bt /* 2131297474 */:
                try {
                    SearchResultAdapter searchResultAdapter2 = this.f7310else;
                    if (searchResultAdapter2 != null) {
                        ArrayList arrayList2 = new ArrayList();
                        LinkedHashMap<String, Book> linkedHashMap2 = searchResultAdapter2.f6374do;
                        if (linkedHashMap2 != null) {
                            for (Map.Entry<String, Book> entry : linkedHashMap2.entrySet()) {
                                arrayList2.add(entry.getValue());
                            }
                        }
                        Intent intent = new Intent();
                        if (this.f7307class == hf.BOOK) {
                            intent.putExtra("books", arrayList2);
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            Iterator it = arrayList2.iterator();
                            while (it.hasNext()) {
                                arrayList3.add(eg.m616this((Book) it.next()));
                            }
                            intent.putExtra("books", arrayList3);
                        }
                        getSupportActivity().setResult(-1, intent);
                        getSupportActivity().finish();
                        return;
                    }
                    throw null;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    public final void n(int i, int i2) {
        Book book;
        try {
            book = (Book) this.f7310else.getItem(i2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (book != null && book.getItemType() != 2) {
            if (book.getItemType() == 4) {
                try {
                    eg.e(getSupportActivity(), this.f7320try != null ? this.f7320try.getPid() : null, eg.m595final(), (VideoDetail) Convert.fromJson(Convert.toJson(book), (Class<Object>) VideoDetail.class));
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            } else if (book.getItemType() == 5) {
                try {
                    eg.d(getSupportActivity(), this.f7320try != null ? this.f7320try.getPid() : null, eg.m589const(), (ListenDetail) Convert.fromJson(Convert.toJson(book), (Class<Object>) ListenDetail.class));
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            } else if (i == 1) {
                try {
                    if (this.f7304break) {
                        r(this.f7310else.m3291if(i2));
                    } else if (book.getItemType() == 1) {
                        BookDetailActivity.n(getSupportActivity(), book, 102);
                    } else if (book.getItemType() == 3) {
                        ComicBean m1765final = mu.m1765final(book.getId(), book.getName(), book.getImg());
                        m1765final.setDesc(book.getDesc());
                        ComicDetailActivity.l(getSupportActivity(), m1765final, 102);
                    }
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            } else {
                try {
                    if (book.getItemType() == 1) {
                        if (n2.m1844try(getSupportActivity(), false)) {
                            return;
                        }
                        n2.u(book, true);
                        book.setHaveShelf(true);
                        this.f7310else.notifyItemChanged(i2);
                        v m2734do = v.m2734do();
                        book.getId();
                        book.getName();
                        if (m2734do == null) {
                            throw null;
                        }
                    } else if (book.getItemType() == 3) {
                        if (mu.m1756case(getSupportActivity(), false)) {
                            return;
                        }
                        mu.w(eg.m616this(book), true);
                        book.setHaveShelf(true);
                        this.f7310else.notifyItemChanged(i2);
                        v m2734do2 = v.m2734do();
                        book.getId();
                        book.getName();
                        if (m2734do2 == null) {
                            throw null;
                        }
                    } else {
                        book.getItemType();
                    }
                    ze.V();
                    return;
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return;
                }
            }
            e.printStackTrace();
        }
    }

    public final void o(int i) {
        new b1().m141do(new ab(this, i));
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        AdViewBangDan adViewBangDan;
        super.onDestroy();
        this.mSearchEdit.removeTextChangedListener(this);
        SearchResultAdapter searchResultAdapter = this.f7310else;
        if (searchResultAdapter != null && (adViewBangDan = searchResultAdapter.f6378new) != null) {
            adViewBangDan.m3269try();
        }
        Cfinal cfinal = this.f7321while;
        if (cfinal != null) {
            cfinal.m790new();
            this.f7321while = null;
        }
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        s();
        return true;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) this.f7310else.getItem(i);
        if (book != null) {
            if (TextUtils.isEmpty(book.getId())) {
                l();
                o(i);
                return;
            }
            n(1, i);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        SearchResultAdapter searchResultAdapter = this.f7310else;
        if (searchResultAdapter == null || searchResultAdapter.getItemCount() <= 0) {
            return;
        }
        new b1().m141do(new Cif());
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final void p(boolean z) {
        AdViewBangDan adViewBangDan;
        AdViewBangDan adViewBangDan2;
        if (z) {
            SearchResultAdapter searchResultAdapter = this.f7310else;
            if (searchResultAdapter != null && (adViewBangDan2 = searchResultAdapter.f6378new) != null) {
                adViewBangDan2.f6294break = false;
            }
            Cfinal cfinal = this.f7321while;
            if (cfinal != null) {
                cfinal.f1321if = false;
                return;
            }
            return;
        }
        SearchResultAdapter searchResultAdapter2 = this.f7310else;
        if (searchResultAdapter2 != null && (adViewBangDan = searchResultAdapter2.f6378new) != null) {
            adViewBangDan.f6294break = true;
        }
        Cfinal cfinal2 = this.f7321while;
        if (cfinal2 != null) {
            cfinal2.f1321if = true;
        }
    }

    public final void q(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Ccase());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    public final void r(int i) {
        this.mSelectFinishBT.setText(getString(R.string.main_select_count_batch, String.valueOf(i)));
    }

    public final void s() {
        try {
            String trim = this.mSearchEdit != null ? this.mSearchEdit.getText().toString().trim() : "";
            if (!TextUtils.isEmpty(trim)) {
                this.mSearchEdit.clearFocus();
                ow.m1984if(this.mSearchEdit);
                this.mSearchEdit.setSelection(trim.length());
                this.f7310else.setNewData(null);
                if (this.mResultLayout.getVisibility() != 0) {
                    this.mResultLayout.setVisibility(0);
                }
                if (this.fastLayout.getVisibility() != 8) {
                    this.fastLayout.setVisibility(8);
                }
                if (this.f7312for != null && this.f7312for.getItemCount() > 0) {
                    this.f7312for.setNewData(null);
                }
                this.mPtrClassicFrameLayout.f4550do = (byte) 1;
                q(true);
                return;
            }
            ToastUtils.show((CharSequence) ze.q(R.string.search_please_input_key_txt));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        p(z);
    }
}
