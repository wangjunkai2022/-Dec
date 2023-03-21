package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.marqueeview.MarqueeView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WantReadBookActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WantReadBookActivity f6866do;

    /* renamed from: if  reason: not valid java name */
    public View f6867if;

    /* renamed from: com.biquge.ebook.app.ui.activity.WantReadBookActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WantReadBookActivity f6868do;

        public Cdo(WantReadBookActivity_ViewBinding wantReadBookActivity_ViewBinding, WantReadBookActivity wantReadBookActivity) {
            this.f6868do = wantReadBookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6868do.menuClick();
        }
    }

    @UiThread
    public WantReadBookActivity_ViewBinding(WantReadBookActivity wantReadBookActivity, View view) {
        this.f6866do = wantReadBookActivity;
        wantReadBookActivity.mMarqueeView = (MarqueeView) Utils.findRequiredViewAsType(view, R.id.want_book_marqueeview, "field 'mMarqueeView'", MarqueeView.class);
        wantReadBookActivity.lastWeekNumberTv = (TextView) Utils.findRequiredViewAsType(view, R.id.last_week_number, "field 'lastWeekNumberTv'", TextView.class);
        wantReadBookActivity.lastWeekPeopleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.last_week_people, "field 'lastWeekPeopleTv'", TextView.class);
        wantReadBookActivity.totalPeopleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.total_help_people, "field 'totalPeopleTv'", TextView.class);
        wantReadBookActivity.indicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.upload_file_indicator, "field 'indicatorView'", ScrollIndicatorView.class);
        wantReadBookActivity.mNameEt = (EditText) Utils.findRequiredViewAsType(view, R.id.want_book_name_txt, "field 'mNameEt'", EditText.class);
        wantReadBookActivity.mAuthorEt = (EditText) Utils.findRequiredViewAsType(view, R.id.want_book_writer_txt, "field 'mAuthorEt'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.want_book_file_bt, "method 'menuClick'");
        this.f6867if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, wantReadBookActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WantReadBookActivity wantReadBookActivity = this.f6866do;
        if (wantReadBookActivity != null) {
            this.f6866do = null;
            wantReadBookActivity.mMarqueeView = null;
            wantReadBookActivity.lastWeekNumberTv = null;
            wantReadBookActivity.lastWeekPeopleTv = null;
            wantReadBookActivity.totalPeopleTv = null;
            wantReadBookActivity.indicatorView = null;
            wantReadBookActivity.mNameEt = null;
            wantReadBookActivity.mAuthorEt = null;
            this.f6867if.setOnClickListener(null);
            this.f6867if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
