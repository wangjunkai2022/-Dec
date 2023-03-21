package com.manhua.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.b1;
import com.apk.c1;
import com.apk.f6;
import com.apk.i10;
import com.apk.lv;
import com.apk.n2;
import com.apk.p3;
import com.apk.wv;
import com.apk.ze;
import com.apk.zu;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lxj.xpopup.impl.InputConfirmPopupView;
import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicCollectBean;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CreateComicGroupActivity extends f6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public List<ComicCollectBean> f9860do;

    /* renamed from: for  reason: not valid java name */
    public RecyclerView f9861for;

    /* renamed from: if  reason: not valid java name */
    public String f9862if;

    /* renamed from: new  reason: not valid java name */
    public ComicGroupAdapter f9863new;

    /* renamed from: com.manhua.ui.activity.CreateComicGroupActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<List<ComicCollectBean>> {
        public Cdo() {
        }

        @Override // com.apk.c1
        public List<ComicCollectBean> doInBackground() {
            List<ComicCollectBean> m2019new = p3.m2019new(true);
            if (!TextUtils.isEmpty(CreateComicGroupActivity.this.f9862if)) {
                ArrayList arrayList = (ArrayList) m2019new;
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ComicCollectBean comicCollectBean = (ComicCollectBean) it.next();
                    if (CreateComicGroupActivity.this.f9862if.equals(comicCollectBean.getGroupId())) {
                        arrayList.remove(comicCollectBean);
                        break;
                    }
                }
            }
            if (!TextUtils.isEmpty(CreateComicGroupActivity.this.f9862if)) {
                ComicCollectBean comicCollectBean2 = new ComicCollectBean();
                comicCollectBean2.setGroupId("CREATE_BOOKGROUP_TO_SHELF");
                comicCollectBean2.setItemType(3);
                comicCollectBean2.setGroupTitle(ze.q(R.string.main_menu_pop_book_to_shelf));
                ((ArrayList) m2019new).add(0, comicCollectBean2);
            }
            ComicCollectBean comicCollectBean3 = new ComicCollectBean();
            comicCollectBean3.setGroupId("CREATE_BOOKGROUP_CREATE");
            comicCollectBean3.setItemType(3);
            comicCollectBean3.setGroupTitle(ze.q(R.string.main_menu_pop_book_create_group));
            ((ArrayList) m2019new).add(comicCollectBean3);
            return m2019new;
        }

        @Override // com.apk.c1
        public void onPostExecute(List<ComicCollectBean> list) {
            List<ComicCollectBean> list2 = list;
            super.onPostExecute(list2);
            ComicGroupAdapter comicGroupAdapter = CreateComicGroupActivity.this.f9863new;
            if (comicGroupAdapter == null || list2 == null) {
                return;
            }
            comicGroupAdapter.setNewData(list2);
        }
    }

    /* renamed from: com.manhua.ui.activity.CreateComicGroupActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends c1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f9865do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f9867if;

        public Cfor(String str, String str2) {
            this.f9865do = str;
            this.f9867if = str2;
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            List<ComicCollectBean> list = CreateComicGroupActivity.this.f9860do;
            if (list != null && list.size() > 0) {
                for (ComicCollectBean comicCollectBean : CreateComicGroupActivity.this.f9860do) {
                    n2.E(comicCollectBean.getCollectId(), this.f9865do, this.f9867if, true);
                }
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            CreateComicGroupActivity.j(CreateComicGroupActivity.this, true, true);
        }
    }

    /* renamed from: com.manhua.ui.activity.CreateComicGroupActivity$if  reason: invalid class name */
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
            CreateComicGroupActivity.this.l(String.valueOf(System.currentTimeMillis()), str);
        }
    }

    public static void j(CreateComicGroupActivity createComicGroupActivity, boolean z, boolean z2) {
        if (createComicGroupActivity != null) {
            if (z2) {
                ze.V();
            }
            createComicGroupActivity.postDelayed(new i10(createComicGroupActivity, z), 200L);
            return;
        }
        throw null;
    }

    public static void m(Activity activity, List<ComicCollectBean> list, String str, boolean z, boolean z2) {
        Intent intent = new Intent(activity, CreateComicGroupActivity.class);
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
        this.f9860do = (List) getIntent().getSerializableExtra("EXTRA_GROUP_BOOK_LIST_KEY");
        this.f9862if = intent.getStringExtra("EXTRA_GROUP_ID_KEY");
        boolean booleanExtra = intent.getBooleanExtra("EXTRA_LIST_MODE_KEY", false);
        boolean booleanExtra2 = intent.getBooleanExtra("EXTRA_BIG_STYLE_KEY", false);
        if (booleanExtra) {
            i = booleanExtra2 ? R.layout.include_book_shelf_list : R.layout.include_book_shelf_list_small;
            this.f9861for.setLayoutManager(new LinearLayoutManager(this));
        } else {
            if (booleanExtra2) {
                i = R.layout.include_book_shelf_grid;
                i2 = 3;
            } else {
                i = R.layout.include_book_shelf_grid_small;
                i2 = 4;
            }
            this.f9861for.setLayoutManager(new GridLayoutManager(this, i2));
        }
        ComicGroupAdapter comicGroupAdapter = new ComicGroupAdapter(this, null, booleanExtra, booleanExtra2, i);
        this.f9863new = comicGroupAdapter;
        this.f9861for.setAdapter(comicGroupAdapter);
        new b1().m141do(new Cdo());
        this.f9863new.setOnItemClickListener(this);
        this.f9863new.setOnItemChildClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.create_bookgroup_actionbar, R.string.main_menu_pop_book_group);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.activity_bookgroup_recyclerview);
        this.f9861for = recyclerView;
        recyclerView.setHasFixedSize(true);
        ze.m3165else(this.f9861for);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public final void k(int i) {
        ComicCollectBean comicCollectBean = (ComicCollectBean) this.f9863new.getItem(i);
        if (comicCollectBean != null) {
            String groupId = comicCollectBean.getGroupId();
            if ("CREATE_BOOKGROUP_TO_SHELF".equals(groupId)) {
                l("", "");
            } else if ("CREATE_BOOKGROUP_CREATE".equals(groupId)) {
                String q = ze.q(R.string.main_menu_pop_book_create_group);
                String str = ze.q(R.string.main_menu_pop_book_group_title) + " " + this.f9863new.getItemCount();
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
                l(comicCollectBean.getGroupId(), comicCollectBean.getGroupTitle());
            }
        }
    }

    public final void l(String str, String str2) {
        new b1().m141do(new Cfor(str, str2));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        postDelayed(new i10(this, false), 200L);
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
