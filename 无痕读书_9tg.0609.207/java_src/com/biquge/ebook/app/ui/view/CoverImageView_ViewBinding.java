package com.biquge.ebook.app.ui.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CoverImageView_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public CoverImageView f7675do;

    @UiThread
    public CoverImageView_ViewBinding(CoverImageView coverImageView, View view) {
        this.f7675do = coverImageView;
        coverImageView.mCoverIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.cover_image_icon_iv, "field 'mCoverIv'", ImageView.class);
        coverImageView.mNameTv = (TextView) Utils.findRequiredViewAsType(view, R.id.cover_image_name_tv, "field 'mNameTv'", TextView.class);
        coverImageView.mTypeTv = (TextView) Utils.findRequiredViewAsType(view, R.id.cover_image_type_tv, "field 'mTypeTv'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CoverImageView coverImageView = this.f7675do;
        if (coverImageView != null) {
            this.f7675do = null;
            coverImageView.mCoverIv = null;
            coverImageView.mNameTv = null;
            coverImageView.mTypeTv = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
