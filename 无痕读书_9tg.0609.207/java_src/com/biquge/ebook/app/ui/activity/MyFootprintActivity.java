package com.biquge.ebook.app.ui.activity;

import android.view.Menu;
import android.view.MenuItem;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.b1;
import com.apk.b40;
import com.apk.d3;
import com.apk.e40;
import com.apk.f6;
import com.apk.ft;
import com.apk.hf;
import com.apk.v3;
import com.apk.y30;
import com.apk.z2;
import com.apk.z3;
import com.apk.ze;
import com.biquge.ebook.app.bean.Footprint;
import com.biquge.ebook.app.ui.fragment.BookFootprintFragment;
import com.biquge.ebook.app.widget.HeaderView;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.manhua.data.bean.ComicFootprint;
import com.manhua.ui.fragment.ComicFootprintFragment;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class MyFootprintActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public TitleIndicatorView f6730do;

    /* renamed from: for  reason: not valid java name */
    public BookFootprintFragment f6731for;

    /* renamed from: if  reason: not valid java name */
    public b40 f6732if;
    @BindView(R.id.myfootprint_actionbar)
    public HeaderView mHeaderView;
    @BindView(R.id.my_footprint_viewPager)
    public SViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public ComicFootprintFragment f6733new;

    /* renamed from: com.biquge.ebook.app.ui.activity.MyFootprintActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {
        public Cdo() {
        }

        @Override // com.apk.ft
        public void onClick() {
            ComicFootprintFragment comicFootprintFragment;
            z2 z2Var;
            v3 v3Var;
            MyFootprintActivity myFootprintActivity = MyFootprintActivity.this;
            hf tabModule = myFootprintActivity.f6730do.getTabModule();
            if (tabModule == hf.BOOK) {
                BookFootprintFragment bookFootprintFragment = myFootprintActivity.f6731for;
                if (bookFootprintFragment == null || (v3Var = bookFootprintFragment.f7229for) == null) {
                    return;
                }
                LitePal.deleteAll(Footprint.class, new String[0]);
                new b1().m141do(new z3(v3Var));
            } else if (tabModule != hf.COMIC || (comicFootprintFragment = myFootprintActivity.f6733new) == null || (z2Var = comicFootprintFragment.f9932for) == null) {
            } else {
                LitePal.deleteAll(ComicFootprint.class, new String[0]);
                new b1().m141do(new d3(z2Var));
            }
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_my_footprint;
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
            BookFootprintFragment bookFootprintFragment = new BookFootprintFragment();
            this.f6731for = bookFootprintFragment;
            arrayList.add(bookFootprintFragment);
        } else if (hfVar == hf.COMIC) {
            ComicFootprintFragment comicFootprintFragment = new ComicFootprintFragment();
            this.f6733new = comicFootprintFragment;
            arrayList.add(comicFootprintFragment);
        } else if (hfVar == hf.BOOK_COMIC) {
            BookFootprintFragment bookFootprintFragment2 = new BookFootprintFragment();
            this.f6731for = bookFootprintFragment2;
            arrayList.add(bookFootprintFragment2);
            ComicFootprintFragment comicFootprintFragment2 = new ComicFootprintFragment();
            this.f6733new = comicFootprintFragment2;
            arrayList.add(comicFootprintFragment2);
        } else if (hfVar == hf.COMIC_BOOK) {
            ComicFootprintFragment comicFootprintFragment3 = new ComicFootprintFragment();
            this.f6733new = comicFootprintFragment3;
            arrayList.add(comicFootprintFragment3);
            BookFootprintFragment bookFootprintFragment3 = new BookFootprintFragment();
            this.f6731for = bookFootprintFragment3;
            arrayList.add(bookFootprintFragment3);
        }
        e40 e40Var = new e40(this.f6732if, this.mViewPager);
        e40Var.m536do(new y30(getSupportFragmentManager(), ze.e(), arrayList));
        this.f6730do.m3523if(e40Var, R.string.my_footprint_title_txt, true);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(this.mHeaderView);
        TitleIndicatorView titleIndicatorView = this.mHeaderView.getTitleIndicatorView();
        this.f6730do = titleIndicatorView;
        this.f6732if = titleIndicatorView.getIndicator();
        this.mViewPager.setOffscreenPageLimit(2);
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.book_detail_to_book_shelf) {
            showTipDialog(this, ze.q(R.string.my_footprint_clear_txt), new Cdo());
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.activity_public_toolbar_search).setVisible(false);
        MenuItem findItem = menu.findItem(R.id.book_detail_to_book_shelf);
        findItem.setTitle(ze.q(R.string.tips_clear_txt));
        findItem.setIcon(0);
        findItem.setVisible(true);
        return super.onPrepareOptionsMenu(menu);
    }
}
