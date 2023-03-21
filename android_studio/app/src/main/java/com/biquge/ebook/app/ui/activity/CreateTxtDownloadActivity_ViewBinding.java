package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatEditText;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class CreateTxtDownloadActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public CreateTxtDownloadActivity f6613do;

    /* renamed from: if  reason: not valid java name */
    public View f6614if;

    /* renamed from: com.biquge.ebook.app.ui.activity.CreateTxtDownloadActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ CreateTxtDownloadActivity f6615do;

        public Cdo(CreateTxtDownloadActivity_ViewBinding createTxtDownloadActivity_ViewBinding, CreateTxtDownloadActivity createTxtDownloadActivity) {
            this.f6615do = createTxtDownloadActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6615do.menuClick();
        }
    }

    @UiThread
    public CreateTxtDownloadActivity_ViewBinding(CreateTxtDownloadActivity createTxtDownloadActivity, View view) {
        this.f6613do = createTxtDownloadActivity;
        createTxtDownloadActivity.mTitleET = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.create_download_title_txt, "field 'mTitleET'", AppCompatEditText.class);
        createTxtDownloadActivity.mUrlET = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.create_download_url_txt, "field 'mUrlET'", AppCompatEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.create_download_file_bt, "method 'menuClick'");
        this.f6614if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, createTxtDownloadActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CreateTxtDownloadActivity createTxtDownloadActivity = this.f6613do;
        if (createTxtDownloadActivity != null) {
            this.f6613do = null;
            createTxtDownloadActivity.mTitleET = null;
            createTxtDownloadActivity.mUrlET = null;
            this.f6614if.setOnClickListener(null);
            this.f6614if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
