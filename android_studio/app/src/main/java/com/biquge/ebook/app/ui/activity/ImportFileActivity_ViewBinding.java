package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b1;
import com.apk.b40;
import com.apk.v7;
import java.util.LinkedHashMap;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ImportFileActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ImportFileActivity f6662do;

    /* renamed from: if  reason: not valid java name */
    public View f6663if;

    /* renamed from: com.biquge.ebook.app.ui.activity.ImportFileActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ImportFileActivity f6664do;

        public Cdo(ImportFileActivity_ViewBinding importFileActivity_ViewBinding, ImportFileActivity importFileActivity) {
            this.f6664do = importFileActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ImportFileActivity importFileActivity = this.f6664do;
            if (importFileActivity != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                if (importFileActivity.mViewPager.getCurrentItem() == 0) {
                    linkedHashMap.putAll(importFileActivity.f6659if.f7593for);
                } else {
                    linkedHashMap.putAll(importFileActivity.f6658for.f7460new);
                }
                if (linkedHashMap.size() > 0) {
                    new b1().m141do(new v7(importFileActivity, null, null, linkedHashMap));
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @UiThread
    public ImportFileActivity_ViewBinding(ImportFileActivity importFileActivity, View view) {
        this.f6662do = importFileActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.scan_file_import_bt, "field 'mImportTxt' and method 'menuClick'");
        importFileActivity.mImportTxt = (TextView) Utils.castView(findRequiredView, R.id.scan_file_import_bt, "field 'mImportTxt'", TextView.class);
        this.f6663if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, importFileActivity));
        importFileActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.scan_file_viewpager, "field 'mViewPager'", ViewPager.class);
        importFileActivity.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.scan_file_indicator, "field 'mIndicator'", b40.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ImportFileActivity importFileActivity = this.f6662do;
        if (importFileActivity != null) {
            this.f6662do = null;
            importFileActivity.mImportTxt = null;
            importFileActivity.mViewPager = null;
            importFileActivity.mIndicator = null;
            this.f6663if.setOnClickListener(null);
            this.f6663if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
