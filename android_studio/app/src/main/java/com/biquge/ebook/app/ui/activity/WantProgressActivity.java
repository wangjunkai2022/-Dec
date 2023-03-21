package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.hf;
import com.apk.mf;
import com.apk.v0;
import com.apk.w0;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.ui.fragment.WantBookProgressFragment;
import com.biquge.ebook.app.widget.HeaderView;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.manhua.ui.fragment.WantComicProgressFragment;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes8.dex */
public class WantProgressActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public TitleIndicatorView f6856do;

    /* renamed from: for  reason: not valid java name */
    public WantBookProgressFragment f6857for;

    /* renamed from: if  reason: not valid java name */
    public b40 f6858if;
    @BindView(R.id.upload_book_progress_actionbar)
    public HeaderView mHeaderView;
    @BindView(R.id.upload_book_progress_viewPager)
    public SViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public WantComicProgressFragment f6859new;

    public static void i(Context context) {
        context.startActivity(new Intent(context, WantProgressActivity.class));
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_want_list;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_public;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        int m2895throw;
        registerEventBus(this);
        initTopBarOnlyTitle(this.mHeaderView);
        TitleIndicatorView titleIndicatorView = this.mHeaderView.getTitleIndicatorView();
        this.f6856do = titleIndicatorView;
        this.f6858if = titleIndicatorView.getIndicator();
        this.mViewPager.setOffscreenPageLimit(2);
        ArrayList arrayList = new ArrayList();
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK) {
            WantBookProgressFragment wantBookProgressFragment = new WantBookProgressFragment();
            this.f6857for = wantBookProgressFragment;
            arrayList.add(wantBookProgressFragment);
        } else if (hfVar == hf.COMIC) {
            WantComicProgressFragment wantComicProgressFragment = new WantComicProgressFragment();
            this.f6859new = wantComicProgressFragment;
            arrayList.add(wantComicProgressFragment);
        } else {
            if (hfVar == hf.BOOK_COMIC) {
                WantBookProgressFragment wantBookProgressFragment2 = new WantBookProgressFragment();
                this.f6857for = wantBookProgressFragment2;
                arrayList.add(wantBookProgressFragment2);
                WantComicProgressFragment wantComicProgressFragment2 = new WantComicProgressFragment();
                this.f6859new = wantComicProgressFragment2;
                arrayList.add(wantComicProgressFragment2);
                m2895throw = w0.m2895throw();
            } else if (hfVar == hf.COMIC_BOOK) {
                WantComicProgressFragment wantComicProgressFragment3 = new WantComicProgressFragment();
                this.f6859new = wantComicProgressFragment3;
                arrayList.add(wantComicProgressFragment3);
                WantBookProgressFragment wantBookProgressFragment3 = new WantBookProgressFragment();
                this.f6857for = wantBookProgressFragment3;
                arrayList.add(wantBookProgressFragment3);
                m2895throw = w0.m2895throw();
            }
            e40 e40Var = new e40(this.f6858if, this.mViewPager);
            e40Var.m536do(new y30(getSupportFragmentManager(), ze.e(), arrayList));
            this.f6856do.m3523if(e40Var, R.string.want_book_progress_title, false);
            this.f6856do.m3522do(m2895throw, false);
        }
        m2895throw = 0;
        e40 e40Var2 = new e40(this.f6858if, this.mViewPager);
        e40Var2.m536do(new y30(getSupportFragmentManager(), ze.e(), arrayList));
        this.f6856do.m3523if(e40Var2, R.string.want_book_progress_title, false);
        this.f6856do.m3522do(m2895throw, false);
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("REFRESH_WANTBOOK_KEY".equals(mfVar.f3028do)) {
            WantBookProgressFragment wantBookProgressFragment = this.f6857for;
            if (wantBookProgressFragment != null) {
                wantBookProgressFragment.a(true);
            }
            WantComicProgressFragment wantComicProgressFragment = this.f6859new;
            if (wantComicProgressFragment != null) {
                wantComicProgressFragment.a(true);
            }
        }
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.book_detail_to_book_shelf) {
            boolean z = this.f6856do.getTabModule() == hf.BOOK;
            if (!v0.m2736try().m2741const()) {
                LoginActivity.l(this);
            } else {
                WantReadBookActivity.i(this, "", z);
            }
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.activity_public_toolbar_search).setVisible(false);
        MenuItem findItem = menu.findItem(R.id.book_detail_to_book_shelf);
        findItem.setTitle(ze.q(R.string.want_novel_title));
        findItem.setIcon(0);
        findItem.setVisible(true);
        return super.onPrepareOptionsMenu(menu);
    }
}
