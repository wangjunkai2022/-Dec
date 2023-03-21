package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.Button;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AddBookFromShelfActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public AddBookFromShelfActivity f6420do;

    /* renamed from: for  reason: not valid java name */
    public View f6421for;

    /* renamed from: if  reason: not valid java name */
    public View f6422if;

    /* renamed from: com.biquge.ebook.app.ui.activity.AddBookFromShelfActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ AddBookFromShelfActivity f6423do;

        public Cdo(AddBookFromShelfActivity_ViewBinding addBookFromShelfActivity_ViewBinding, AddBookFromShelfActivity addBookFromShelfActivity) {
            this.f6423do = addBookFromShelfActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6423do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.AddBookFromShelfActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ AddBookFromShelfActivity f6424do;

        public Cif(AddBookFromShelfActivity_ViewBinding addBookFromShelfActivity_ViewBinding, AddBookFromShelfActivity addBookFromShelfActivity) {
            this.f6424do = addBookFromShelfActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6424do.menuClick(view);
        }
    }

    @UiThread
    public AddBookFromShelfActivity_ViewBinding(AddBookFromShelfActivity addBookFromShelfActivity, View view) {
        this.f6420do = addBookFromShelfActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.select_finish_bt, "field 'mSelectFinishBT' and method 'menuClick'");
        addBookFromShelfActivity.mSelectFinishBT = (Button) Utils.castView(findRequiredView, R.id.select_finish_bt, "field 'mSelectFinishBT'", Button.class);
        this.f6422if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, addBookFromShelfActivity));
        addBookFromShelfActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.select_cancel_bt, "method 'menuClick'");
        this.f6421for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, addBookFromShelfActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AddBookFromShelfActivity addBookFromShelfActivity = this.f6420do;
        if (addBookFromShelfActivity != null) {
            this.f6420do = null;
            addBookFromShelfActivity.mSelectFinishBT = null;
            addBookFromShelfActivity.mRecyclerView = null;
            this.f6422if.setOnClickListener(null);
            this.f6422if = null;
            this.f6421for.setOnClickListener(null);
            this.f6421for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
