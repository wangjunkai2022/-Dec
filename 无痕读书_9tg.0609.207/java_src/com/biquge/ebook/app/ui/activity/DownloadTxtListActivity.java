package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.g1;
import com.apk.lv;
import com.apk.mf;
import com.apk.p7;
import com.apk.y30;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ui.fragment.DownloadTxtListFragment;
import com.lxj.xpopup.impl.AttachListPopupView;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class DownloadTxtListActivity extends f6 {

    /* renamed from: case  reason: not valid java name */
    public static final String[] f6620case = {ze.q(R.string.txt_download_task_all_txt), ze.q(R.string.txt_download_task_downloading_txt), ze.q(R.string.txt_download_task_finish_txt)};

    /* renamed from: do  reason: not valid java name */
    public DownloadTxtListFragment f6621do;

    /* renamed from: for  reason: not valid java name */
    public DownloadTxtListFragment f6622for;

    /* renamed from: if  reason: not valid java name */
    public DownloadTxtListFragment f6623if;
    @BindView(R.id.edit_delete_bt)
    public Button mDelBt;
    @BindView(R.id.edit_select_layout)
    public LinearLayout mEditLayout;
    @BindView(R.id.activity_download_txt_indicator)
    public b40 mIndicator;
    @BindView(R.id.activity_txt_download_toolbar_more_tag)
    public View mMoreTagView;
    @BindView(R.id.activity_download_txt_viewPager)
    public SViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public boolean f6624new;

    /* renamed from: try  reason: not valid java name */
    public final g1 f6625try = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.activity.DownloadTxtListActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements g1 {
        public Cdo() {
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            if ("onItemClick".equals(obj)) {
                int currentItem = DownloadTxtListActivity.this.mViewPager.getCurrentItem();
                if (currentItem == 0) {
                    DownloadTxtListActivity downloadTxtListActivity = DownloadTxtListActivity.this;
                    downloadTxtListActivity.mDelBt.setText(ze.r(R.string.main_delete_batch, String.valueOf(downloadTxtListActivity.f6621do.i())));
                    return;
                } else if (currentItem == 1) {
                    DownloadTxtListActivity downloadTxtListActivity2 = DownloadTxtListActivity.this;
                    downloadTxtListActivity2.mDelBt.setText(ze.r(R.string.main_delete_batch, String.valueOf(downloadTxtListActivity2.f6623if.i())));
                    return;
                } else if (currentItem != 2) {
                    return;
                } else {
                    DownloadTxtListActivity downloadTxtListActivity3 = DownloadTxtListActivity.this;
                    downloadTxtListActivity3.mDelBt.setText(ze.r(R.string.main_delete_batch, String.valueOf(downloadTxtListActivity3.f6622for.i())));
                    return;
                }
            }
            DownloadTxtListFragment downloadTxtListFragment = DownloadTxtListActivity.this.f6621do;
            if (downloadTxtListFragment != null) {
                downloadTxtListFragment.j();
            }
            DownloadTxtListFragment downloadTxtListFragment2 = DownloadTxtListActivity.this.f6623if;
            if (downloadTxtListFragment2 != null) {
                downloadTxtListFragment2.j();
            }
            DownloadTxtListFragment downloadTxtListFragment3 = DownloadTxtListActivity.this.f6622for;
            if (downloadTxtListFragment3 != null) {
                downloadTxtListFragment3.j();
            }
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_download_txt_list;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_download_txt_file;
    }

    @Override // com.apk.f6
    public void initData() {
        ArrayList arrayList = new ArrayList();
        this.f6621do = DownloadTxtListFragment.h("1");
        this.f6623if = DownloadTxtListFragment.h("2");
        DownloadTxtListFragment h = DownloadTxtListFragment.h("3");
        this.f6622for = h;
        DownloadTxtListFragment downloadTxtListFragment = this.f6621do;
        g1 g1Var = this.f6625try;
        downloadTxtListFragment.f7435do = g1Var;
        this.f6623if.f7435do = g1Var;
        h.f7435do = g1Var;
        arrayList.add(downloadTxtListFragment);
        arrayList.add(this.f6623if);
        arrayList.add(this.f6622for);
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), f6620case, arrayList));
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_download_txt_actionbar, R.string.download_task_txt);
        ze.u(this, this.mIndicator, 35, 14);
        this.mViewPager.setCanScroll(true);
        registerEventBus(this);
    }

    public final void k(boolean z) {
        this.f6624new = z;
        if (z) {
            this.mEditLayout.setVisibility(0);
            this.mViewPager.setCanScroll(false);
            l(true);
            return;
        }
        this.mEditLayout.setVisibility(8);
        this.mViewPager.setCanScroll(true);
        l(false);
        this.mDelBt.setText(ze.q(R.string.main_delete));
    }

    public final void l(boolean z) {
        int currentItem = this.mViewPager.getCurrentItem();
        if (currentItem == 0) {
            this.f6621do.f(z);
        } else if (currentItem == 1) {
            this.f6623if.f(z);
        } else if (currentItem != 2) {
        } else {
            this.f6622for.f(z);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f6624new) {
            k(false);
        } else {
            super.onBackPressed();
        }
    }

    @OnClick({R.id.edit_select_all_bt, R.id.edit_delete_bt})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.edit_delete_bt) {
            if (id != R.id.edit_select_all_bt) {
                return;
            }
            int currentItem = this.mViewPager.getCurrentItem();
            if (currentItem == 0) {
                this.f6621do.k();
                return;
            } else if (currentItem == 1) {
                this.f6623if.k();
                return;
            } else if (currentItem != 2) {
                return;
            } else {
                this.f6622for.k();
                return;
            }
        }
        int currentItem2 = this.mViewPager.getCurrentItem();
        if (currentItem2 == 0) {
            if (this.f6621do.a()) {
                k(false);
            }
        } else if (currentItem2 != 1) {
            if (currentItem2 == 2 && this.f6622for.a()) {
                k(false);
            }
        } else if (this.f6623if.a()) {
            k(false);
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        g1 g1Var;
        if (!"REFRESH_DOWNLOAD_TXT_LIST_KEY".equals(mfVar.f3028do) || (g1Var = this.f6625try) == null) {
            return;
        }
        g1Var.onData(null);
    }

    @Override // com.apk.f6, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                if (this.f6624new) {
                    k(false);
                    break;
                } else {
                    finish();
                    break;
                }
            case R.id.activity_toolbar_download_create_item /* 2131296403 */:
                startActivity(new Intent(this, CreateTxtDownloadActivity.class));
                break;
            case R.id.activity_toolbar_download_more_item /* 2131296404 */:
                View view = this.mMoreTagView;
                lv lvVar = new lv();
                lvVar.f2943try = Boolean.TRUE;
                lvVar.f2920else = view;
                String[] strArr = {ze.q(R.string.txt_download_task_all_start_txt), ze.q(R.string.txt_download_task_all_stop_txt), ze.q(R.string.txt_download_task_all_remove_txt), ze.q(R.string.txt_download_task_select_remove_txt)};
                p7 p7Var = new p7(this);
                lvVar.f2917continue = zu.f6266try;
                AttachListPopupView attachListPopupView = new AttachListPopupView(this, 0, 0);
                attachListPopupView.f9538super = strArr;
                attachListPopupView.f9539throw = null;
                attachListPopupView.f9540while = p7Var;
                attachListPopupView.popupInfo = lvVar;
                attachListPopupView.show();
                break;
        }
        return true;
    }
}
