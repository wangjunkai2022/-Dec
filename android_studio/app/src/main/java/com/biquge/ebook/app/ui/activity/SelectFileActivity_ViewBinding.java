package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class SelectFileActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public SelectFileActivity f6781do;

    /* renamed from: if  reason: not valid java name */
    public View f6782if;

    /* renamed from: com.biquge.ebook.app.ui.activity.SelectFileActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ SelectFileActivity f6783do;

        public Cdo(SelectFileActivity_ViewBinding selectFileActivity_ViewBinding, SelectFileActivity selectFileActivity) {
            this.f6783do = selectFileActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SelectFileActivity selectFileActivity = this.f6783do;
            File file = null;
            if (selectFileActivity.mViewPager.getCurrentItem() == 0) {
                LinkedHashMap<String, File> linkedHashMap = selectFileActivity.f6777do.f7593for;
                if (linkedHashMap != null) {
                    Iterator<Map.Entry<String, File>> it = linkedHashMap.entrySet().iterator();
                    if (it.hasNext()) {
                        file = it.next().getValue();
                    }
                }
            } else {
                LinkedHashMap<String, File> linkedHashMap2 = selectFileActivity.f6779if.f7460new;
                if (linkedHashMap2 != null) {
                    Iterator<Map.Entry<String, File>> it2 = linkedHashMap2.entrySet().iterator();
                    if (it2.hasNext()) {
                        file = it2.next().getValue();
                    }
                }
            }
            if (file != null) {
                Intent intent = new Intent();
                intent.putExtra("filePath", file.getAbsolutePath());
                selectFileActivity.setResult(-1, intent);
                selectFileActivity.finish();
            }
        }
    }

    @UiThread
    public SelectFileActivity_ViewBinding(SelectFileActivity selectFileActivity, View view) {
        this.f6781do = selectFileActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.scan_file_import_bt, "field 'mImportTxt' and method 'menuClick'");
        selectFileActivity.mImportTxt = (TextView) Utils.castView(findRequiredView, R.id.scan_file_import_bt, "field 'mImportTxt'", TextView.class);
        this.f6782if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, selectFileActivity));
        selectFileActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.scan_file_viewpager, "field 'mViewPager'", ViewPager.class);
        selectFileActivity.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.scan_file_indicator, "field 'mIndicator'", b40.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SelectFileActivity selectFileActivity = this.f6781do;
        if (selectFileActivity != null) {
            this.f6781do = null;
            selectFileActivity.mImportTxt = null;
            selectFileActivity.mViewPager = null;
            selectFileActivity.mIndicator = null;
            this.f6782if.setOnClickListener(null);
            this.f6782if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
