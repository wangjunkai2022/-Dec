package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.l1;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import java.io.File;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class FilePickerFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public FilePickerFragment f7462do;

    /* renamed from: if  reason: not valid java name */
    public View f7463if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.FilePickerFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ FilePickerFragment f7464do;

        public Cdo(FilePickerFragment_ViewBinding filePickerFragment_ViewBinding, FilePickerFragment filePickerFragment) {
            this.f7464do = filePickerFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            FilePickerFragment filePickerFragment = this.f7464do;
            if (filePickerFragment != null) {
                String parent = new File(filePickerFragment.f7458for).getParent();
                if (parent == null || parent.equals("/")) {
                    return;
                }
                filePickerFragment.f7458for = parent;
                FilePickerAdapter filePickerAdapter = filePickerFragment.f7459if;
                filePickerAdapter.setNewData(filePickerFragment.m3377synchronized(parent));
                filePickerAdapter.f8364do = new boolean[filePickerAdapter.getItemCount()];
                filePickerFragment.mRecyclerView.scrollToPosition(0);
                filePickerFragment.mTvPath.setText(filePickerFragment.f7458for);
                filePickerFragment.f7460new.clear();
                l1 l1Var = filePickerFragment.f7461try;
                if (l1Var != null) {
                    l1Var.mo1583do();
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @UiThread
    public FilePickerFragment_ViewBinding(FilePickerFragment filePickerFragment, View view) {
        this.f7462do = filePickerFragment;
        filePickerFragment.mTvPath = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_path, "field 'mTvPath'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.tv_back, "field 'mTvBack' and method 'menuClick'");
        TextView textView = (TextView) Utils.castView(findRequiredView, R.id.tv_back, "field 'mTvBack'", TextView.class);
        this.f7463if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, filePickerFragment));
        filePickerFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FilePickerFragment filePickerFragment = this.f7462do;
        if (filePickerFragment != null) {
            this.f7462do = null;
            filePickerFragment.mTvPath = null;
            filePickerFragment.mRecyclerView = null;
            this.f7463if.setOnClickListener(null);
            this.f7463if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
