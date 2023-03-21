package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.hf;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.ui.fragment.BookDownloadFragment;
import com.biquge.ebook.app.widget.HeaderView;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.manhua.ui.fragment.ComicDownloadFragment;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class DownloadManagerActivity extends f6 {
    @BindView(R.id.downloadmanager_actionbar)
    public HeaderView mHeaderView;
    public b40 mIndicator;
    public TitleIndicatorView mTitleIndicatorView;
    @BindView(R.id.activity_download_viewPager)
    public SViewPager mViewPager;

    /* renamed from: com.biquge.ebook.app.ui.activity.DownloadManagerActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements TitleIndicatorView.Cif {
        public Cdo() {
        }

        @Override // com.biquge.ebook.app.widget.TitleIndicatorView.Cif
        /* renamed from: do  reason: not valid java name */
        public void mo3308do(hf hfVar, boolean z) {
            DownloadManagerActivity.this.invalidateOptionsMenu();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_download_manager;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_public;
    }

    @Override // com.apk.f6
    public void initData() {
        ArrayList arrayList = new ArrayList();
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK) {
            arrayList.add(new BookDownloadFragment());
        } else if (hfVar == hf.COMIC) {
            arrayList.add(new ComicDownloadFragment());
        } else if (hfVar == hf.BOOK_COMIC) {
            arrayList.add(new BookDownloadFragment());
            arrayList.add(new ComicDownloadFragment());
        } else if (hfVar == hf.COMIC_BOOK) {
            arrayList.add(new ComicDownloadFragment());
            arrayList.add(new BookDownloadFragment());
        }
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        e40 e40Var = new e40(this.mIndicator, this.mViewPager);
        e40Var.m536do(new y30(getSupportFragmentManager(), ze.e(), arrayList));
        this.mTitleIndicatorView.m3523if(e40Var, R.string.main_cache_manager_txt, true);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(this.mHeaderView);
        TitleIndicatorView titleIndicatorView = this.mHeaderView.getTitleIndicatorView();
        this.mTitleIndicatorView = titleIndicatorView;
        this.mIndicator = titleIndicatorView.getIndicator();
        this.mTitleIndicatorView.setChangeTabListener(new Cdo());
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.book_detail_to_book_shelf) {
            startActivity(new Intent(this, DownloadTxtListActivity.class));
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.activity_public_toolbar_search).setVisible(false);
        MenuItem findItem = menu.findItem(R.id.book_detail_to_book_shelf);
        findItem.setTitle(ze.q(R.string.download_cache_external_txt));
        findItem.setIcon(0);
        findItem.setVisible(true);
        return super.onPrepareOptionsMenu(menu);
    }
}
