package com.biquge.ebook.app.ui.activity;

import android.content.ContentValues;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.b1;
import com.apk.c1;
import com.apk.eg;
import com.apk.f6;
import com.apk.f8;
import com.apk.kf;
import com.apk.mf;
import com.apk.ss;
import com.apk.ts;
import com.apk.x4;
import com.apk.ze;
import com.biquge.ebook.app.adapter.MyNewsAdapter;
import com.biquge.ebook.app.bean.InitConfNews;
import com.biquge.ebook.app.ui.activity.MyNewsActivity;
import com.biquge.ebook.app.widget.SwipeItemLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.ui.widget.PublicLoadingView;
import com.swl.gg.ggs.SwlAdHelper;
import com.tencent.bugly.Bugly;
import com.umeng.analytics.pro.ak;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class MyNewsActivity extends f6 implements BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public MyNewsAdapter f6741do;

    /* renamed from: if  reason: not valid java name */
    public x4 f6742if;
    @BindView(R.id.public_loading_view)
    public PublicLoadingView mLoadingView;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: com.biquge.ebook.app.ui.activity.MyNewsActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            x4 x4Var = MyNewsActivity.this.f6742if;
            if (x4Var != null) {
                x4Var.m2977while(true);
            }
            MyNewsActivity.this.postDelayed(new Runnable() { // from class: com.apk.v6
                @Override // java.lang.Runnable
                public final void run() {
                    MyNewsActivity.Cdo.this.m3312for();
                }
            }, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
        }

        /* renamed from: for  reason: not valid java name */
        public /* synthetic */ void m3312for() {
            PtrClassicFrameLayout ptrClassicFrameLayout = MyNewsActivity.this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new f8(this));
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(MyNewsActivity.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MyNewsActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<List<InitConfNews>> {
        public Cif() {
        }

        @Override // com.apk.c1
        public List<InitConfNews> doInBackground() {
            return LitePal.where("delete = ?", Bugly.SDK_IS_DEV).order("nid desc").find(InitConfNews.class);
        }

        @Override // com.apk.c1
        public void onPostExecute(List<InitConfNews> list) {
            List<InitConfNews> list2 = list;
            super.onPostExecute(list2);
            MyNewsAdapter myNewsAdapter = MyNewsActivity.this.f6741do;
            if (myNewsAdapter != null && list2 != null) {
                myNewsAdapter.setNewData(list2);
            }
            PublicLoadingView publicLoadingView = MyNewsActivity.this.mLoadingView;
            if (publicLoadingView != null) {
                publicLoadingView.m3666for();
            }
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_my_news;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_search_activity;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6742if = new x4(this, null);
        MyNewsAdapter myNewsAdapter = new MyNewsAdapter();
        this.f6741do = myNewsAdapter;
        this.mRecyclerView.setAdapter(myNewsAdapter);
        this.f6741do.setOnItemChildClickListener(this);
        j();
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.my_news_actionbar, R.string.main_my_news_txt);
        registerEventBus(this);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.addOnItemTouchListener(new SwipeItemLayout.Cfor(this));
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    public final void j() {
        new b1().m141do(new Cif());
    }

    /* renamed from: k */
    public final void i(InitConfNews initConfNews, int i) {
        try {
            if (initConfNews.isRead()) {
                return;
            }
            int itemCount = this.f6741do.getItemCount();
            boolean z = true;
            for (int i2 = 0; i2 < itemCount; i2++) {
                if (i == i2) {
                    this.f6741do.getItem(i).setRead(true);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("read", Boolean.TRUE);
                    LitePal.updateAll(InitConfNews.class, contentValues, "nid = ?", initConfNews.getNid());
                }
                if (!this.f6741do.getItem(i2).isRead()) {
                    z = false;
                }
            }
            this.f6741do.notifyDataSetChanged();
            if (z) {
                mf.m1712do("REFRESH_CHECK_TASK_RED_KEY", Boolean.FALSE);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
        PublicLoadingView publicLoadingView = this.mLoadingView;
        if (publicLoadingView != null) {
            publicLoadingView.clearAnimation();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("REFRESH_CHECK_TASK_RED_KEY".equals(mfVar.f3028do)) {
            j();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, final int i) {
        if (view.getId() == R.id.item_my_news_layout) {
            final InitConfNews item = this.f6741do.getItem(i);
            if (item != null) {
                String clicktype = item.getClicktype();
                if ("sysweb".equals(clicktype)) {
                    SwlAdHelper.openBrowser(this, item.getTarget(), false);
                } else if (ak.au.equals(clicktype)) {
                    SwlAdHelper.openBrowser(this, item.getTarget(), true);
                } else if ("apk".equals(clicktype)) {
                    if (ze.G(item.getApk_pkg())) {
                        ze.g0(this, item.getApk_pkg());
                    } else {
                        kf.m1482for(this, item.getTarget(), item.getTitle());
                    }
                }
                postDelayed(new Runnable() { // from class: com.apk.w6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyNewsActivity.this.i(item, i);
                    }
                }, 500L);
                return;
            }
            return;
        }
        InitConfNews item2 = this.f6741do.getItem(i);
        if (item2 != null) {
            this.f6741do.remove(i);
            ContentValues contentValues = new ContentValues();
            contentValues.put("read", Boolean.TRUE);
            contentValues.put("delete", "true");
            LitePal.updateAll(InitConfNews.class, contentValues, "nid = ?", item2.getNid());
            i(item2, -1);
        }
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.search_activity_toolbar_search_bt) {
            synchronized (this) {
                try {
                    if (this.f6741do != null && this.f6741do.getItemCount() > 0) {
                        int itemCount = this.f6741do.getItemCount();
                        for (int i = 0; i < itemCount; i++) {
                            InitConfNews item = this.f6741do.getItem(i);
                            if (item != null && item.isRead()) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("delete", "true");
                                LitePal.updateAll(InitConfNews.class, contentValues, "nid = ?", item.getNid());
                            }
                        }
                        j();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.action_search).setVisible(false);
        menu.findItem(R.id.search_activity_toolbar_search_bt).setTitle(ze.q(R.string.tips_clear_read_txt));
        MyNewsAdapter myNewsAdapter = this.f6741do;
        if (myNewsAdapter != null && myNewsAdapter.getItemCount() == 0) {
            menu.findItem(R.id.search_activity_toolbar_search_bt).setVisible(false);
        }
        return super.onPrepareOptionsMenu(menu);
    }
}
