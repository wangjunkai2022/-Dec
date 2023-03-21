package com.apk;

import android.text.TextUtils;
import androidx.viewpager.widget.ViewPager;
import com.apk.e40;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.ui.fragment.BookSearchFragment;
import com.biquge.ebook.app.ui.fragment.ExternalSearchFragment;
import com.biquge.ebook.app.widget.ClearEditText;
/* compiled from: IndicatorViewPager.java */
/* loaded from: classes8.dex */
public class d40 implements ViewPager.OnPageChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ e40 f819do;

    public d40(e40 e40Var) {
        this.f819do = e40Var;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.f819do.f998do.onPageScrollStateChanged(i);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        this.f819do.f998do.onPageScrolled(i, f, i2);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        BookSearchFragment bookSearchFragment;
        this.f819do.f998do.mo145if(i, true);
        e40 e40Var = this.f819do;
        e40.Cnew cnew = e40Var.f999for;
        if (cnew != null) {
            e40Var.f998do.getPreSelectItem();
            BookSearchActivity.Cdo cdo = (BookSearchActivity.Cdo) cnew;
            if (cdo == null) {
                throw null;
            }
            if (i == 1) {
                BookSearchActivity.this.l(false);
                BookSearchActivity bookSearchActivity = BookSearchActivity.this;
                ExternalSearchFragment externalSearchFragment = bookSearchActivity.f6518for;
                if (externalSearchFragment == null || (bookSearchFragment = bookSearchActivity.f6519if) == null) {
                    return;
                }
                ClearEditText clearEditText = bookSearchFragment.mSearchEdit;
                String m1022transient = clearEditText != null ? Cgoto.m1022transient(clearEditText) : null;
                if (TextUtils.isEmpty(m1022transient) || !TextUtils.isEmpty(externalSearchFragment.mSearchET.getText().toString())) {
                    return;
                }
                externalSearchFragment.mSearchET.setText(m1022transient);
                externalSearchFragment.mSearchET.setSelection(m1022transient.length());
                externalSearchFragment.h();
            }
        }
    }
}
