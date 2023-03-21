package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.kg;
import com.apk.l1;
import com.apk.mu;
import com.apk.s7;
import com.apk.t7;
import com.apk.u7;
import com.apk.v7;
import com.apk.wu;
import com.apk.y30;
import com.apk.yu;
import com.apk.ze;
import com.apk.zu;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.fragment.FilePickerFragment;
import com.biquge.ebook.app.ui.fragment.SmartScanFragment;
import com.lxj.xpopup.impl.ConfirmPopupView;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ImportFileActivity extends f6 {

    /* renamed from: try  reason: not valid java name */
    public static final String[] f6656try = {ze.q(R.string.import_book_smart_scan_txt), ze.q(R.string.import_book_phone_directory_txt)};

    /* renamed from: for  reason: not valid java name */
    public FilePickerFragment f6658for;

    /* renamed from: if  reason: not valid java name */
    public SmartScanFragment f6659if;
    @BindView(R.id.scan_file_import_bt)
    public TextView mImportTxt;
    @BindView(R.id.scan_file_indicator)
    public b40 mIndicator;
    @BindView(R.id.scan_file_viewpager)
    public ViewPager mViewPager;

    /* renamed from: do  reason: not valid java name */
    public final String[] f6657do = {"_display_name"};

    /* renamed from: new  reason: not valid java name */
    public final l1 f6660new = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.activity.ImportFileActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements l1 {
        public Cdo() {
        }

        @Override // com.apk.l1
        /* renamed from: do */
        public void mo1583do() {
            ImportFileActivity importFileActivity = ImportFileActivity.this;
            importFileActivity.l(importFileActivity.mViewPager.getCurrentItem());
        }
    }

    public static void i(ImportFileActivity importFileActivity) {
        if (importFileActivity != null) {
            if (mu.d()) {
                if (Environment.isExternalStorageLegacy()) {
                    importFileActivity.m();
                    return;
                }
                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent.addCategory("android.intent.category.OPENABLE");
                intent.setType("text/plain");
                importFileActivity.startActivityForResult(intent, 156);
                return;
            }
            importFileActivity.m();
            return;
        }
        throw null;
    }

    public static void j(ImportFileActivity importFileActivity) {
        if (importFileActivity != null) {
            try {
                zu.Cdo cdo = new zu.Cdo(importFileActivity);
                cdo.f6267do.f2924for = Boolean.FALSE;
                cdo.f6267do.f2941throw = new u7(importFileActivity);
                ConfirmPopupView m3254else = cdo.m3254else(ze.q(R.string.permissions_local_import_title), ze.r(R.string.permissions_local_import_desc, ze.m3166extends()), new t7(importFileActivity), null, R.layout.dialog_request_permissions_layout);
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

    public static LinkedList k(ImportFileActivity importFileActivity, LinkedHashMap linkedHashMap) {
        String substring;
        if (importFileActivity != null) {
            LinkedList linkedList = new LinkedList();
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                try {
                    File file = (File) entry.getValue();
                    if (file.exists()) {
                        CollectBook collectBook = new CollectBook();
                        collectBook.setCollectId(String.valueOf(file.getPath().hashCode()));
                        String name = file.getName();
                        try {
                            substring = name.substring(0, name.lastIndexOf("."));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        collectBook.setName(substring);
                        collectBook.setReadChapterId("");
                        collectBook.setReadChapterName("");
                        collectBook.setReadPage(1);
                        collectBook.setIcon(file.getAbsolutePath());
                        collectBook.setLastCapterName("");
                        collectBook.setLastCapterId("");
                        collectBook.setFirstChapterId(SpeechSynthesizer.REQUEST_DNS_OFF);
                        collectBook.setLastUpdateTime(kg.m1501try());
                        collectBook.setSaveTime(String.valueOf(System.currentTimeMillis()));
                        collectBook.setStickTime("");
                        collectBook.setNew(false);
                        collectBook.setAuthor("");
                        collectBook.setDesc("");
                        collectBook.setBookType("本地导入");
                        collectBook.setLoginName("");
                        collectBook.setFileType(1);
                        linkedList.add(collectBook);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return linkedList;
        }
        throw null;
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_import_file;
    }

    @Override // com.apk.f6
    public void initData() {
        yu yuVar = new yu(this);
        yuVar.m3120if(wu.f5403do);
        yuVar.m3119for(new s7(this));
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.scan_file_actionbar, R.string.import_book_title_txt);
        ze.u(this, this.mIndicator, 45, 14);
        this.mViewPager.setOffscreenPageLimit(2);
    }

    public final void l(int i) {
        int size;
        FilePickerFragment filePickerFragment;
        if (i != 0) {
            if (i == 1 && (filePickerFragment = this.f6658for) != null) {
                size = filePickerFragment.f7460new.size();
            }
            size = 0;
        } else {
            SmartScanFragment smartScanFragment = this.f6659if;
            if (smartScanFragment != null) {
                size = smartScanFragment.f7593for.size();
            }
            size = 0;
        }
        if (size == 0) {
            this.mImportTxt.setText(ze.r(R.string.import_book_imported_count_txt, ""));
            this.mImportTxt.setBackgroundResource(R.drawable.shape_gray_bg);
            return;
        }
        this.mImportTxt.setText(ze.r(R.string.import_book_imported_count_txt, Cgoto.m1005instanceof("( ", size, ")")));
        this.mImportTxt.setBackgroundResource(R.drawable.selector_register_bg);
    }

    public final void m() {
        SmartScanFragment smartScanFragment = new SmartScanFragment();
        this.f6659if = smartScanFragment;
        smartScanFragment.f7595new = this.f6660new;
        smartScanFragment.f7596try = false;
        FilePickerFragment filePickerFragment = new FilePickerFragment();
        this.f6658for = filePickerFragment;
        filePickerFragment.f7461try = this.f6660new;
        filePickerFragment.f7456case = false;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f6659if);
        arrayList.add(this.f6658for);
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), f6656try, arrayList));
        l(this.mViewPager.getCurrentItem());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 156) {
            if (i2 == -1 && intent != null) {
                try {
                    Uri data = intent.getData();
                    try {
                        Cursor query = getContentResolver().query(data, this.f6657do, null, null, null, null);
                        if (query != null && query.moveToFirst()) {
                            String string = query.getString(query.getColumnIndexOrThrow(this.f6657do[0]));
                            if (TextUtils.isEmpty(string)) {
                                string = System.currentTimeMillis() + ".txt";
                            }
                            new b1().m141do(new v7(this, data, string, new LinkedHashMap()));
                            return;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            finish();
        }
    }
}
