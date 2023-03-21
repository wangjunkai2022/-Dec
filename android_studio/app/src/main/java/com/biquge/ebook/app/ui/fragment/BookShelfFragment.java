package com.biquge.ebook.app.ui.fragment;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cclass;
import com.apk.Cfinally;
import com.apk.b1;
import com.apk.bb;
import com.apk.c1;
import com.apk.cb;
import com.apk.da;
import com.apk.db;
import com.apk.eb;
import com.apk.eg;
import com.apk.et;
import com.apk.fb;
import com.apk.ft;
import com.apk.g1;
import com.apk.gt;
import com.apk.i6;
import com.apk.lv;
import com.apk.ma;
import com.apk.mf;
import com.apk.n2;
import com.apk.nd;
import com.apk.o;
import com.apk.o0;
import com.apk.o4;
import com.apk.p4;
import com.apk.qa;
import com.apk.ss;
import com.apk.t4;
import com.apk.ts;
import com.apk.v0;
import com.apk.v5;
import com.apk.w0;
import com.apk.wv;
import com.apk.yg;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookGroupDetailActivity;
import com.biquge.ebook.app.ui.activity.BookNovelDirActivity;
import com.biquge.ebook.app.ui.activity.CreateBookGroupActivity;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.fragment.BookShelfFragment;
import com.biquge.ebook.app.ui.view.BookMenuPopupView;
import com.biquge.ebook.app.ui.view.MhtgDownloadLayout;
import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;
import com.biquge.ebook.app.ui.webread.view.WebBookDirPopView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.lxj.xpopup.impl.InputConfirmPopupView;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class BookShelfFragment extends qa implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener, BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: case  reason: not valid java name */
    public boolean f7352case;

    /* renamed from: catch  reason: not valid java name */
    public LinearLayoutManager f7353catch;

    /* renamed from: class  reason: not valid java name */
    public LinearLayout f7354class;

    /* renamed from: const  reason: not valid java name */
    public AdViewBangDan f7355const;

    /* renamed from: else  reason: not valid java name */
    public boolean f7356else;

    /* renamed from: final  reason: not valid java name */
    public AdViewRectangle f7357final;

    /* renamed from: for  reason: not valid java name */
    public boolean f7358for;

    /* renamed from: goto  reason: not valid java name */
    public t4 f7359goto;

    /* renamed from: if  reason: not valid java name */
    public View f7360if;
    @BindView(R.id.fragment_shelf_ptr_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.fragment_shelf_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public boolean f7363new;

    /* renamed from: public  reason: not valid java name */
    public BookMenuPopupView f7364public;

    /* renamed from: return  reason: not valid java name */
    public LoadingPopupView f7365return;

    /* renamed from: static  reason: not valid java name */
    public boolean f7366static;

    /* renamed from: super  reason: not valid java name */
    public Cclass f7367super;

    /* renamed from: this  reason: not valid java name */
    public BookGroupAdapter f7368this;

    /* renamed from: throw  reason: not valid java name */
    public View f7369throw;

    /* renamed from: try  reason: not valid java name */
    public long f7370try;

    /* renamed from: while  reason: not valid java name */
    public yg f7371while;

    /* renamed from: break  reason: not valid java name */
    public final List<CollectBook> f7351break = new ArrayList();

    /* renamed from: import  reason: not valid java name */
    public final v5 f7361import = new Cfor();

    /* renamed from: native  reason: not valid java name */
    public final Runnable f7362native = new Runnable() { // from class: com.apk.ka
        @Override // java.lang.Runnable
        public final void run() {
            BookShelfFragment.this.u();
        }
    };

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements et {
        public Ccase() {
        }

        @Override // com.apk.et
        public void onDismiss() {
            yg ygVar = BookShelfFragment.this.f7371while;
            if (ygVar != null) {
                ygVar.f5938try = true;
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            BookShelfFragment.f(BookShelfFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(BookShelfFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements g1 {

        /* renamed from: do  reason: not valid java name */
        public int f7374do;

        /* renamed from: for  reason: not valid java name */
        public final String f7375for;

        /* renamed from: if  reason: not valid java name */
        public CollectBook f7376if;

        /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$else$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements wv {
            public Cdo() {
            }

            @Override // com.apk.wv
            /* renamed from: do */
            public void mo2944do(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                n2.F(Celse.this.f7376if.getCollectId(), Celse.this.f7376if.getGroupId(), str, false);
                ze.V();
            }
        }

        /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$else$for  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cfor implements wv {
            public Cfor() {
            }

            @Override // com.apk.wv
            /* renamed from: do */
            public void mo2944do(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                Celse celse = Celse.this;
                BookShelfFragment.this.f7351break.get(celse.f7374do).setName(str);
                BookGroupAdapter bookGroupAdapter = BookShelfFragment.this.f7368this;
                bookGroupAdapter.notifyItemChanged(bookGroupAdapter.getHeaderLayoutCount() + Celse.this.f7374do);
                n2.G(Celse.this.f7376if.getCollectId(), str);
            }
        }

        /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$else$if  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cif implements ft {
            public Cif() {
            }

            /* renamed from: do  reason: not valid java name */
            public /* synthetic */ void m3370do() {
                List<CollectBook> groupBooks = Celse.this.f7376if.getGroupBooks();
                if (groupBooks == null || groupBooks.size() <= 0) {
                    return;
                }
                for (CollectBook collectBook : groupBooks) {
                    n2.F(collectBook.getCollectId(), "", "", false);
                }
                ze.V();
            }

            @Override // com.apk.ft
            public void onClick() {
                o m1921for = o.m1921for();
                Runnable runnable = new Runnable() { // from class: com.apk.ja
                    @Override // java.lang.Runnable
                    public final void run() {
                        BookShelfFragment.Celse.Cif.this.m3370do();
                    }
                };
                ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.execute(runnable);
                }
            }
        }

        public Celse(int i, CollectBook collectBook, Cdo cdo) {
            this.f7374do = i;
            this.f7376if = collectBook;
            this.f7375for = collectBook.getCollectId();
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            if (this.f7376if == null) {
                int size = BookShelfFragment.this.f7351break.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    CollectBook collectBook = BookShelfFragment.this.f7351break.get(i);
                    if (collectBook.getCollectId().equals(this.f7375for)) {
                        this.f7374do = i;
                        this.f7376if = collectBook;
                        break;
                    }
                    i++;
                }
            }
            CollectBook collectBook2 = this.f7376if;
            if (collectBook2 == null) {
                return;
            }
            boolean z = !collectBook2.isLocalBook();
            int intValue = ((Integer) obj).intValue();
            if (this.f7376if.isGroup()) {
                if (intValue == -1) {
                    i6 supportActivity = BookShelfFragment.this.getSupportActivity();
                    CollectBook collectBook3 = this.f7376if;
                    BookShelfFragment bookShelfFragment = BookShelfFragment.this;
                    BookGroupDetailActivity.v(supportActivity, collectBook3, false, bookShelfFragment.f7358for, bookShelfFragment.f7363new);
                } else if (intValue == 0) {
                    BookShelfFragment.i(BookShelfFragment.this, this.f7374do);
                    BookMenuPopupView bookMenuPopupView = BookShelfFragment.this.f7364public;
                    if (bookMenuPopupView != null) {
                        bookMenuPopupView.m3397break(intValue);
                    }
                    this.f7376if = null;
                } else if (intValue != 1) {
                    if (intValue == 2) {
                        BookShelfFragment bookShelfFragment2 = BookShelfFragment.this;
                        bookShelfFragment2.showTipDialog(bookShelfFragment2.getSupportActivity(), ze.q(R.string.main_menu_pop_is_discard_group), new Cif(), null, true);
                    } else if (intValue != 3) {
                    } else {
                        i6 supportActivity2 = BookShelfFragment.this.getSupportActivity();
                        CollectBook collectBook4 = this.f7376if;
                        BookShelfFragment bookShelfFragment3 = BookShelfFragment.this;
                        BookGroupDetailActivity.v(supportActivity2, collectBook4, true, bookShelfFragment3.f7358for, bookShelfFragment3.f7363new);
                    }
                } else {
                    String q = ze.q(R.string.main_menu_pop_group_please_input_newname);
                    String groupTitle = this.f7376if.getGroupTitle();
                    Context context = BookShelfFragment.this.getContext();
                    lv lvVar = new lv();
                    lvVar.f2938super = Boolean.TRUE;
                    Cdo cdo = new Cdo();
                    lvVar.f2917continue = zu.f6266try;
                    InputConfirmPopupView inputConfirmPopupView = new InputConfirmPopupView(context, 0);
                    inputConfirmPopupView.f9575else = q;
                    inputConfirmPopupView.f9577goto = null;
                    inputConfirmPopupView.f9580this = groupTitle;
                    inputConfirmPopupView.f9589final = groupTitle;
                    inputConfirmPopupView.f9590super = null;
                    inputConfirmPopupView.f9591throw = cdo;
                    inputConfirmPopupView.popupInfo = lvVar;
                    inputConfirmPopupView.show();
                }
            } else if (!z) {
                if (intValue == 0) {
                    BookShelfFragment.i(BookShelfFragment.this, this.f7374do);
                    BookMenuPopupView bookMenuPopupView2 = BookShelfFragment.this.f7364public;
                    if (bookMenuPopupView2 != null) {
                        bookMenuPopupView2.m3397break(intValue);
                    }
                    this.f7376if = null;
                } else if (intValue == 1) {
                    BookNovelDirActivity.j(BookShelfFragment.this.getSupportActivity(), this.f7376if, null);
                } else if (intValue != 2) {
                    if (intValue == 3) {
                        BookShelfFragment.l(BookShelfFragment.this, this.f7376if);
                    } else if (intValue != 4) {
                    } else {
                        BookShelfFragment.m(BookShelfFragment.this, this.f7376if);
                    }
                } else {
                    String q2 = ze.q(R.string.main_menu_pop_book_please_input_newname);
                    String name = this.f7376if.getName();
                    i6 supportActivity3 = BookShelfFragment.this.getSupportActivity();
                    lv lvVar2 = new lv();
                    lvVar2.f2938super = Boolean.TRUE;
                    Cfor cfor = new Cfor();
                    lvVar2.f2917continue = zu.f6266try;
                    InputConfirmPopupView inputConfirmPopupView2 = new InputConfirmPopupView(supportActivity3, 0);
                    inputConfirmPopupView2.f9575else = q2;
                    inputConfirmPopupView2.f9577goto = null;
                    inputConfirmPopupView2.f9580this = name;
                    inputConfirmPopupView2.f9589final = name;
                    inputConfirmPopupView2.f9590super = null;
                    inputConfirmPopupView2.f9591throw = cfor;
                    inputConfirmPopupView2.popupInfo = lvVar2;
                    inputConfirmPopupView2.show();
                }
            } else {
                switch (intValue) {
                    case -1:
                        BookDetailActivity.s(BookShelfFragment.this.getSupportActivity(), this.f7376if);
                        return;
                    case 0:
                        BookShelfFragment.i(BookShelfFragment.this, this.f7374do);
                        BookMenuPopupView bookMenuPopupView3 = BookShelfFragment.this.f7364public;
                        if (bookMenuPopupView3 != null) {
                            bookMenuPopupView3.m3397break(intValue);
                        }
                        this.f7376if = null;
                        return;
                    case 1:
                    default:
                        return;
                    case 2:
                        if (this.f7376if.isWebSite()) {
                            BookShelfFragment.this.getSupportActivity();
                            lv lvVar3 = new lv();
                            WebBookDirPopView webBookDirPopView = new WebBookDirPopView(BookShelfFragment.this.getSupportActivity(), nd.m1853class(this.f7375for));
                            if (webBookDirPopView instanceof CenterPopupView) {
                                lvVar3.f2917continue = zu.f6266try;
                            } else if (webBookDirPopView instanceof BottomPopupView) {
                                lvVar3.f2917continue = zu.f6266try;
                            } else if (webBookDirPopView instanceof AttachPopupView) {
                                lvVar3.f2917continue = zu.f6266try;
                            } else if (webBookDirPopView instanceof ImageViewerPopupView) {
                                lvVar3.f2917continue = zu.f6266try;
                            } else if (webBookDirPopView instanceof PositionPopupView) {
                                lvVar3.f2917continue = zu.f6266try;
                            }
                            webBookDirPopView.popupInfo = lvVar3;
                            webBookDirPopView.show();
                            return;
                        }
                        BookNovelDirActivity.j(BookShelfFragment.this.getSupportActivity(), this.f7376if, null);
                        return;
                    case 3:
                        ze.s(BookShelfFragment.this.getSupportActivity(), this.f7376if.getCollectId(), this.f7376if.getName(), true, true);
                        return;
                    case 4:
                        if (n2.m1817else(BookShelfFragment.this.getSupportActivity())) {
                            return;
                        }
                        o0.m1925else().m1931do(BookShelfFragment.this.getSupportActivity(), this.f7376if.getCollectId(), this.f7376if.getName(), this.f7376if.isWebSite(), true, null);
                        return;
                    case 5:
                        try {
                            if (BookShelfFragment.this.f7369throw == null) {
                                BookShelfFragment.this.f7369throw = ((ViewStub) BookShelfFragment.this.findViewById(R.id.new_share_page_view)).inflate();
                                BookShelfFragment.this.f7369throw.setVisibility(4);
                            }
                            w0.m2882interface(BookShelfFragment.this.mActivity, BookShelfFragment.this.f7369throw, n2.m1809break(this.f7376if), null);
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    case 6:
                        BookShelfFragment.k(BookShelfFragment.this, this.f7376if);
                        return;
                    case 7:
                        BookShelfFragment.l(BookShelfFragment.this, this.f7376if);
                        return;
                    case 8:
                        BookShelfFragment.m(BookShelfFragment.this, this.f7376if);
                        return;
                }
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends v5 {
        public Cfor() {
        }

        /* renamed from: goto  reason: not valid java name */
        public static void m3371goto(String str) {
            ToastUtils.show((CharSequence) str);
        }

        @Override // com.apk.v5
        /* renamed from: case */
        public void mo2774case(final String str) {
            BookShelfFragment.this.getSupportActivity().post(new Runnable() { // from class: com.apk.ia
                @Override // java.lang.Runnable
                public final void run() {
                    BookShelfFragment.Cfor.m3371goto(str);
                }
            });
        }

        @Override // com.apk.v5
        /* renamed from: do */
        public void mo2775do() {
            BookShelfFragment.p(BookShelfFragment.this);
        }

        @Override // com.apk.v5
        /* renamed from: else */
        public void mo2776else(String str) {
            BookShelfFragment.o(BookShelfFragment.this, str);
        }

        @Override // com.apk.v5
        /* renamed from: if */
        public void mo2778if(List<CollectBook> list) {
            BookShelfFragment bookShelfFragment = BookShelfFragment.this;
            bookShelfFragment.f7352case = false;
            bookShelfFragment.f7370try = System.currentTimeMillis();
            try {
                BookShelfFragment.this.f7351break.clear();
                BookShelfFragment.this.f7351break.addAll(list);
                if (BookShelfFragment.this.f7368this != null) {
                    BookShelfFragment.this.f7368this.notifyDataSetChanged();
                }
                BookShelfFragment bookShelfFragment2 = BookShelfFragment.this;
                PtrClassicFrameLayout ptrClassicFrameLayout = bookShelfFragment2.mPtrClassicFrameLayout;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.post(new ma(bookShelfFragment2, false));
                }
                BookShelfFragment.this.y(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
            BookShelfFragment.h(BookShelfFragment.this);
        }

        @Override // com.apk.v5
        /* renamed from: new */
        public void mo2779new(boolean z, int i) {
            BookGroupAdapter bookGroupAdapter;
            BookShelfFragment bookShelfFragment = BookShelfFragment.this;
            if (bookShelfFragment.f7359goto == null || (bookGroupAdapter = bookShelfFragment.f7368this) == null) {
                return;
            }
            bookGroupAdapter.f6333for = z;
            LinkedHashMap<String, CollectBook> linkedHashMap = bookGroupAdapter.f6335new;
            if (linkedHashMap != null) {
                linkedHashMap.clear();
            }
            bookGroupAdapter.notifyDataSetChanged();
            BookShelfFragment.this.y(!z);
            if (z) {
                BookShelfFragment bookShelfFragment2 = BookShelfFragment.this;
                if (bookShelfFragment2.f7371while == null) {
                    bookShelfFragment2.f7371while = new yg(bookShelfFragment2.getSupportActivity(), new eb(bookShelfFragment2));
                }
                bookShelfFragment2.f7371while.showAtLocation(bookShelfFragment2.mRecyclerView, 80, 0, 0);
                bookShelfFragment2.f7371while.m3066do(0, -1);
                return;
            }
            BookShelfFragment bookShelfFragment3 = BookShelfFragment.this;
            yg ygVar = bookShelfFragment3.f7371while;
            if (ygVar == null || !ygVar.isShowing()) {
                return;
            }
            bookShelfFragment3.f7371while.dismiss();
        }

        @Override // com.apk.v5
        /* renamed from: try */
        public void mo2780try(String str) {
            BookShelfFragment.o(BookShelfFragment.this, str);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<Object> {
        public Cif() {
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            BookShelfFragment.this.f7351break.addAll(t4.m2570for());
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            BookShelfFragment.h(BookShelfFragment.this);
            BookShelfFragment.this.q(da.m435this());
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ List f7383do;

        public Cnew(List list) {
            this.f7383do = list;
        }

        @Override // com.apk.ft
        public void onClick() {
            BookShelfFragment.n(BookShelfFragment.this, this.f7383do);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookShelfFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements gt {
        public Ctry() {
        }

        @Override // com.apk.gt
        /* renamed from: do */
        public void mo1044do(BasePopupView basePopupView) {
            yg ygVar = BookShelfFragment.this.f7371while;
            if (ygVar != null) {
                ygVar.f5938try = false;
            }
        }
    }

    public static void f(BookShelfFragment bookShelfFragment) {
        if (bookShelfFragment != null) {
            try {
                if (!bookShelfFragment.f7352case) {
                    bookShelfFragment.getSupportActivity().removeCallbacks(bookShelfFragment.f7362native);
                    bookShelfFragment.getSupportActivity().postDelayed(bookShelfFragment.f7362native, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
                    if (System.currentTimeMillis() - bookShelfFragment.f7370try < 300000) {
                        return;
                    }
                }
                if (bookShelfFragment.f7359goto != null) {
                    t4 t4Var = bookShelfFragment.f7359goto;
                    boolean z = bookShelfFragment.f7352case;
                    if (t4Var == null) {
                        throw null;
                    }
                    new b1().m141do(new p4(t4Var, z));
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

    public static void h(BookShelfFragment bookShelfFragment) {
        if (bookShelfFragment.f7351break.size() == 0) {
            if (bookShelfFragment.f7360if == null) {
                View inflate = ((ViewStub) bookShelfFragment.findViewById(R.id.fragment_book_shelf_empty_layout)).inflate();
                bookShelfFragment.f7360if = inflate;
                ((TextView) inflate.findViewById(R.id.fragment_book_shelf_category_layout)).setOnClickListener(new db(bookShelfFragment));
            }
            bookShelfFragment.f7360if.setVisibility(0);
            bookShelfFragment.y(false);
            return;
        }
        View view = bookShelfFragment.f7360if;
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        bookShelfFragment.f7360if.setVisibility(8);
    }

    public static void i(BookShelfFragment bookShelfFragment, int i) {
        if (bookShelfFragment == null) {
            throw null;
        }
        new b1().m141do(new bb(bookShelfFragment, i));
    }

    public static void k(BookShelfFragment bookShelfFragment, CollectBook collectBook) {
        if (bookShelfFragment != null) {
            bookShelfFragment.showTipDialog(bookShelfFragment.getSupportActivity(), ze.r(R.string.download_is_delete_txt, collectBook.getName()), new fb(bookShelfFragment, collectBook.getCollectId(), collectBook), null, false);
            return;
        }
        throw null;
    }

    public static void l(BookShelfFragment bookShelfFragment, CollectBook collectBook) {
        if (bookShelfFragment != null) {
            ArrayList arrayList = new ArrayList();
            if (collectBook != null) {
                arrayList.add(collectBook);
            }
            bookShelfFragment.r(arrayList);
            return;
        }
        throw null;
    }

    public static void m(BookShelfFragment bookShelfFragment, CollectBook collectBook) {
        if (bookShelfFragment != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(collectBook);
            CreateBookGroupActivity.m(bookShelfFragment.getSupportActivity(), arrayList, "", bookShelfFragment.f7358for, bookShelfFragment.f7363new);
            return;
        }
        throw null;
    }

    public static void n(BookShelfFragment bookShelfFragment, List list) {
        if (bookShelfFragment == null) {
            throw null;
        }
        new b1().m141do(new cb(bookShelfFragment, list));
    }

    public static void o(BookShelfFragment bookShelfFragment, String str) {
        if (bookShelfFragment != null) {
            try {
                if (bookShelfFragment.f7365return == null) {
                    i6 supportActivity = bookShelfFragment.getSupportActivity();
                    lv lvVar = new lv();
                    lvVar.f2924for = Boolean.FALSE;
                    lvVar.f2943try = Boolean.FALSE;
                    lvVar.f2917continue = zu.f6266try;
                    LoadingPopupView loadingPopupView = new LoadingPopupView(supportActivity, 0);
                    loadingPopupView.m3605if(str);
                    loadingPopupView.popupInfo = lvVar;
                    bookShelfFragment.f7365return = loadingPopupView;
                }
                LoadingPopupView loadingPopupView2 = bookShelfFragment.f7365return;
                loadingPopupView2.m3605if(str);
                loadingPopupView2.show();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void p(BookShelfFragment bookShelfFragment) {
        if (bookShelfFragment != null) {
            try {
                if (bookShelfFragment.f7365return == null || !bookShelfFragment.f7365return.isShow()) {
                    return;
                }
                bookShelfFragment.f7365return.dismiss();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public final void A(int i) {
        CollectBook collectBook = this.f7351break.get(i);
        this.f7364public = new BookMenuPopupView(getSupportActivity(), collectBook, new Celse(i, collectBook, null), collectBook.isGroup());
        getSupportActivity();
        lv lvVar = new lv();
        BookMenuPopupView bookMenuPopupView = this.f7364public;
        if (bookMenuPopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (bookMenuPopupView instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (bookMenuPopupView instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (bookMenuPopupView instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (bookMenuPopupView instanceof PositionPopupView) {
            lvVar.f2917continue = zu.f6266try;
        }
        bookMenuPopupView.popupInfo = lvVar;
        bookMenuPopupView.show();
    }

    @Override // com.apk.qa, com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_shelf;
    }

    @Override // com.apk.qa, com.apk.g6
    public void initData() {
        super.initData();
        this.f7359goto = new t4(getSupportActivity(), this.f7361import);
        new b1().m141do(new Cif());
    }

    @Override // com.apk.qa, com.apk.g6
    public void initView() {
        super.initView();
        registerEventBus(this);
        this.mRecyclerView.setNestedScrollingEnabled(false);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AdViewBangDan adViewBangDan = this.f7355const;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
        }
        Cclass cclass = this.f7367super;
        if (cclass != null) {
            cclass.m360try();
        }
        AdViewRectangle adViewRectangle = this.f7357final;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
        }
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        MhtgDownloadLayout mhtgDownloadLayout;
        String str = mfVar.f3028do;
        if ("refresh_shelf_book".equals(str)) {
            t4 t4Var = this.f7359goto;
            if (t4Var != null) {
                new b1().m141do(new o4(t4Var));
            }
        } else if ("SWITCH_FOREGROUND_KEY".equals(str)) {
            if (!((Boolean) mfVar.f3030if).booleanValue() || this.f7368this == null || this.f7351break.size() <= 0) {
                return;
            }
            if (this.mPtrClassicFrameLayout.f4550do == 3) {
                return;
            }
            this.f7352case = false;
            this.f7356else = true;
            z(true);
        } else if ("login_action".equals(str)) {
            Object[] objArr = mfVar.f3029for;
            boolean booleanValue = ((Boolean) objArr[0]).booleanValue();
            String str2 = (String) objArr[1];
            boolean booleanValue2 = ((Boolean) objArr[2]).booleanValue();
            if (booleanValue && booleanValue2) {
                this.f7352case = true;
                this.f7356else = true;
                z(true);
            }
        } else if (!"REFRESH_CARTOON_DOWNLOAD_KEY".equals(str) || (mhtgDownloadLayout = this.f3824do) == null) {
        } else {
            mhtgDownloadLayout.m3407do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.item_list_menu_bt) {
            t(i);
        } else {
            s(i);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        s(i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        return t(i);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        x(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getUserVisibleHint()) {
            x(true);
        }
    }

    public void q(int i) {
        int i2;
        JSONObject jSONObject;
        int i3;
        int i4;
        if (this.f7359goto == null || this.mRecyclerView == null) {
            return;
        }
        boolean z = i < 2;
        this.f7358for = z;
        if (z) {
            try {
                if (i == 0) {
                    this.f7363new = true;
                    i2 = R.layout.include_book_shelf_list;
                } else {
                    this.f7363new = false;
                    i2 = R.layout.include_book_shelf_list_small;
                }
                this.f7368this = new BookGroupAdapter(getSupportActivity(), this.f7351break, this.f7358for, this.f7363new, i2);
                if (this.f7353catch == null) {
                    this.f7353catch = new LinearLayoutManager(getSupportActivity());
                }
                this.mRecyclerView.setLayoutManager(this.f7353catch);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                if (i == 2) {
                    i3 = 3;
                    this.f7363new = true;
                    i4 = R.layout.include_book_shelf_grid;
                } else {
                    i3 = 4;
                    this.f7363new = false;
                    i4 = R.layout.include_book_shelf_grid_small;
                }
                this.f7368this = new BookGroupAdapter(getSupportActivity(), this.f7351break, this.f7358for, this.f7363new, i4);
                this.mRecyclerView.setLayoutManager(new GridLayoutManager(getSupportActivity(), i3));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.mRecyclerView.setAdapter(this.f7368this);
        boolean B = ze.B();
        if (!this.f7356else && ((B && this.f7351break.size() > 0) || v0.m2736try().m2741const())) {
            this.f7356else = true;
            z(true);
        }
        this.f7368this.setOnItemClickListener(this);
        this.f7368this.setOnItemChildClickListener(this);
        this.f7368this.setOnItemLongClickListener(this);
        if (B) {
            try {
                if (this.f7354class == null) {
                    LinearLayout linearLayout = new LinearLayout(getSupportActivity());
                    this.f7354class = linearLayout;
                    linearLayout.setMinimumHeight(1);
                    this.f7354class.setOrientation(1);
                } else if (this.f7354class.getParent() != null && (this.f7354class.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) this.f7354class.getParent()).removeAllViews();
                }
                if (this.f7368this != null) {
                    this.f7368this.addHeaderView(this.f7354class);
                }
                if (Cfinally.m797else().m813interface()) {
                    if (this.f7357final == null) {
                        AdViewRectangle adViewRectangle = new AdViewRectangle(getSupportActivity(), null);
                        this.f7357final = adViewRectangle;
                        adViewRectangle.setAutoRefresh(false);
                        this.f7357final.m3274for(getSupportActivity(), null, "shelfrect");
                        this.f7354class.addView(this.f7357final);
                    }
                } else if (Cfinally.m797else().m814native()) {
                    if (this.f7355const == null) {
                        AdViewBangDan adViewBangDan = new AdViewBangDan(getSupportActivity(), null);
                        this.f7355const = adViewBangDan;
                        adViewBangDan.setAutoRefresh(false);
                        this.f7355const.setLoadSuccessVisible(true);
                        this.f7355const.m3268new(getSupportActivity(), "bsinfonative");
                        this.f7354class.addView(this.f7355const);
                    }
                } else if (Cfinally.m797else().m804class() && this.f7367super == null) {
                    Cclass cclass = new Cclass();
                    this.f7367super = cclass;
                    i6 supportActivity = getSupportActivity();
                    LinearLayout linearLayout2 = this.f7354class;
                    Cfinally m797else = Cfinally.m797else();
                    if (m797else.f1341catch) {
                        jSONObject = m797else.f1342class;
                    } else {
                        jSONObject = m797else.f1343const;
                    }
                    cclass.m357for(supportActivity, linearLayout2, jSONObject, Cfinally.m797else().f1341catch);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public final void r(List<CollectBook> list) {
        if (list != null && list.size() > 0) {
            eg.g(getSupportActivity(), ze.q(R.string.main_delete_if_affirm), new Cnew(list), new Ctry(), new Ccase());
        } else {
            ToastUtils.show((int) R.string.main_please_select_book);
        }
    }

    public final void s(int i) {
        try {
            CollectBook collectBook = this.f7351break.get(i);
            if (this.f7368this.f6333for) {
                if (collectBook.isGroup()) {
                    BookGroupDetailActivity.v(getSupportActivity(), collectBook, true, this.f7358for, this.f7363new);
                } else {
                    this.f7371while.m3066do(this.f7368this.m3277for(i), -1);
                }
            } else if (collectBook.getItemType() == 1) {
                if (collectBook.isNew()) {
                    this.f7371while.m3066do(this.f7368this.m3277for(i), -1);
                }
            } else if (collectBook.isGroup()) {
                BookGroupDetailActivity.v(getSupportActivity(), collectBook, false, this.f7358for, this.f7363new);
            } else if (collectBook.isWebSite()) {
                if (!TextUtils.isEmpty(collectBook.getExternalUrl())) {
                    WebReadActivity.l(getSupportActivity(), collectBook.getExternalUrl(), true, false, collectBook);
                } else {
                    NewBookReadActivity.a0(getSupportActivity(), collectBook, null);
                }
            } else {
                String firstChapterId = collectBook.getFirstChapterId();
                if (TextUtils.isEmpty(firstChapterId)) {
                    firstChapterId = n2.m1819final(collectBook.getCollectId());
                    if (!TextUtils.isEmpty(firstChapterId)) {
                        this.f7351break.get(i).setFirstChapterId(firstChapterId);
                    }
                }
                if (TextUtils.isEmpty(firstChapterId)) {
                    BookDetailActivity.s(getSupportActivity(), collectBook);
                    return;
                }
                collectBook.setFirstChapterId(firstChapterId);
                NewBookReadActivity.a0(getSupportActivity(), collectBook, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        x(z);
    }

    @Override // com.apk.qa
    /* renamed from: synchronized */
    public String mo2111synchronized() {
        return "SOURCE_NOVEL_VALUE";
    }

    public final boolean t(int i) {
        try {
            if (this.f7351break.get(i).getItemType() == 1 || this.f7368this.f6333for) {
                return true;
            }
            A(i);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public /* synthetic */ void u() {
        z(false);
    }

    public /* synthetic */ void v(boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setEnabled(z);
        }
    }

    public /* synthetic */ void w(boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            if (z) {
                ptrClassicFrameLayout.m2541if();
            } else {
                ptrClassicFrameLayout.m2532break();
            }
        }
    }

    public void x(boolean z) {
        if (this.f7359goto == null) {
            return;
        }
        try {
            if (z) {
                if (this.f7366static) {
                    if (this.f7367super != null) {
                        this.f7367super.f664try = false;
                    }
                    if (this.f7355const != null) {
                        this.f7355const.f6294break = false;
                        this.f7355const.mo139do();
                    }
                    if (this.f7357final != null) {
                        this.f7357final.f6316break = false;
                        this.f7357final.mo139do();
                        try {
                            if (this.mRecyclerView != null) {
                                this.mRecyclerView.scrollToPosition(0);
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (this.f7367super != null) {
                this.f7367super.f664try = true;
            }
            if (this.f7355const != null) {
                this.f7355const.f6294break = true;
            }
            if (this.f7357final != null) {
                this.f7357final.f6316break = true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void y(final boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.post(new Runnable() { // from class: com.apk.la
                @Override // java.lang.Runnable
                public final void run() {
                    BookShelfFragment.this.v(z);
                }
            });
        }
    }

    public final void z(boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.post(new ma(this, z));
        }
    }
}
