package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import com.apk.eg;
import com.apk.i6;
import com.apk.lq0;
import com.apk.nt;
import com.apk.ot;
import com.apk.q0;
import com.apk.tr0;
import com.biquge.ebook.app.app.AppContext;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookStoreRankFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookStoreRankFragment f7432do;

    /* renamed from: if  reason: not valid java name */
    public View f7433if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookStoreRankFragment f7434do;

        public Cdo(BookStoreRankFragment_ViewBinding bookStoreRankFragment_ViewBinding, BookStoreRankFragment bookStoreRankFragment) {
            this.f7434do = bookStoreRankFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            BookStoreRankFragment bookStoreRankFragment = this.f7434do;
            i6 supportActivity = bookStoreRankFragment.getSupportActivity();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                String[] strArr = q0.f3776goto;
                boolean z = true;
                if (i >= strArr.length) {
                    nt ntVar = new nt(supportActivity, arrayList, bookStoreRankFragment.f7430try, false, true);
                    ntVar.m1915if(eg.m587catch(100.0f));
                    ntVar.m1913do(8388613);
                    ntVar.f3309for = true;
                    ntVar.m1914for(bookStoreRankFragment.time_choose);
                    return;
                }
                String str = strArr[i];
                ot otVar = new ot();
                otVar.f3498if = str;
                otVar.f3497for = lq0.m1660do(AppContext.f6392case, tr0.m2617do(R.color.color_333333));
                if (bookStoreRankFragment.f7426do) {
                    if (i == 0) {
                        otVar.f3499new = z;
                        arrayList.add(otVar);
                        i++;
                    }
                    z = false;
                    otVar.f3499new = z;
                    arrayList.add(otVar);
                    i++;
                } else {
                    if (i == 1) {
                        otVar.f3499new = z;
                        arrayList.add(otVar);
                        i++;
                    }
                    z = false;
                    otVar.f3499new = z;
                    arrayList.add(otVar);
                    i++;
                }
            }
        }
    }

    @UiThread
    public BookStoreRankFragment_ViewBinding(BookStoreRankFragment bookStoreRankFragment, View view) {
        this.f7432do = bookStoreRankFragment;
        bookStoreRankFragment.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.fragment_book_rank_viewPager, "field 'mViewPager'", ViewPager.class);
        bookStoreRankFragment.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.fragment_book_rank_indicator, "field 'mIndicator'", b40.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.time_choose, "field 'time_choose' and method 'menuClick'");
        bookStoreRankFragment.time_choose = (TextView) Utils.castView(findRequiredView, R.id.time_choose, "field 'time_choose'", TextView.class);
        this.f7433if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookStoreRankFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookStoreRankFragment bookStoreRankFragment = this.f7432do;
        if (bookStoreRankFragment != null) {
            this.f7432do = null;
            bookStoreRankFragment.mViewPager = null;
            bookStoreRankFragment.mIndicator = null;
            bookStoreRankFragment.time_choose = null;
            this.f7433if.setOnClickListener(null);
            this.f7433if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
