package com.biquge.ebook.app.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import butterknife.BindView;
import com.apk.e40;
import com.apk.eg;
import com.apk.f6;
import com.apk.hf;
import com.apk.mf;
import com.apk.nz;
import com.apk.tt;
import com.apk.xp0;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.fragment.BookSearchFragment;
import com.biquge.ebook.app.ui.fragment.ExternalSearchFragment;
import com.manhua.data.bean.ComicBean;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import com.shizhefei.view.viewpager.SViewPager;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class BookSearchActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public xp0 f6517do;

    /* renamed from: for  reason: not valid java name */
    public ExternalSearchFragment f6518for;

    /* renamed from: if  reason: not valid java name */
    public BookSearchFragment f6519if;
    @BindView(R.id.activity_search_indicator)
    public ScrollIndicatorView mIndicatorView;
    @BindView(R.id.activity_search_viewPager)
    public SViewPager mViewPager;

    /* renamed from: com.biquge.ebook.app.ui.activity.BookSearchActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements e40.Cnew {
        public Cdo() {
        }
    }

    public static void i(Context context, hf hfVar) {
        Intent intent = new Intent(context, BookSearchActivity.class);
        intent.putExtra("selectPlatform", hfVar);
        context.startActivity(intent);
    }

    public static void j(Activity activity, List<Book> list, int i) {
        Intent intent = new Intent(activity, BookSearchActivity.class);
        intent.putExtra("createSource", hf.BOOK);
        if (list != null && list.size() > 0) {
            intent.putExtra("SEARCH_SOURCE_BOOKLIST_KEY", (Serializable) list);
        }
        activity.startActivityForResult(intent, i);
    }

    public static void k(Activity activity, List<ComicBean> list, int i) {
        Intent intent = new Intent(activity, BookSearchActivity.class);
        intent.putExtra("createSource", hf.COMIC);
        if (list != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (ComicBean comicBean : list) {
                Book book = new Book();
                if (comicBean != null) {
                    book.setId(comicBean.getId());
                    book.setName(comicBean.getName());
                    book.setImg(comicBean.getImg());
                    book.setLastChapter(comicBean.getLastChapter());
                    book.setLastChapterId(comicBean.getLastChapterId());
                    book.setFirstChapterId(comicBean.getFirstChapterId());
                    book.setLastTime(comicBean.getLastTime());
                    book.setUpdateTime(comicBean.getUpdateTime());
                    book.setAuthor(comicBean.getAuthor());
                    book.setDesc(comicBean.getDesc());
                    book.setCName(comicBean.getCName());
                }
                arrayList.add(book);
            }
            intent.putExtra("SEARCH_SOURCE_BOOKLIST_KEY", arrayList);
        }
        activity.startActivityForResult(intent, i);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_search;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6519if = new BookSearchFragment();
        String[] strArr = {ze.q(R.string.search_interior_txt), ze.q(R.string.search_external_txt)};
        ArrayList arrayList = new ArrayList();
        Intent intent = getIntent();
        Bundle bundle = null;
        if (intent.hasExtra("createSource")) {
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable("createSource", (hf) intent.getSerializableExtra("createSource"));
            if (intent.hasExtra("SEARCH_SOURCE_BOOKLIST_KEY")) {
                List<Book> list = (List) intent.getSerializableExtra("SEARCH_SOURCE_BOOKLIST_KEY");
                BookSearchFragment bookSearchFragment = this.f6519if;
                if (bookSearchFragment != null) {
                    if (list != null && list.size() > 0) {
                        for (Book book : list) {
                            bookSearchFragment.f7306catch.put(book.getId(), book);
                        }
                    }
                } else {
                    throw null;
                }
            }
            arrayList.add(this.f6519if);
            this.mIndicatorView.setVisibility(8);
            bundle = bundle2;
        }
        if (intent.hasExtra("selectPlatform")) {
            bundle = new Bundle();
            bundle.putSerializable("selectPlatform", (hf) intent.getSerializableExtra("selectPlatform"));
            arrayList.add(this.f6519if);
            ExternalSearchFragment externalSearchFragment = new ExternalSearchFragment();
            this.f6518for = externalSearchFragment;
            arrayList.add(externalSearchFragment);
            if (ze.m3179private("SP_IS_VISIBLE_SEARCH_TAG_VIEW_KEY", true)) {
                l(true);
            }
        }
        if (bundle != null) {
            this.f6519if.setArguments(bundle);
        }
        this.mIndicatorView.setAdapter(new nz(this, strArr, 0));
        e40 e40Var = new e40(this.mIndicatorView, this.mViewPager);
        e40Var.m536do(new y30(getSupportFragmentManager(), strArr, arrayList));
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        e40Var.f999for = new Cdo();
    }

    @Override // com.apk.f6
    public void initView() {
        registerEventBus(this);
        this.mViewPager.setCanScroll(false);
        this.mIndicatorView.setSplitAuto(true);
        ze.u(this, this.mIndicatorView, 30, 14);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    public void l(boolean z) {
        if (z) {
            if (this.f6517do == null) {
                xp0 xp0Var = new xp0(this);
                this.f6517do = xp0Var;
                xp0Var.m3031do(this.mIndicatorView);
                xp0 xp0Var2 = xp0Var;
                xp0Var2.m3037this(eg.m587catch(16.0f), eg.m587catch(2.0f), true);
                xp0Var2.m3034goto(-1);
                return;
            }
            return;
        }
        xp0 xp0Var3 = this.f6517do;
        if (xp0Var3 != null) {
            xp0Var3.m3034goto(0);
            tt.f4763do.putBoolean("SP_IS_VISIBLE_SEARCH_TAG_VIEW_KEY", false);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mViewPager.getCurrentItem() == 0) {
            BookSearchFragment bookSearchFragment = this.f6519if;
            if (bookSearchFragment != null && bookSearchFragment.k()) {
                return;
            }
        } else {
            ExternalSearchFragment externalSearchFragment = this.f6518for;
            if (externalSearchFragment != null && externalSearchFragment.a()) {
                return;
            }
        }
        super.onBackPressed();
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("EVENT_CHANGE_WEB_SEARCH_KEY".equals(mfVar.f3028do)) {
            this.mViewPager.setCurrentItem(1);
            this.mIndicatorView.setCurrentItem(1);
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        BookSearchFragment bookSearchFragment = this.f6519if;
        if (bookSearchFragment != null) {
            bookSearchFragment.p(false);
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        BookSearchFragment bookSearchFragment = this.f6519if;
        if (bookSearchFragment != null) {
            bookSearchFragment.p(true);
        }
    }
}
