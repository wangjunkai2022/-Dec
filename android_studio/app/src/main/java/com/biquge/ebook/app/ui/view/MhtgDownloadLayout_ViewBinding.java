package com.biquge.ebook.app.ui.view;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MhtgDownloadLayout_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MhtgDownloadLayout f7710do;

    @UiThread
    public MhtgDownloadLayout_ViewBinding(MhtgDownloadLayout mhtgDownloadLayout, View view) {
        this.f7710do = mhtgDownloadLayout;
        mhtgDownloadLayout.closeView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.cartoon_close_layout, "field 'closeView'", LinearLayout.class);
        mhtgDownloadLayout.descTv = (TextView) Utils.findRequiredViewAsType(view, R.id.cartoon_tg_desc_tv, "field 'descTv'", TextView.class);
        mhtgDownloadLayout.installBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.cartoon_tg_download_btn, "field 'installBtn'", TextView.class);
        mhtgDownloadLayout.cancelBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.cartoon_tg_cacel_btn, "field 'cancelBtn'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MhtgDownloadLayout mhtgDownloadLayout = this.f7710do;
        if (mhtgDownloadLayout != null) {
            this.f7710do = null;
            mhtgDownloadLayout.closeView = null;
            mhtgDownloadLayout.descTv = null;
            mhtgDownloadLayout.installBtn = null;
            mhtgDownloadLayout.cancelBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
