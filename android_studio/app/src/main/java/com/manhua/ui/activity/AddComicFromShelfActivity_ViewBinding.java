package com.manhua.ui.activity;

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
public class AddComicFromShelfActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public AddComicFromShelfActivity f9647do;

    /* renamed from: for  reason: not valid java name */
    public View f9648for;

    /* renamed from: if  reason: not valid java name */
    public View f9649if;

    /* renamed from: com.manhua.ui.activity.AddComicFromShelfActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ AddComicFromShelfActivity f9650do;

        public Cdo(AddComicFromShelfActivity_ViewBinding addComicFromShelfActivity_ViewBinding, AddComicFromShelfActivity addComicFromShelfActivity) {
            this.f9650do = addComicFromShelfActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9650do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.AddComicFromShelfActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ AddComicFromShelfActivity f9651do;

        public Cif(AddComicFromShelfActivity_ViewBinding addComicFromShelfActivity_ViewBinding, AddComicFromShelfActivity addComicFromShelfActivity) {
            this.f9651do = addComicFromShelfActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9651do.menuClick(view);
        }
    }

    @UiThread
    public AddComicFromShelfActivity_ViewBinding(AddComicFromShelfActivity addComicFromShelfActivity, View view) {
        this.f9647do = addComicFromShelfActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.select_finish_bt, "field 'mSelectFinishBT' and method 'menuClick'");
        addComicFromShelfActivity.mSelectFinishBT = (Button) Utils.castView(findRequiredView, R.id.select_finish_bt, "field 'mSelectFinishBT'", Button.class);
        this.f9649if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, addComicFromShelfActivity));
        addComicFromShelfActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.select_cancel_bt, "method 'menuClick'");
        this.f9648for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, addComicFromShelfActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AddComicFromShelfActivity addComicFromShelfActivity = this.f9647do;
        if (addComicFromShelfActivity != null) {
            this.f9647do = null;
            addComicFromShelfActivity.mSelectFinishBT = null;
            addComicFromShelfActivity.mRecyclerView = null;
            this.f9649if.setOnClickListener(null);
            this.f9649if = null;
            this.f9648for.setOnClickListener(null);
            this.f9648for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
