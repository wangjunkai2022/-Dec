package com.biquge.ebook.app.ui.activity;

import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.h8;
import com.apk.i8;
import com.apk.j8;
import com.apk.l1;
import com.apk.wu;
import com.apk.y30;
import com.apk.yu;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ui.fragment.FilePickerFragment;
import com.biquge.ebook.app.ui.fragment.SmartScanFragment;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import com.lxj.xpopup.impl.ConfirmPopupView;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class SelectFileActivity extends f6 {

    /* renamed from: new  reason: not valid java name */
    public static final String[] f6776new = {ze.q(R.string.import_book_smart_scan_txt), ze.q(R.string.import_book_phone_directory_txt)};

    /* renamed from: do  reason: not valid java name */
    public SmartScanFragment f6777do;

    /* renamed from: for  reason: not valid java name */
    public l1 f6778for = new Cdo();

    /* renamed from: if  reason: not valid java name */
    public FilePickerFragment f6779if;
    @BindView(R.id.scan_file_import_bt)
    public TextView mImportTxt;
    @BindView(R.id.scan_file_indicator)
    public b40 mIndicator;
    @BindView(R.id.scan_file_viewpager)
    public ViewPager mViewPager;

    /* renamed from: com.biquge.ebook.app.ui.activity.SelectFileActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements l1 {
        public Cdo() {
        }

        @Override // com.apk.l1
        /* renamed from: do */
        public void mo1583do() {
            SelectFileActivity selectFileActivity = SelectFileActivity.this;
            selectFileActivity.j(selectFileActivity.mViewPager.getCurrentItem());
        }
    }

    public static void i(SelectFileActivity selectFileActivity) {
        if (selectFileActivity != null) {
            try {
                zu.Cdo cdo = new zu.Cdo(selectFileActivity);
                cdo.f6267do.f2924for = Boolean.FALSE;
                cdo.f6267do.f2941throw = new j8(selectFileActivity);
                ConfirmPopupView m3254else = cdo.m3254else(ze.q(R.string.permissions_local_import_title), ze.r(R.string.permissions_local_import_desc, ze.m3166extends()), new i8(selectFileActivity), null, R.layout.dialog_request_permissions_layout);
                m3254else.f9571catch = ze.q(R.string.permissions_apply_ok);
                m3254else.show();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_select_file;
    }

    @Override // com.apk.f6
    public void initData() {
        SmartScanFragment smartScanFragment = new SmartScanFragment();
        this.f6777do = smartScanFragment;
        smartScanFragment.f7595new = this.f6778for;
        smartScanFragment.f7596try = true;
        FilePickerAdapter filePickerAdapter = smartScanFragment.f7594if;
        if (filePickerAdapter != null) {
            filePickerAdapter.f8367new = true;
        }
        FilePickerFragment filePickerFragment = new FilePickerFragment();
        this.f6779if = filePickerFragment;
        filePickerFragment.f7461try = this.f6778for;
        filePickerFragment.f7456case = true;
        FilePickerAdapter filePickerAdapter2 = filePickerFragment.f7459if;
        if (filePickerAdapter2 != null) {
            filePickerAdapter2.f8367new = true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f6777do);
        arrayList.add(this.f6779if);
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), f6776new, arrayList));
        j(this.mViewPager.getCurrentItem());
        yu yuVar = new yu(this);
        yuVar.m3120if(wu.f5403do);
        yuVar.m3119for(new h8(this));
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.scan_file_actionbar, R.string.import_book_title_txt);
        ze.u(this, this.mIndicator, 45, 14);
    }

    public final void j(int i) {
        int size;
        FilePickerFragment filePickerFragment;
        if (i != 0) {
            if (i == 1 && (filePickerFragment = this.f6779if) != null) {
                size = filePickerFragment.f7460new.size();
            }
            size = 0;
        } else {
            SmartScanFragment smartScanFragment = this.f6777do;
            if (smartScanFragment != null) {
                size = smartScanFragment.f7593for.size();
            }
            size = 0;
        }
        if (size == 0) {
            this.mImportTxt.setBackgroundResource(R.drawable.shape_gray_bg);
        } else {
            this.mImportTxt.setBackgroundResource(R.drawable.selector_register_bg);
        }
    }
}
