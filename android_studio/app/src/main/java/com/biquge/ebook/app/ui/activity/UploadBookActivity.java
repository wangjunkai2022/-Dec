package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.hf;
import com.apk.w0;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.ui.fragment.UploadBookFragment;
import com.biquge.ebook.app.widget.HeaderView;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class UploadBookActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public TitleIndicatorView f6849do;

    /* renamed from: if  reason: not valid java name */
    public b40 f6850if;
    @BindView(R.id.upload_book_actionbar)
    public HeaderView mHeaderView;
    @BindView(R.id.my_footprint_viewPager)
    public SViewPager mViewPager;

    public static void i(Context context) {
        context.startActivity(new Intent(context, UploadBookActivity.class));
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_upload_book;
    }

    @Override // com.apk.f6
    public void initData() {
        int m2895throw;
        ArrayList arrayList = new ArrayList();
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK) {
            arrayList.add(UploadBookFragment.a(true));
        } else if (hfVar == hf.COMIC) {
            arrayList.add(UploadBookFragment.a(false));
        } else {
            if (hfVar == hf.BOOK_COMIC) {
                arrayList.add(UploadBookFragment.a(true));
                arrayList.add(UploadBookFragment.a(false));
                m2895throw = w0.m2895throw();
            } else if (hfVar == hf.COMIC_BOOK) {
                arrayList.add(UploadBookFragment.a(false));
                arrayList.add(UploadBookFragment.a(true));
                m2895throw = w0.m2895throw();
            }
            e40 e40Var = new e40(this.f6850if, this.mViewPager);
            e40Var.m536do(new y30(getSupportFragmentManager(), ze.e(), arrayList));
            this.f6849do.m3523if(e40Var, R.string.set_upload_novel_txt, false);
            this.f6849do.m3522do(m2895throw, false);
        }
        m2895throw = 0;
        e40 e40Var2 = new e40(this.f6850if, this.mViewPager);
        e40Var2.m536do(new y30(getSupportFragmentManager(), ze.e(), arrayList));
        this.f6849do.m3523if(e40Var2, R.string.set_upload_novel_txt, false);
        this.f6849do.m3522do(m2895throw, false);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(this.mHeaderView);
        TitleIndicatorView titleIndicatorView = this.mHeaderView.getTitleIndicatorView();
        this.f6849do = titleIndicatorView;
        this.f6850if = titleIndicatorView.getIndicator();
        this.mViewPager.setOffscreenPageLimit(2);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
