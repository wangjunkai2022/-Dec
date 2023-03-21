package com.biquge.ebook.app.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.b1;
import com.apk.c1;
import com.apk.f6;
import com.apk.lv;
import com.apk.n2;
import com.apk.o7;
import com.apk.t4;
import com.apk.wv;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lxj.xpopup.impl.InputConfirmPopupView;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class CreateBookGroupActivity extends f6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public List<CollectBook> f6589do;

    /* renamed from: for  reason: not valid java name */
    public BookGroupAdapter f6590for;

    /* renamed from: if  reason: not valid java name */
    public String f6591if;
    @BindView(R.id.activity_bookgroup_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: com.biquge.ebook.app.ui.activity.CreateBookGroupActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<List<CollectBook>> {
        public Cdo() {
        }

        @Override // com.apk.c1
        public List<CollectBook> doInBackground() {
            List<CollectBook> m2571new = t4.m2571new(true);
            if (!TextUtils.isEmpty(CreateBookGroupActivity.this.f6591if)) {
                ArrayList arrayList = (ArrayList) m2571new;
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    CollectBook collectBook = (CollectBook) it.next();
                    if (CreateBookGroupActivity.this.f6591if.equals(collectBook.getGroupId())) {
                        arrayList.remove(collectBook);
                        break;
                    }
                }
            }
            if (!TextUtils.isEmpty(CreateBookGroupActivity.this.f6591if)) {
                CollectBook collectBook2 = new CollectBook();
                collectBook2.setGroupId("CREATE_BOOKGROUP_TO_SHELF");
                collectBook2.setItemType(3);
                collectBook2.setGroupTitle(ze.q(R.string.main_menu_pop_book_to_shelf));
                ((ArrayList) m2571new).add(0, collectBook2);
            }
            CollectBook collectBook3 = new CollectBook();
            collectBook3.setGroupId("CREATE_BOOKGROUP_CREATE");
            collectBook3.setItemType(3);
            collectBook3.setGroupTitle(ze.q(R.string.main_menu_pop_book_create_group));
            ((ArrayList) m2571new).add(collectBook3);
            return m2571new;
        }

        @Override // com.apk.c1
        public void onPostExecute(List<CollectBook> list) {
            List<CollectBook> list2 = list;
            super.onPostExecute(list2);
            BookGroupAdapter bookGroupAdapter = CreateBookGroupActivity.this.f6590for;
            if (bookGroupAdapter == null || list2 == null) {
                return;
            }
            bookGroupAdapter.setNewData(list2);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.CreateBookGroupActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends c1<Object> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6593do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f6595if;

        public Cfor(String str, String str2) {
            this.f6593do = str;
            this.f6595if = str2;
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            List<CollectBook> list = CreateBookGroupActivity.this.f6589do;
            if (list != null && list.size() > 0) {
                for (CollectBook collectBook : CreateBookGroupActivity.this.f6589do) {
                    n2.F(collectBook.getCollectId(), this.f6593do, this.f6595if, true);
                }
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            CreateBookGroupActivity.j(CreateBookGroupActivity.this, true, true);
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.CreateBookGroupActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements wv {
        public Cif() {
        }

        @Override // com.apk.wv
        /* renamed from: do */
        public void mo2944do(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            CreateBookGroupActivity.this.l(String.valueOf(System.currentTimeMillis()), str);
        }
    }

    public static void j(CreateBookGroupActivity createBookGroupActivity, boolean z, boolean z2) {
        if (createBookGroupActivity != null) {
            if (z2) {
                ze.V();
            }
            createBookGroupActivity.postDelayed(new o7(createBookGroupActivity, z), 200L);
            return;
        }
        throw null;
    }

    public static void m(Activity activity, List<CollectBook> list, String str, boolean z, boolean z2) {
        Intent intent = new Intent(activity, CreateBookGroupActivity.class);
        intent.putExtra("EXTRA_GROUP_BOOK_LIST_KEY", (Serializable) list);
        intent.putExtra("EXTRA_GROUP_ID_KEY", str);
        intent.putExtra("EXTRA_LIST_MODE_KEY", z);
        intent.putExtra("EXTRA_BIG_STYLE_KEY", z2);
        activity.startActivityForResult(intent, 112);
        activity.overridePendingTransition(R.anim.in_from_up, R.anim.in_to_down);
    }

    @Override // com.apk.f6, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.in_to_down, R.anim.out_to_down);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_create_bookgroup;
    }

    @Override // com.apk.f6
    public void initData() {
        int i;
        int i2;
        Intent intent = getIntent();
        this.f6589do = (List) getIntent().getSerializableExtra("EXTRA_GROUP_BOOK_LIST_KEY");
        this.f6591if = intent.getStringExtra("EXTRA_GROUP_ID_KEY");
        boolean booleanExtra = intent.getBooleanExtra("EXTRA_LIST_MODE_KEY", false);
        boolean booleanExtra2 = intent.getBooleanExtra("EXTRA_BIG_STYLE_KEY", false);
        if (booleanExtra) {
            i = booleanExtra2 ? R.layout.include_book_shelf_list : R.layout.include_book_shelf_list_small;
            this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        } else {
            if (booleanExtra2) {
                i = R.layout.include_book_shelf_grid;
                i2 = 3;
            } else {
                i = R.layout.include_book_shelf_grid_small;
                i2 = 4;
            }
            this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, i2));
        }
        BookGroupAdapter bookGroupAdapter = new BookGroupAdapter(this, null, booleanExtra, booleanExtra2, i);
        this.f6590for = bookGroupAdapter;
        this.mRecyclerView.setAdapter(bookGroupAdapter);
        new b1().m141do(new Cdo());
        this.f6590for.setOnItemClickListener(this);
        this.f6590for.setOnItemChildClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.create_bookgroup_actionbar, R.string.main_menu_pop_book_group);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public final void k(int i) {
        CollectBook collectBook = (CollectBook) this.f6590for.getItem(i);
        String groupId = collectBook.getGroupId();
        if ("CREATE_BOOKGROUP_TO_SHELF".equals(groupId)) {
            l("", "");
        } else if ("CREATE_BOOKGROUP_CREATE".equals(groupId)) {
            String q = ze.q(R.string.main_menu_pop_book_create_group);
            String str = ze.q(R.string.main_menu_pop_book_group_title) + " " + this.f6590for.getItemCount();
            lv lvVar = new lv();
            lvVar.f2938super = Boolean.TRUE;
            Cif cif = new Cif();
            lvVar.f2917continue = zu.f6266try;
            InputConfirmPopupView inputConfirmPopupView = new InputConfirmPopupView(this, 0);
            inputConfirmPopupView.f9575else = q;
            inputConfirmPopupView.f9577goto = null;
            inputConfirmPopupView.f9580this = str;
            inputConfirmPopupView.f9589final = str;
            inputConfirmPopupView.f9590super = null;
            inputConfirmPopupView.f9591throw = cif;
            inputConfirmPopupView.popupInfo = lvVar;
            inputConfirmPopupView.show();
        } else {
            l(collectBook.getGroupId(), collectBook.getGroupTitle());
        }
    }

    public final void l(String str, String str2) {
        new b1().m141do(new Cfor(str, str2));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        postDelayed(new o7(this, false), 200L);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        k(i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        k(i);
    }
}
