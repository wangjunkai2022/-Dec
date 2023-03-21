package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import butterknife.BindView;
import com.apk.b40;
import com.apk.f6;
import com.apk.hf;
import com.biquge.ebook.app.ui.fragment.BookMyListChildFragment;
import com.biquge.ebook.app.ui.fragment.BookMyListFragment;
import com.biquge.ebook.app.widget.HeaderView;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.manhua.ui.fragment.ComicMyListChildFragment;
import com.manhua.ui.fragment.ComicMyListFragment;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MyListActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public TitleIndicatorView f6736do;

    /* renamed from: for  reason: not valid java name */
    public BookMyListFragment f6737for;

    /* renamed from: if  reason: not valid java name */
    public b40 f6738if;
    @BindView(R.id.mylist_actionbar)
    public HeaderView mHeaderView;
    @BindView(R.id.my_list_viewPager)
    public SViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public ComicMyListFragment f6739new;

    public static void i(Context context, hf hfVar) {
        Intent intent = new Intent(context, MyListActivity.class);
        intent.putExtra("appModule", hfVar);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_mylist;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
        if (r2 == r0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0077, code lost:
        if (r2 == r1) goto L8;
     */
    @Override // com.apk.f6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initData() {
        /*
            r8 = this;
            com.apk.hf r0 = com.apk.hf.COMIC
            com.apk.hf r1 = com.apk.hf.BOOK
            android.content.Intent r2 = r8.getIntent()
            if (r2 == 0) goto L13
            java.lang.String r3 = "appModule"
            java.io.Serializable r2 = r2.getSerializableExtra(r3)
            com.apk.hf r2 = (com.apk.hf) r2
            goto L14
        L13:
            r2 = 0
        L14:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            com.apk.continue r4 = com.apk.Ccontinue.m379if()
            com.apk.hf r4 = r4.f729while
            r5 = 1
            r6 = 0
            if (r4 != r1) goto L2e
            com.biquge.ebook.app.ui.fragment.BookMyListFragment r0 = new com.biquge.ebook.app.ui.fragment.BookMyListFragment
            r0.<init>()
            r8.f6737for = r0
            r3.add(r0)
            goto L7f
        L2e:
            if (r4 != r0) goto L3b
            com.manhua.ui.fragment.ComicMyListFragment r0 = new com.manhua.ui.fragment.ComicMyListFragment
            r0.<init>()
            r8.f6739new = r0
            r3.add(r0)
            goto L7f
        L3b:
            com.apk.hf r7 = com.apk.hf.BOOK_COMIC
            if (r4 != r7) goto L5d
            com.biquge.ebook.app.ui.fragment.BookMyListFragment r1 = new com.biquge.ebook.app.ui.fragment.BookMyListFragment
            r1.<init>()
            r8.f6737for = r1
            r3.add(r1)
            com.manhua.ui.fragment.ComicMyListFragment r1 = new com.manhua.ui.fragment.ComicMyListFragment
            r1.<init>()
            r8.f6739new = r1
            r3.add(r1)
            if (r2 == 0) goto L58
            if (r2 != r0) goto L7f
            goto L80
        L58:
            int r5 = com.apk.w0.m2895throw()
            goto L80
        L5d:
            com.apk.hf r0 = com.apk.hf.COMIC_BOOK
            if (r4 != r0) goto L7f
            com.manhua.ui.fragment.ComicMyListFragment r0 = new com.manhua.ui.fragment.ComicMyListFragment
            r0.<init>()
            r8.f6739new = r0
            r3.add(r0)
            com.biquge.ebook.app.ui.fragment.BookMyListFragment r0 = new com.biquge.ebook.app.ui.fragment.BookMyListFragment
            r0.<init>()
            r8.f6737for = r0
            r3.add(r0)
            if (r2 == 0) goto L7a
            if (r2 != r1) goto L7f
            goto L80
        L7a:
            int r5 = com.apk.w0.m2895throw()
            goto L80
        L7f:
            r5 = 0
        L80:
            com.apk.e40 r0 = new com.apk.e40
            com.apk.b40 r1 = r8.f6738if
            com.shizhefei.view.viewpager.SViewPager r2 = r8.mViewPager
            r0.<init>(r1, r2)
            com.apk.y30 r1 = new com.apk.y30
            androidx.fragment.app.FragmentManager r2 = r8.getSupportFragmentManager()
            java.lang.String[] r4 = com.apk.ze.e()
            r1.<init>(r2, r4, r3)
            r0.m536do(r1)
            com.biquge.ebook.app.widget.TitleIndicatorView r1 = r8.f6736do
            r2 = 2131755545(0x7f100219, float:1.9141972E38)
            r1.m3523if(r0, r2, r6)
            com.biquge.ebook.app.widget.TitleIndicatorView r0 = r8.f6736do
            r0.m3522do(r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.activity.MyListActivity.initData():void");
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(this.mHeaderView);
        TitleIndicatorView titleIndicatorView = this.mHeaderView.getTitleIndicatorView();
        this.f6736do = titleIndicatorView;
        this.f6738if = titleIndicatorView.getIndicator();
        this.mViewPager.setOffscreenPageLimit(2);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ComicMyListFragment comicMyListFragment;
        super.onActivityResult(i, i2, intent);
        if (i == 2001) {
            BookMyListFragment bookMyListFragment = this.f6737for;
            if (bookMyListFragment != null) {
                BookMyListChildFragment bookMyListChildFragment = bookMyListFragment.f7297do;
                if (bookMyListChildFragment != null) {
                    bookMyListChildFragment.m3367synchronized();
                }
                BookMyListChildFragment bookMyListChildFragment2 = bookMyListFragment.f7299if;
                if (bookMyListChildFragment2 != null) {
                    bookMyListChildFragment2.m3367synchronized();
                }
                BookMyListChildFragment bookMyListChildFragment3 = bookMyListFragment.f7298for;
                if (bookMyListChildFragment3 != null) {
                    bookMyListChildFragment3.m3367synchronized();
                }
            }
        } else if (i != 2002 || (comicMyListFragment = this.f6739new) == null) {
        } else {
            ComicMyListChildFragment comicMyListChildFragment = comicMyListFragment.f10001do;
            if (comicMyListChildFragment != null) {
                comicMyListChildFragment.m3627synchronized();
            }
            ComicMyListChildFragment comicMyListChildFragment2 = comicMyListFragment.f10003if;
            if (comicMyListChildFragment2 != null) {
                comicMyListChildFragment2.m3627synchronized();
            }
            ComicMyListChildFragment comicMyListChildFragment3 = comicMyListFragment.f10002for;
            if (comicMyListChildFragment3 != null) {
                comicMyListChildFragment3.m3627synchronized();
            }
        }
    }
}
