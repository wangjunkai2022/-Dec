package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ClearEditText;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class UploadBookFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public UploadBookFragment f7606do;

    /* renamed from: for  reason: not valid java name */
    public View f7607for;

    /* renamed from: if  reason: not valid java name */
    public View f7608if;

    /* renamed from: new  reason: not valid java name */
    public View f7609new;

    /* renamed from: com.biquge.ebook.app.ui.fragment.UploadBookFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ UploadBookFragment f7610do;

        public Cdo(UploadBookFragment_ViewBinding uploadBookFragment_ViewBinding, UploadBookFragment uploadBookFragment) {
            this.f7610do = uploadBookFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7610do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.UploadBookFragment_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ UploadBookFragment f7611do;

        public Cfor(UploadBookFragment_ViewBinding uploadBookFragment_ViewBinding, UploadBookFragment uploadBookFragment) {
            this.f7611do = uploadBookFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7611do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.UploadBookFragment_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ UploadBookFragment f7612do;

        public Cif(UploadBookFragment_ViewBinding uploadBookFragment_ViewBinding, UploadBookFragment uploadBookFragment) {
            this.f7612do = uploadBookFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7612do.menuClick(view);
        }
    }

    @UiThread
    public UploadBookFragment_ViewBinding(UploadBookFragment uploadBookFragment, View view) {
        this.f7606do = uploadBookFragment;
        uploadBookFragment.mNameEt = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.upload_book_name_txt, "field 'mNameEt'", ClearEditText.class);
        uploadBookFragment.mAuthorEt = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.upload_book_writer_txt, "field 'mAuthorEt'", ClearEditText.class);
        uploadBookFragment.indicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.upload_file_indicator, "field 'indicatorView'", ScrollIndicatorView.class);
        uploadBookFragment.mLinkEt = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.upload_book_address_txt, "field 'mLinkEt'", ClearEditText.class);
        uploadBookFragment.mCoverIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.upload_book_cover, "field 'mCoverIv'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.upload_book_select_file, "field 'mSelectFileTv' and method 'menuClick'");
        uploadBookFragment.mSelectFileTv = (TextView) Utils.castView(findRequiredView, R.id.upload_book_select_file, "field 'mSelectFileTv'", TextView.class);
        this.f7608if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, uploadBookFragment));
        uploadBookFragment.mTxtTagView = (TextView) Utils.findRequiredViewAsType(view, R.id.upload_book_txt, "field 'mTxtTagView'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.upload_book_file_bt, "method 'menuClick'");
        this.f7607for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, uploadBookFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.upload_book_cover_layout, "method 'menuClick'");
        this.f7609new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, uploadBookFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UploadBookFragment uploadBookFragment = this.f7606do;
        if (uploadBookFragment != null) {
            this.f7606do = null;
            uploadBookFragment.mNameEt = null;
            uploadBookFragment.mAuthorEt = null;
            uploadBookFragment.indicatorView = null;
            uploadBookFragment.mLinkEt = null;
            uploadBookFragment.mCoverIv = null;
            uploadBookFragment.mSelectFileTv = null;
            uploadBookFragment.mTxtTagView = null;
            this.f7608if.setOnClickListener(null);
            this.f7608if = null;
            this.f7607for.setOnClickListener(null);
            this.f7607for = null;
            this.f7609new.setOnClickListener(null);
            this.f7609new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
