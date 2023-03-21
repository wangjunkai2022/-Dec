package com.biquge.ebook.app.ui.view;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ContinueReadLayout_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ContinueReadLayout f7674do;

    @UiThread
    public ContinueReadLayout_ViewBinding(ContinueReadLayout continueReadLayout, View view) {
        this.f7674do = continueReadLayout;
        continueReadLayout.mContinueReadIcon = (CoverImageView) Utils.findRequiredViewAsType(view, R.id.home_continue_read_icon, "field 'mContinueReadIcon'", CoverImageView.class);
        continueReadLayout.mContinueReadName = (TextView) Utils.findRequiredViewAsType(view, R.id.home_continue_read_name, "field 'mContinueReadName'", TextView.class);
        continueReadLayout.mContinueReadChapter = (TextView) Utils.findRequiredViewAsType(view, R.id.home_continue_read_chapter, "field 'mContinueReadChapter'", TextView.class);
        continueReadLayout.mReadBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.home_continue_read_btn, "field 'mReadBtn'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ContinueReadLayout continueReadLayout = this.f7674do;
        if (continueReadLayout != null) {
            this.f7674do = null;
            continueReadLayout.mContinueReadIcon = null;
            continueReadLayout.mContinueReadName = null;
            continueReadLayout.mContinueReadChapter = null;
            continueReadLayout.mReadBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
