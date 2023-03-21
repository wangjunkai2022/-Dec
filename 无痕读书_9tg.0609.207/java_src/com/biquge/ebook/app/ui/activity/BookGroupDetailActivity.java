package com.biquge.ebook.app.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.b1;
import com.apk.bg;
import com.apk.eg;
import com.apk.et;
import com.apk.f6;
import com.apk.ft;
import com.apk.g1;
import com.apk.gt;
import com.apk.i7;
import com.apk.j7;
import com.apk.k7;
import com.apk.l7;
import com.apk.lv;
import com.apk.m7;
import com.apk.mf;
import com.apk.n2;
import com.apk.n4;
import com.apk.o0;
import com.apk.t4;
import com.apk.v5;
import com.apk.w0;
import com.apk.wv;
import com.apk.yg;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.view.BookMenuPopupView;
import com.biquge.ebook.app.widget.ToggleEditTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.lxj.xpopup.impl.AttachListPopupView;
import com.lxj.xpopup.impl.InputConfirmPopupView;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class BookGroupDetailActivity extends f6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener, BaseQuickAdapter.OnItemChildClickListener, BaseQuickAdapter.OnItemChildLongClickListener {

    /* renamed from: break  reason: not valid java name */
    public BookMenuPopupView f6453break;

    /* renamed from: case  reason: not valid java name */
    public List<CollectBook> f6454case;

    /* renamed from: catch  reason: not valid java name */
    public final v5 f6455catch = new Ctry();

    /* renamed from: class  reason: not valid java name */
    public LoadingPopupView f6456class;

    /* renamed from: do  reason: not valid java name */
    public CollectBook f6457do;

    /* renamed from: else  reason: not valid java name */
    public t4 f6458else;

    /* renamed from: for  reason: not valid java name */
    public boolean f6459for;

    /* renamed from: goto  reason: not valid java name */
    public View f6460goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f6461if;
    @BindView(R.id.pop_bookgroup_detail_edit_ok)
    public TextView mEditFinishTView;
    @BindView(R.id.pop_bookgroup_detail_more)
    public ImageView mMoreView;
    @BindView(R.id.activity_bookgroup_detail_recyclerview)
    public RecyclerView mRecyclerView;
    @BindView(R.id.pop_bookgroup_detail_title)
    public ToggleEditTextView mTitleETView;

    /* renamed from: new  reason: not valid java name */
    public boolean f6462new;

    /* renamed from: this  reason: not valid java name */
    public yg f6463this;

    /* renamed from: try  reason: not valid java name */
    public BookGroupAdapter f6464try;

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends bg {
        public Ccase() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            switch (view.getId()) {
                case R.id.edit_delete_bt /* 2131296745 */:
                    BookGroupDetailActivity bookGroupDetailActivity = BookGroupDetailActivity.this;
                    bookGroupDetailActivity.q(bookGroupDetailActivity.f6464try.m3276do());
                    return;
                case R.id.edit_group_bt /* 2131296746 */:
                    List<CollectBook> m3276do = BookGroupDetailActivity.this.f6464try.m3276do();
                    ArrayList arrayList = (ArrayList) m3276do;
                    if (arrayList.size() > 0) {
                        BookGroupDetailActivity bookGroupDetailActivity2 = BookGroupDetailActivity.this;
                        if (bookGroupDetailActivity2 != null) {
                            CreateBookGroupActivity.m(bookGroupDetailActivity2, m3276do, ((CollectBook) arrayList.get(0)).getGroupId(), bookGroupDetailActivity2.f6459for, bookGroupDetailActivity2.f6462new);
                            return;
                        }
                        throw null;
                    }
                    return;
                case R.id.edit_query /* 2131296747 */:
                default:
                    return;
                case R.id.edit_select_all_bt /* 2131296748 */:
                    int m3278if = BookGroupDetailActivity.this.f6464try.m3278if(true);
                    BookGroupDetailActivity.this.r();
                    yg ygVar = BookGroupDetailActivity.this.f6463this;
                    if (ygVar != null) {
                        ygVar.m3066do(m3278if, m3278if);
                        return;
                    }
                    return;
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ToggleEditTextView.Cif {
        public Cdo() {
        }

        @Override // com.biquge.ebook.app.widget.ToggleEditTextView.Cif
        /* renamed from: do  reason: not valid java name */
        public void mo3307do(String str) {
            CollectBook collectBook;
            if (TextUtils.isEmpty(str) || (collectBook = BookGroupDetailActivity.this.f6457do) == null) {
                return;
            }
            n2.F(collectBook.getCollectId(), BookGroupDetailActivity.this.f6457do.getGroupId(), str, true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements g1 {

        /* renamed from: do  reason: not valid java name */
        public int f6467do;

        /* renamed from: for  reason: not valid java name */
        public final String f6468for;

        /* renamed from: if  reason: not valid java name */
        public CollectBook f6469if;

        /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$else$do  reason: invalid class name */
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
                Celse celse = Celse.this;
                BookGroupDetailActivity.this.f6454case.get(celse.f6467do).setName(str);
                BookGroupAdapter bookGroupAdapter = BookGroupDetailActivity.this.f6464try;
                bookGroupAdapter.notifyItemChanged(bookGroupAdapter.getHeaderLayoutCount() + Celse.this.f6467do);
                n2.G(Celse.this.f6469if.getCollectId(), str);
            }
        }

        public Celse(int i, CollectBook collectBook, Cdo cdo) {
            this.f6467do = i;
            this.f6469if = collectBook;
            this.f6468for = collectBook.getCollectId();
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            if (this.f6469if == null) {
                int size = BookGroupDetailActivity.this.f6454case.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    CollectBook collectBook = BookGroupDetailActivity.this.f6454case.get(i);
                    if (collectBook.getCollectId().equals(this.f6468for)) {
                        this.f6467do = i;
                        this.f6469if = collectBook;
                        break;
                    }
                    i++;
                }
            }
            CollectBook collectBook2 = this.f6469if;
            if (collectBook2 == null) {
                return;
            }
            boolean z = !collectBook2.isLocalBook();
            int intValue = ((Integer) obj).intValue();
            if (z) {
                switch (intValue) {
                    case -1:
                        BookDetailActivity.r(BookGroupDetailActivity.this, n2.m1809break(this.f6469if));
                        return;
                    case 0:
                        BookGroupDetailActivity.m(BookGroupDetailActivity.this, this.f6469if);
                        BookMenuPopupView bookMenuPopupView = BookGroupDetailActivity.this.f6453break;
                        if (bookMenuPopupView != null) {
                            bookMenuPopupView.m3397break(intValue);
                        }
                        this.f6469if = null;
                        return;
                    case 1:
                    default:
                        return;
                    case 2:
                        BookNovelDirActivity.j(BookGroupDetailActivity.this, this.f6469if, null);
                        return;
                    case 3:
                        ze.s(BookGroupDetailActivity.this, this.f6469if.getCollectId(), this.f6469if.getName(), true, true);
                        return;
                    case 4:
                        if (n2.m1817else(BookGroupDetailActivity.this)) {
                            return;
                        }
                        o0.m1925else().m1931do(BookGroupDetailActivity.this, this.f6469if.getCollectId(), this.f6469if.getName(), this.f6469if.isWebSite(), true, null);
                        return;
                    case 5:
                        try {
                            if (BookGroupDetailActivity.this.f6460goto == null) {
                                BookGroupDetailActivity.this.f6460goto = ((ViewStub) BookGroupDetailActivity.this.findViewById(R.id.new_share_page_view)).inflate();
                                BookGroupDetailActivity.this.f6460goto.setVisibility(4);
                            }
                            w0.m2882interface(BookGroupDetailActivity.this, BookGroupDetailActivity.this.f6460goto, n2.m1809break(this.f6469if), null);
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    case 6:
                        BookGroupDetailActivity.n(BookGroupDetailActivity.this, this.f6469if);
                        return;
                    case 7:
                        BookGroupDetailActivity.o(BookGroupDetailActivity.this, this.f6469if);
                        return;
                    case 8:
                        BookGroupDetailActivity.p(BookGroupDetailActivity.this, this.f6469if);
                        return;
                }
            } else if (intValue == 0) {
                BookGroupDetailActivity.m(BookGroupDetailActivity.this, this.f6469if);
                BookMenuPopupView bookMenuPopupView2 = BookGroupDetailActivity.this.f6453break;
                if (bookMenuPopupView2 != null) {
                    bookMenuPopupView2.m3397break(intValue);
                }
                this.f6469if = null;
            } else if (intValue == 1) {
                BookNovelDirActivity.j(BookGroupDetailActivity.this, this.f6469if, null);
            } else if (intValue != 2) {
                if (intValue == 3) {
                    BookGroupDetailActivity.o(BookGroupDetailActivity.this, this.f6469if);
                } else if (intValue != 4) {
                } else {
                    BookGroupDetailActivity.p(BookGroupDetailActivity.this, this.f6469if);
                }
            } else {
                String q = ze.q(R.string.main_menu_pop_book_please_input_newname);
                String name = this.f6469if.getName();
                BookGroupDetailActivity bookGroupDetailActivity = BookGroupDetailActivity.this;
                lv lvVar = new lv();
                lvVar.f2938super = Boolean.TRUE;
                Cdo cdo = new Cdo();
                lvVar.f2917continue = zu.f6266try;
                InputConfirmPopupView inputConfirmPopupView = new InputConfirmPopupView(bookGroupDetailActivity, 0);
                inputConfirmPopupView.f9575else = q;
                inputConfirmPopupView.f9577goto = null;
                inputConfirmPopupView.f9580this = name;
                inputConfirmPopupView.f9589final = name;
                inputConfirmPopupView.f9590super = null;
                inputConfirmPopupView.f9591throw = cdo;
                inputConfirmPopupView.popupInfo = lvVar;
                inputConfirmPopupView.show();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements gt {
        public Cfor() {
        }

        @Override // com.apk.gt
        /* renamed from: do */
        public void mo1044do(BasePopupView basePopupView) {
            yg ygVar = BookGroupDetailActivity.this.f6463this;
            if (ygVar != null) {
                ygVar.f5938try = false;
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ List f6473do;

        public Cif(List list) {
            this.f6473do = list;
        }

        @Override // com.apk.ft
        public void onClick() {
            BookGroupDetailActivity.i(BookGroupDetailActivity.this, this.f6473do);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements et {
        public Cnew() {
        }

        @Override // com.apk.et
        public void onDismiss() {
            yg ygVar = BookGroupDetailActivity.this.f6463this;
            if (ygVar != null) {
                ygVar.f5938try = true;
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends v5 {
        public Ctry() {
        }

        @Override // com.apk.v5
        /* renamed from: do */
        public void mo2775do() {
            BookGroupDetailActivity.l(BookGroupDetailActivity.this);
        }

        @Override // com.apk.v5
        /* renamed from: for */
        public void mo2777for(List<CollectBook> list) {
            if (list != null) {
                BookGroupDetailActivity bookGroupDetailActivity = BookGroupDetailActivity.this;
                bookGroupDetailActivity.f6454case = list;
                BookGroupAdapter bookGroupAdapter = bookGroupDetailActivity.f6464try;
                if (bookGroupAdapter != null) {
                    bookGroupAdapter.setNewData(list);
                    BookGroupDetailActivity bookGroupDetailActivity2 = BookGroupDetailActivity.this;
                    if (bookGroupDetailActivity2.f6461if) {
                        bookGroupDetailActivity2.f6455catch.mo2779new(true, -1);
                    }
                    BookGroupDetailActivity bookGroupDetailActivity3 = BookGroupDetailActivity.this;
                    BookGroupAdapter bookGroupAdapter2 = bookGroupDetailActivity3.f6464try;
                    if (bookGroupAdapter2 != null) {
                        bookGroupAdapter2.setOnItemClickListener(bookGroupDetailActivity3);
                        bookGroupDetailActivity3.f6464try.setOnItemLongClickListener(bookGroupDetailActivity3);
                        bookGroupDetailActivity3.f6464try.setOnItemChildClickListener(bookGroupDetailActivity3);
                        bookGroupDetailActivity3.f6464try.setOnItemChildLongClickListener(bookGroupDetailActivity3);
                    }
                }
                BookGroupDetailActivity.this.f6461if = false;
            }
        }

        @Override // com.apk.v5
        /* renamed from: new */
        public void mo2779new(boolean z, int i) {
            try {
                if (BookGroupDetailActivity.this.f6464try != null) {
                    BookGroupAdapter bookGroupAdapter = BookGroupDetailActivity.this.f6464try;
                    bookGroupAdapter.f6333for = z;
                    LinkedHashMap<String, CollectBook> linkedHashMap = bookGroupAdapter.f6335new;
                    if (linkedHashMap != null) {
                        linkedHashMap.clear();
                    }
                    bookGroupAdapter.notifyDataSetChanged();
                }
                if (z) {
                    BookGroupDetailActivity bookGroupDetailActivity = BookGroupDetailActivity.this;
                    bookGroupDetailActivity.r();
                    if (bookGroupDetailActivity.f6463this != null) {
                        bookGroupDetailActivity.post(new m7(bookGroupDetailActivity));
                    }
                    if (i >= 0) {
                        BookGroupDetailActivity.this.r();
                        if (BookGroupDetailActivity.this.f6463this != null) {
                            BookGroupDetailActivity.this.f6463this.m3066do(BookGroupDetailActivity.this.f6464try.m3277for(i), -1);
                        }
                    }
                } else {
                    BookGroupDetailActivity bookGroupDetailActivity2 = BookGroupDetailActivity.this;
                    bookGroupDetailActivity2.r();
                    yg ygVar = bookGroupDetailActivity2.f6463this;
                    if (ygVar != null && ygVar.isShowing()) {
                        bookGroupDetailActivity2.f6463this.dismiss();
                    }
                }
                BookGroupDetailActivity.j(BookGroupDetailActivity.this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.v5
        /* renamed from: try */
        public void mo2780try(String str) {
            BookGroupDetailActivity.k(BookGroupDetailActivity.this, str);
        }
    }

    public static void i(BookGroupDetailActivity bookGroupDetailActivity, List list) {
        if (bookGroupDetailActivity == null) {
            throw null;
        }
        new b1().m141do(new l7(bookGroupDetailActivity, list));
    }

    public static void j(BookGroupDetailActivity bookGroupDetailActivity) {
        if (bookGroupDetailActivity != null) {
            try {
                if (bookGroupDetailActivity.f6464try.f6333for) {
                    bookGroupDetailActivity.mMoreView.setVisibility(8);
                    bookGroupDetailActivity.mEditFinishTView.setVisibility(0);
                    bookGroupDetailActivity.mRecyclerView.setPadding(0, 0, 0, eg.m587catch(50.0f));
                } else {
                    bookGroupDetailActivity.mMoreView.setVisibility(0);
                    bookGroupDetailActivity.mEditFinishTView.setVisibility(8);
                    bookGroupDetailActivity.mRecyclerView.setPadding(0, 0, 0, 0);
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void k(BookGroupDetailActivity bookGroupDetailActivity, String str) {
        if (bookGroupDetailActivity != null) {
            try {
                if (bookGroupDetailActivity.f6456class == null) {
                    lv lvVar = new lv();
                    lvVar.f2924for = Boolean.FALSE;
                    lvVar.f2943try = Boolean.FALSE;
                    lvVar.f2917continue = zu.f6266try;
                    LoadingPopupView loadingPopupView = new LoadingPopupView(bookGroupDetailActivity, 0);
                    loadingPopupView.m3605if(str);
                    loadingPopupView.popupInfo = lvVar;
                    bookGroupDetailActivity.f6456class = loadingPopupView;
                }
                LoadingPopupView loadingPopupView2 = bookGroupDetailActivity.f6456class;
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

    public static void l(BookGroupDetailActivity bookGroupDetailActivity) {
        if (bookGroupDetailActivity != null) {
            try {
                if (bookGroupDetailActivity.f6456class == null || !bookGroupDetailActivity.f6456class.isShow()) {
                    return;
                }
                bookGroupDetailActivity.f6456class.dismiss();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void m(BookGroupDetailActivity bookGroupDetailActivity, CollectBook collectBook) {
        if (bookGroupDetailActivity != null) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(collectBook);
            new b1().m141do(new i7(bookGroupDetailActivity, linkedList));
            return;
        }
        throw null;
    }

    public static void n(BookGroupDetailActivity bookGroupDetailActivity, CollectBook collectBook) {
        if (bookGroupDetailActivity != null) {
            bookGroupDetailActivity.showTipDialog(bookGroupDetailActivity, bookGroupDetailActivity.getString(R.string.download_is_delete_txt, new Object[]{collectBook.getName()}), new k7(bookGroupDetailActivity, collectBook.getCollectId(), collectBook), null, false);
            return;
        }
        throw null;
    }

    public static void o(BookGroupDetailActivity bookGroupDetailActivity, CollectBook collectBook) {
        if (bookGroupDetailActivity != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(collectBook);
            bookGroupDetailActivity.q(arrayList);
            return;
        }
        throw null;
    }

    public static void p(BookGroupDetailActivity bookGroupDetailActivity, CollectBook collectBook) {
        if (bookGroupDetailActivity != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(collectBook);
            CreateBookGroupActivity.m(bookGroupDetailActivity, arrayList, ((CollectBook) arrayList.get(0)).getGroupId(), bookGroupDetailActivity.f6459for, bookGroupDetailActivity.f6462new);
            return;
        }
        throw null;
    }

    public static void v(Activity activity, CollectBook collectBook, boolean z, boolean z2, boolean z3) {
        Intent intent = new Intent(activity, BookGroupDetailActivity.class);
        intent.putExtra("EXTRA_KEY", collectBook);
        intent.putExtra("EXTRA_IS_EDIT_KEY", z);
        intent.putExtra("EXTRA_LIST_MODE_KEY", z2);
        intent.putExtra("EXTRA_BIG_STYLE_KEY", z3);
        activity.startActivity(intent);
        activity.overridePendingTransition(R.anim.in_from_up, R.anim.in_to_down);
    }

    @Override // com.apk.f6, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getRawY() >= eg.m587catch(70.0f) && this.mTitleETView.m3524do()) {
            this.mTitleETView.m3525if(this);
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.apk.f6, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.in_to_down, R.anim.out_to_down);
        ze.V();
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_bookgroup_detail;
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        Intent intent = getIntent();
        CollectBook collectBook = (CollectBook) intent.getSerializableExtra("EXTRA_KEY");
        this.f6457do = collectBook;
        if (collectBook == null) {
            this.f6457do = new CollectBook();
        }
        this.f6461if = intent.getBooleanExtra("EXTRA_IS_EDIT_KEY", false);
        this.f6459for = intent.getBooleanExtra("EXTRA_LIST_MODE_KEY", false);
        this.f6462new = intent.getBooleanExtra("EXTRA_BIG_STYLE_KEY", false);
    }

    @Override // com.apk.f6
    public void initData() {
        int i;
        int i2;
        if (this.f6459for) {
            i = this.f6462new ? R.layout.include_book_shelf_list : R.layout.include_book_shelf_list_small;
            this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        } else {
            if (this.f6462new) {
                i = R.layout.include_book_shelf_grid;
                i2 = 3;
            } else {
                i = R.layout.include_book_shelf_grid_small;
                i2 = 4;
            }
            this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, i2));
        }
        BookGroupAdapter bookGroupAdapter = new BookGroupAdapter(this, null, this.f6459for, this.f6462new, i);
        this.f6464try = bookGroupAdapter;
        this.mRecyclerView.setAdapter(bookGroupAdapter);
        this.f6458else = new t4(this, this.f6455catch);
        u();
    }

    @Override // com.apk.f6
    public void initView() {
        this.mTitleETView.setText(this.f6457do.getGroupTitle());
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mTitleETView.setOnEditFinishListener(new Cdo());
        registerEventBus(this);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    @OnClick({R.id.pop_bookgroup_detail_back, R.id.pop_bookgroup_detail_more, R.id.pop_bookgroup_detail_edit_ok})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.pop_bookgroup_detail_back /* 2131297299 */:
                onBackPressed();
                return;
            case R.id.pop_bookgroup_detail_edit_ok /* 2131297300 */:
                this.f6455catch.mo2779new(false, -1);
                return;
            case R.id.pop_bookgroup_detail_more /* 2131297301 */:
                if (this.mTitleETView.m3524do()) {
                    this.mTitleETView.m3525if(this);
                    return;
                }
                String[] strArr = {ze.q(R.string.main_edit_txt), ze.q(R.string.main_menu_pop_discard_group)};
                int[] iArr = {R.drawable.icon_shelf_menu_edit, R.drawable.icon_shelf_menu_remove};
                lv lvVar = new lv();
                lvVar.f2943try = Boolean.TRUE;
                lvVar.f2920else = this.mMoreView;
                j7 j7Var = new j7(this);
                lvVar.f2917continue = zu.f6266try;
                AttachListPopupView attachListPopupView = new AttachListPopupView(this, 0, 0);
                attachListPopupView.f9538super = strArr;
                attachListPopupView.f9539throw = iArr;
                attachListPopupView.f9540while = j7Var;
                attachListPopupView.popupInfo = lvVar;
                attachListPopupView.show();
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        List list;
        super.onActivityResult(i, i2, intent);
        if (i != 112 || i2 != -1 || intent == null || (list = (List) intent.getSerializableExtra("data")) == null) {
            return;
        }
        List<CollectBook> list2 = this.f6454case;
        if (list2 != null) {
            list2.removeAll(list);
        }
        BookGroupAdapter bookGroupAdapter = this.f6464try;
        if (bookGroupAdapter != null) {
            bookGroupAdapter.notifyDataSetChanged();
        }
        this.f6455catch.mo2779new(false, -1);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mTitleETView.m3524do()) {
            this.mTitleETView.m3525if(this);
            return;
        }
        BookGroupAdapter bookGroupAdapter = this.f6464try;
        if (bookGroupAdapter != null ? bookGroupAdapter.f6333for : false) {
            this.f6455catch.mo2779new(false, -1);
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("refresh_shelf_book".equals(mfVar.f3028do)) {
            u();
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

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildLongClickListener
    public boolean onItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        t(i);
        return true;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        s(i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        t(i);
        return true;
    }

    public final void q(List<CollectBook> list) {
        if (list != null && list.size() > 0) {
            eg.g(this, ze.q(R.string.main_delete_if_affirm), new Cif(list), new Cfor(), new Cnew());
        } else {
            ToastUtils.show((int) R.string.main_please_select_book);
        }
    }

    public final void r() {
        if (this.f6463this == null) {
            this.f6463this = new yg(this, new Ccase());
        }
    }

    public final void s(int i) {
        try {
            if (this.f6464try.f6333for) {
                r();
                if (this.f6463this != null) {
                    this.f6463this.m3066do(this.f6464try.m3277for(i), -1);
                    return;
                }
                return;
            }
            CollectBook collectBook = (CollectBook) this.f6464try.getItem(i);
            String firstChapterId = collectBook.getFirstChapterId();
            if (TextUtils.isEmpty(firstChapterId)) {
                firstChapterId = n2.m1819final(collectBook.getCollectId());
                if (!TextUtils.isEmpty(firstChapterId)) {
                    ((CollectBook) this.f6464try.getItem(i)).setFirstChapterId(firstChapterId);
                }
            }
            if (TextUtils.isEmpty(firstChapterId)) {
                BookDetailActivity.r(this, n2.m1809break(collectBook));
                return;
            }
            collectBook.setFirstChapterId(firstChapterId);
            NewBookReadActivity.a0(this, collectBook, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final boolean t(int i) {
        BookGroupAdapter bookGroupAdapter = this.f6464try;
        if (bookGroupAdapter.f6333for) {
            return true;
        }
        CollectBook collectBook = (CollectBook) bookGroupAdapter.getItem(i);
        this.f6453break = new BookMenuPopupView(this, collectBook, new Celse(i, collectBook, null), false);
        lv lvVar = new lv();
        BookMenuPopupView bookMenuPopupView = this.f6453break;
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
        return true;
    }

    public final void u() {
        t4 t4Var = this.f6458else;
        if (t4Var != null) {
            String groupId = this.f6457do.getGroupId();
            if (t4Var == null) {
                throw null;
            }
            new b1().m141do(new n4(t4Var, groupId));
        }
    }
}
