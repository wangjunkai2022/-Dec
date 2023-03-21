package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.b1;
import com.apk.b6;
import com.apk.c1;
import com.apk.da;
import com.apk.f6;
import com.apk.lv;
import com.apk.mf;
import com.apk.nd;
import com.apk.qd;
import com.apk.v;
import com.apk.w;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.adapter.ChapterSourceAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.ui.webread.view.WebBookDirPopView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.manhua.ui.widget.PublicLoadingView;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes8.dex */
public class ChangeSourceActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public String f6548case;

    /* renamed from: catch  reason: not valid java name */
    public ChapterSourceAdapter f6549catch;

    /* renamed from: do  reason: not valid java name */
    public String f6550do;

    /* renamed from: else  reason: not valid java name */
    public String f6551else;

    /* renamed from: for  reason: not valid java name */
    public String f6552for;

    /* renamed from: goto  reason: not valid java name */
    public WebSiteBean f6553goto;

    /* renamed from: if  reason: not valid java name */
    public String f6554if;
    @BindView(R.id.public_loadingview)
    public PublicLoadingView mLoadingView;
    @BindView(R.id.change_source_rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public String f6555new;

    /* renamed from: try  reason: not valid java name */
    public String f6557try;

    /* renamed from: this  reason: not valid java name */
    public int f6556this = 1;

    /* renamed from: break  reason: not valid java name */
    public final List<WebBook> f6547break = new ArrayList();

    /* renamed from: com.biquge.ebook.app.ui.activity.ChangeSourceActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PublicLoadingView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            ChangeSourceActivity changeSourceActivity = ChangeSourceActivity.this;
            changeSourceActivity.f6556this = 1;
            changeSourceActivity.j();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.ChangeSourceActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends c1<b6<WebBook>> {

        /* renamed from: do  reason: not valid java name */
        public String f6559do = "";

        public Cfor() {
        }

        @Override // com.apk.c1
        public b6<WebBook> doInBackground() {
            ChangeSourceActivity changeSourceActivity = ChangeSourceActivity.this;
            ChapterSourceAdapter chapterSourceAdapter = changeSourceActivity.f6549catch;
            if (chapterSourceAdapter != null && changeSourceActivity.f6553goto != null && chapterSourceAdapter.getItemCount() == 0) {
                ChangeSourceActivity changeSourceActivity2 = ChangeSourceActivity.this;
                changeSourceActivity2.f6549catch.f6347do = nd.m1851case(changeSourceActivity2.f6553goto.getChapterUrl(), ChangeSourceActivity.this.f6553goto);
            }
            ChangeSourceActivity changeSourceActivity3 = ChangeSourceActivity.this;
            this.f6559do = w.m2847finally(changeSourceActivity3.f6554if, changeSourceActivity3.f6552for, changeSourceActivity3.f6556this);
            ChangeSourceActivity changeSourceActivity4 = ChangeSourceActivity.this;
            return qd.m2116goto(changeSourceActivity4.f6554if, changeSourceActivity4.f6552for, changeSourceActivity4.f6556this, true);
        }

        @Override // com.apk.c1
        public void onPostExecute(b6<WebBook> b6Var) {
            b6<WebBook> b6Var2 = b6Var;
            super.onPostExecute(b6Var2);
            if (b6Var2 != null && b6Var2.m152do() != null) {
                b6Var2.m152do().size();
            }
            v m2734do = v.m2734do();
            ChangeSourceActivity changeSourceActivity = ChangeSourceActivity.this;
            String str = changeSourceActivity.f6550do;
            URLEncoder.encode(changeSourceActivity.f6554if);
            ChangeSourceActivity changeSourceActivity2 = ChangeSourceActivity.this;
            String str2 = changeSourceActivity2.f6551else;
            if (m2734do != null) {
                if (changeSourceActivity2.f6556this == 1) {
                    changeSourceActivity2.mLoadingView.m3666for();
                    ChangeSourceActivity changeSourceActivity3 = ChangeSourceActivity.this;
                    if (changeSourceActivity3.f6553goto == null) {
                        if (changeSourceActivity3.f6547break.size() == 0) {
                            ChangeSourceActivity changeSourceActivity4 = ChangeSourceActivity.this;
                            List<WebBook> list = changeSourceActivity4.f6547break;
                            WebBook webBook = new WebBook();
                            try {
                                webBook.setUrl("DEFAULT");
                                webBook.setBookId(changeSourceActivity4.f6550do);
                                webBook.setName(changeSourceActivity4.f6554if);
                                webBook.setAuthor(changeSourceActivity4.f6552for);
                                webBook.setLatestName(changeSourceActivity4.f6557try);
                                webBook.setLatestTime(changeSourceActivity4.f6548case);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            list.add(webBook);
                        }
                    } else {
                        if (changeSourceActivity3.f6547break.size() == 0) {
                            ChangeSourceActivity changeSourceActivity5 = ChangeSourceActivity.this;
                            List<WebBook> list2 = changeSourceActivity5.f6547break;
                            WebBook webBook2 = new WebBook();
                            try {
                                webBook2.setUrl(nd.m1851case(changeSourceActivity5.f6553goto.getChapterUrl(), changeSourceActivity5.f6553goto));
                                webBook2.setBookId(changeSourceActivity5.f6550do);
                                webBook2.setName(changeSourceActivity5.f6554if);
                                webBook2.setAuthor(changeSourceActivity5.f6552for);
                                webBook2.setLatestName(!TextUtils.isEmpty(changeSourceActivity5.f6557try) ? changeSourceActivity5.f6557try : changeSourceActivity5.f6553goto.getLastChapterName());
                                webBook2.setLatestTime(changeSourceActivity5.f6548case);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            list2.add(webBook2);
                        }
                        if (ChangeSourceActivity.this.f6549catch != null && b6Var2 != null && b6Var2.m152do() != null) {
                            Iterator<WebBook> it = b6Var2.m152do().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                WebBook next = it.next();
                                if (next.getUrl().equals(ChangeSourceActivity.this.f6549catch.f6347do)) {
                                    b6Var2.m152do().remove(next);
                                    break;
                                }
                            }
                        }
                    }
                }
                if (b6Var2 != null) {
                    ChangeSourceActivity changeSourceActivity6 = ChangeSourceActivity.this;
                    boolean z = changeSourceActivity6.f6556this == 1;
                    List<WebBook> m152do = b6Var2.m152do();
                    boolean z2 = b6Var2.f247if;
                    int size = m152do == null ? 0 : m152do.size();
                    if (z) {
                        List<WebBook> list3 = changeSourceActivity6.f6547break;
                        if (list3 != null && m152do != null) {
                            list3.addAll(m152do);
                        }
                        ChapterSourceAdapter chapterSourceAdapter = changeSourceActivity6.f6549catch;
                        if (chapterSourceAdapter != null) {
                            chapterSourceAdapter.notifyDataSetChanged();
                            if (z2 && size > 0) {
                                changeSourceActivity6.f6549catch.setEnableLoadMore(true);
                                changeSourceActivity6.f6556this++;
                            } else {
                                changeSourceActivity6.f6549catch.setEnableLoadMore(false);
                            }
                        }
                    } else {
                        if (size > 0) {
                            List<WebBook> list4 = changeSourceActivity6.f6547break;
                            if (list4 != null && m152do != null) {
                                list4.addAll(m152do);
                            }
                            ChapterSourceAdapter chapterSourceAdapter2 = changeSourceActivity6.f6549catch;
                            if (chapterSourceAdapter2 != null) {
                                chapterSourceAdapter2.notifyDataSetChanged();
                            }
                        }
                        ChapterSourceAdapter chapterSourceAdapter3 = changeSourceActivity6.f6549catch;
                        if (chapterSourceAdapter3 != null) {
                            if (z2 && size > 0) {
                                chapterSourceAdapter3.loadMoreComplete();
                                changeSourceActivity6.f6556this++;
                            } else {
                                changeSourceActivity6.f6549catch.loadMoreEnd();
                            }
                        }
                    }
                    if (b6Var2.m152do() == null || b6Var2.m152do().size() != 0) {
                        return;
                    }
                    ToastUtils.show((int) R.string.change_source_empty_tips);
                    return;
                }
                ChapterSourceAdapter chapterSourceAdapter4 = ChangeSourceActivity.this.f6549catch;
                if (chapterSourceAdapter4 != null) {
                    chapterSourceAdapter4.notifyDataSetChanged();
                }
                if (ChangeSourceActivity.this.f6556this == 1) {
                    ToastUtils.show((int) R.string.change_source_error_tips);
                    return;
                }
                return;
            }
            throw null;
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
            ChangeSourceActivity changeSourceActivity = ChangeSourceActivity.this;
            if (changeSourceActivity.f6556this == 1) {
                changeSourceActivity.mLoadingView.m3667if();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.ChangeSourceActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ChangeSourceActivity.this.j();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_change_source;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_public;
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        Intent intent = getIntent();
        this.f6550do = intent.getStringExtra("bookId");
        this.f6554if = intent.getStringExtra("bookName");
        this.f6552for = intent.getStringExtra(NotificationCompat.CarExtender.KEY_AUTHOR);
        this.f6555new = intent.getStringExtra("chapterName");
        this.f6557try = intent.getStringExtra("lastChapterName");
        this.f6548case = intent.getStringExtra("lastChapterTime");
        this.f6551else = intent.getStringExtra("readChapterId");
        this.f6553goto = (WebSiteBean) intent.getSerializableExtra("webSiteBean");
    }

    @Override // com.apk.f6
    public void initData() {
        ChapterSourceAdapter chapterSourceAdapter = new ChapterSourceAdapter(this.f6547break);
        this.f6549catch = chapterSourceAdapter;
        this.mRecyclerView.setAdapter(chapterSourceAdapter);
        this.f6549catch.setOnItemClickListener(this);
        this.f6549catch.setEnableLoadMore(false);
        this.f6549catch.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
        j();
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.change_source_actionbar, this.f6554if);
        registerEventBus(this);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(this, this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mLoadingView.setReloadListener(new Cdo());
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return da.m430public();
    }

    public final void j() {
        new b1().m141do(new Cfor());
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("SP_READ_CLOSE_REPEAT_BOOK".equals(mfVar.f3028do)) {
            finish();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        WebBook.ChaptersBean chaptersBean;
        WebBook item = this.f6549catch.getItem(i);
        if (item != null) {
            if ("DEFAULT".equals(item.getUrl())) {
                CollectBook collectBook = new CollectBook();
                collectBook.setCollectId(item.getBookId());
                collectBook.setName(item.getName());
                BookNovelDirActivity.j(this, collectBook, this.f6551else);
                return;
            }
            lv lvVar = new lv();
            WebSiteBean webSiteBean = new WebSiteBean();
            webSiteBean.setNovelId(item.getBookId());
            webSiteBean.setTitle(item.getName());
            webSiteBean.setAuthor(item.getAuthor());
            webSiteBean.setImg(item.getImg());
            webSiteBean.setDesc(item.getDesc());
            webSiteBean.setFirstChapterUrl(item.getFirsturl());
            webSiteBean.setChapterUrl(item.getUrl());
            webSiteBean.setSearchBook(true);
            webSiteBean.setLastChapterName(item.getLatestName());
            webSiteBean.setLastChapterTime(item.getLatestTime());
            List<WebBook.ChaptersBean> chapters = item.getChapters();
            if (chapters != null && chapters.size() > 0 && (chaptersBean = chapters.get(0)) != null) {
                webSiteBean.setLastChapterName(chaptersBean.getName());
                webSiteBean.setLastChapterUrl(chaptersBean.getUrl());
            }
            WebBookDirPopView webBookDirPopView = new WebBookDirPopView(this, webSiteBean, this.f6555new);
            if (webBookDirPopView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookDirPopView instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookDirPopView instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookDirPopView instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookDirPopView instanceof PositionPopupView) {
                lvVar.f2917continue = zu.f6266try;
            }
            webBookDirPopView.popupInfo = lvVar;
            webBookDirPopView.show();
        }
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.book_detail_to_book_shelf) {
            this.f6556this = 1;
            List<WebBook> list = this.f6547break;
            if (list != null) {
                list.clear();
            }
            j();
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.activity_public_toolbar_search).setVisible(false);
        MenuItem findItem = menu.findItem(R.id.book_detail_to_book_shelf);
        findItem.setTitle(ze.q(R.string.mybooklist_sync_txt));
        findItem.setIcon(0);
        findItem.setVisible(true);
        return super.onPrepareOptionsMenu(menu);
    }
}
