package com.manhua.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.dr;
import com.apk.e40;
import com.apk.eg;
import com.apk.f6;
import com.apk.g3;
import com.apk.g40;
import com.apk.gc0;
import com.apk.h40;
import com.apk.i40;
import com.apk.ii;
import com.apk.lv;
import com.apk.mu;
import com.apk.nz;
import com.apk.o0;
import com.apk.r5;
import com.apk.rm;
import com.apk.u;
import com.apk.v;
import com.apk.vr;
import com.apk.w;
import com.apk.w0;
import com.apk.x4;
import com.apk.xw;
import com.apk.y30;
import com.apk.z2;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.app.AppContext;
import com.google.android.material.appbar.AppBarLayout;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.CenterPopupView;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.fragment.ComicDetailDataFragment;
import com.manhua.ui.fragment.ComicDetailDirFragment;
import com.manhua.ui.view.DetailSharePopupView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class ComicDetailActivity extends f6 {

    /* renamed from: break  reason: not valid java name */
    public final r5 f9680break = new Cfor();

    /* renamed from: case  reason: not valid java name */
    public boolean f9681case;

    /* renamed from: do  reason: not valid java name */
    public View f9682do;

    /* renamed from: else  reason: not valid java name */
    public boolean f9683else;

    /* renamed from: for  reason: not valid java name */
    public ComicBean f9684for;

    /* renamed from: goto  reason: not valid java name */
    public ComicDetailDataFragment f9685goto;

    /* renamed from: if  reason: not valid java name */
    public z2 f9686if;
    @BindView(R.id.activity_book_detail_add_shelf_bt)
    public TextView mAddOrDelShelfBT;
    @BindView(R.id.comic_detail_appbarlayout)
    public AppBarLayout mAppBarLayout;
    @BindView(R.id.activity_book_detail_author_txt)
    public TextView mAuthorTxt;
    @BindView(R.id.comic_detail_blur_bg_iv)
    public ImageView mBlurBgIv;
    @BindView(R.id.comic_detail_icon_iv)
    public ImageView mIconIv;
    @BindView(R.id.comic_detail_indicator)
    public ScrollIndicatorView mIndicator;
    @BindView(R.id.activity_book_detail_name_txt)
    public TextView mNameTxt;
    @BindView(R.id.book_detail_back_view)
    public ImageView mToolbarBackBtn;
    @BindView(R.id.comic_top_toolbar_layout)
    public LinearLayout mToolbarLayout;
    @BindView(R.id.book_detail_to_shelf_view)
    public ImageView mToolbarShareBtn;
    @BindView(R.id.book_detail_tile_txt)
    public TextView mToolbarTitleTv;
    @BindView(R.id.activity_book_detail_upload_tv)
    public TextView mUploadAuthorTv;
    @BindView(R.id.comic_detail_viewpager)
    public ViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public String f9687new;

    /* renamed from: this  reason: not valid java name */
    public boolean f9688this;

    /* renamed from: try  reason: not valid java name */
    public boolean f9689try;

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends g40 {
        public Cdo(ComicDetailActivity comicDetailActivity, Context context, int i, h40.Cdo cdo) {
            super(context, i, cdo);
        }

        @Override // com.apk.g40, com.apk.h40
        /* renamed from: for */
        public int mo450for(int i) {
            return eg.m587catch(4.5f);
        }

        @Override // com.apk.g40, com.apk.h40
        /* renamed from: new */
        public int mo451new(int i) {
            return eg.m587catch(20.0f);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends r5 {
        public Cfor() {
        }

        @Override // com.apk.r5
        /* renamed from: if */
        public void mo2238if(ComicBean comicBean) {
            ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
            comicDetailActivity.f9683else = false;
            comicDetailActivity.f9681case = true;
            comicDetailActivity.f9684for = comicBean;
            comicDetailActivity.p();
        }

        @Override // com.apk.r5
        /* renamed from: throw */
        public void mo2242throw() {
            ComicDetailActivity.this.f9683else = true;
            ToastUtils.show((int) R.string.book_detail_request_failed_txt);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements AppBarLayout.OnOffsetChangedListener {
        public Cif() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            float abs = Math.abs(i * 1.0f) / appBarLayout.getTotalScrollRange();
            ComicDetailActivity.this.mToolbarLayout.setBackgroundColor(ze.X(ze.j(R.color.main_bg_color), abs));
            ComicDetailActivity.this.mToolbarTitleTv.setAlpha(abs);
            int X = ze.X(ze.j(R.color.color_999999), abs);
            ComicDetailActivity.this.mToolbarBackBtn.setColorFilter(X);
            ComicDetailActivity.this.mToolbarShareBtn.setColorFilter(X);
            if (abs > 0.6d) {
                ComicDetailActivity.i(ComicDetailActivity.this, true);
            } else {
                ComicDetailActivity.i(ComicDetailActivity.this, false);
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements o0.Celse {
        public Cnew() {
        }

        @Override // com.apk.o0.Celse
        /* renamed from: do */
        public void mo1179do(boolean z) {
            if (z) {
                ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
                if (!comicDetailActivity.f9689try) {
                    mu.w(comicDetailActivity.f9684for, true);
                }
            }
            ComicDetailActivity.this.k(true);
        }
    }

    public static void i(ComicDetailActivity comicDetailActivity, boolean z) {
        if (comicDetailActivity.f9688this == z) {
            return;
        }
        comicDetailActivity.f9688this = z;
        super.setImmersionBar(z);
    }

    public static void l(Activity activity, ComicBean comicBean, int i) {
        Intent intent = new Intent(activity, ComicDetailActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("book", comicBean);
        activity.startActivityForResult(intent, i);
    }

    public static void m(Context context, ComicCollectBean comicCollectBean) {
        n(context, mu.m1759const(comicCollectBean));
    }

    public static void n(Context context, ComicBean comicBean) {
        Intent intent = new Intent(context, ComicDetailActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("book", comicBean);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_activity_book_detail;
    }

    @Override // com.apk.f6
    public void initData() {
        ComicBean comicBean = (ComicBean) getIntent().getSerializableExtra("book");
        this.f9684for = comicBean;
        String id = comicBean != null ? comicBean.getId() : "";
        this.f9687new = id;
        if (w0.m2883native(id)) {
            TextView textView = (TextView) ((ViewStub) findViewById(R.id.copyright_tips_layout)).inflate().findViewById(R.id.view_copyright_title_tv);
            StringBuilder m1016super = Cgoto.m1016super("《");
            ComicBean comicBean2 = this.f9684for;
            m1016super.append(comicBean2 != null ? comicBean2.getName() : "");
            m1016super.append("》");
            textView.setText(m1016super.toString());
            return;
        }
        p();
        String[] strArr = {ze.q(R.string.tips_config_detail_tip_title_txt), ze.q(R.string.book_catalogue_txt)};
        ArrayList arrayList = new ArrayList();
        ComicBean comicBean3 = this.f9684for;
        ComicDetailDataFragment comicDetailDataFragment = new ComicDetailDataFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("comicBean", comicBean3);
        comicDetailDataFragment.setArguments(bundle);
        this.f9685goto = comicDetailDataFragment;
        arrayList.add(comicDetailDataFragment);
        ComicBean comicBean4 = this.f9684for;
        ComicDetailDirFragment comicDetailDirFragment = new ComicDetailDirFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putSerializable("comicBean", comicBean4);
        comicDetailDirFragment.setArguments(bundle2);
        arrayList.add(comicDetailDirFragment);
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        this.mIndicator.setAdapter(new nz(this, strArr, 0));
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), strArr, arrayList));
    }

    @Override // com.apk.f6
    public void initView() {
        this.mIndicator.setScrollBar(new Cdo(this, this, R.drawable.shape_indicator_tab_underline, h40.Cdo.BOTTOM));
        ScrollIndicatorView scrollIndicatorView = this.mIndicator;
        i40 i40Var = new i40();
        i40Var.m1181for(R.color.color_333333, R.color.color_999999);
        i40Var.m1183new(20.0f, 16.0f);
        scrollIndicatorView.setOnTransitionListener(i40Var);
        this.mAppBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new Cif());
        this.mToolbarTitleTv.setAlpha(0.0f);
    }

    public final void k(boolean z) {
        try {
            if (TextUtils.isEmpty(this.f9687new)) {
                return;
            }
            if (mu.m1766finally(this.f9687new) != null) {
                this.mAddOrDelShelfBT.setText(ze.q(R.string.txt_remove_bookshlef_txt));
                this.f9689try = true;
            } else {
                this.mAddOrDelShelfBT.setText(ze.q(R.string.txt_add_bookshlef_txt));
                this.f9689try = false;
            }
            if (z) {
                ze.V();
                if (this.f9689try) {
                    v m2734do = v.m2734do();
                    ComicBean comicBean = this.f9684for;
                    if (comicBean != null) {
                        comicBean.getName();
                    }
                    if (m2734do != null) {
                        return;
                    }
                    throw null;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnClick({R.id.activity_book_detail_add_shelf_bt, R.id.activity_book_detail_read_bt, R.id.activity_book_detail_cache_bt, R.id.book_detail_back_view, R.id.book_detail_to_shelf_view})
    public void menuClick(View view) {
        if (view.getId() == R.id.book_detail_back_view) {
            onBackPressed();
        } else if (view.getId() == R.id.book_detail_to_shelf_view) {
            if (this.f9684for == null) {
                return;
            }
            if (this.f9682do == null) {
                View inflate = ((ViewStub) findViewById(R.id.new_share_detail_layout)).inflate();
                this.f9682do = inflate;
                inflate.setVisibility(4);
            }
            lv lvVar = new lv();
            DetailSharePopupView detailSharePopupView = new DetailSharePopupView(this, this.f9682do, this.f9684for);
            if (detailSharePopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else {
                lvVar.f2917continue = zu.f6266try;
            }
            detailSharePopupView.popupInfo = lvVar;
            detailSharePopupView.show();
        } else if (view.getId() == R.id.activity_book_detail_add_shelf_bt) {
            if (this.f9684for == null) {
                return;
            }
            if (this.f9689try) {
                String str = this.f9687new;
                try {
                    LitePal.deleteAll(ComicCollectBean.class, "collectId = ?", str);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                o0.m1925else().m1928catch(str);
                ToastUtils.show((CharSequence) ze.q(R.string.remove_bookshlef_txt));
            } else if (!this.f9681case) {
                ToastUtils.show((int) R.string.book_detail_request_load_txt);
                o();
                return;
            } else if (mu.m1756case(this, false)) {
                return;
            } else {
                mu.w(this.f9684for, true);
            }
            k(true);
        } else if (view.getId() == R.id.activity_book_detail_read_bt) {
            if (this.f9684for == null) {
                return;
            }
            if (!this.f9681case) {
                ToastUtils.show((int) R.string.book_detail_request_load_txt);
                o();
                return;
            }
            ComicReadActivity.J(this, this.f9687new);
        } else if (view.getId() != R.id.activity_book_detail_cache_bt || this.f9684for == null) {
        } else {
            if (!this.f9681case) {
                ToastUtils.show((int) R.string.book_detail_request_load_txt);
                o();
            } else if (this.f9689try || !mu.m1768goto(this)) {
                o0.m1925else().m1933for(this, this.f9687new, this.f9684for.getName(), true, new Cnew());
            }
        }
    }

    public final void o() {
        if (this.f9683else) {
            this.f9683else = false;
            z2 z2Var = this.f9686if;
            if (z2Var != null) {
                x4.m2957import(w.m2863try(this.f9687new), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new g3(z2Var, "SP_HOST_INFO_DEX_MH_KEY"));
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            k(false);
            if (this.f9686if == null) {
                z2 z2Var = new z2(this, this.f9680break);
                this.f9686if = z2Var;
                x4.m2957import(w.m2863try(this.f9687new), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new g3(z2Var, "SP_HOST_INFO_DEX_MH_KEY"));
            }
        }
    }

    public final void p() {
        ComicBean comicBean = this.f9684for;
        if (comicBean != null) {
            u.m2650import(comicBean.getImg(), this.mIconIv);
            String img = this.f9684for.getImg();
            ImageView imageView = this.mBlurBgIv;
            if (TextUtils.isEmpty(img)) {
                imageView.setImageResource(R.drawable.shape_shadow_top_bg);
            } else {
                ii.m1218case(AppContext.f6392case).mo2129case().a(new rm(img, u.f4797try)).mo2222static(R.drawable.shape_shadow_top_bg).mo2037do(dr.m506continue(new gc0(10, 10))).mo2214extends(new vr(img)).m2038implements(imageView);
            }
            this.mNameTxt.setText(this.f9684for.getName());
            this.mToolbarTitleTv.setText(this.f9684for.getName());
            if (!TextUtils.isEmpty(this.f9684for.getAuthor())) {
                this.mAuthorTxt.setText(ze.r(R.string.xml_author_placeholder_txt, this.f9684for.getAuthor()));
            }
            if (!TextUtils.isEmpty(this.f9684for.getUpUser())) {
                this.mUploadAuthorTv.setText(ze.r(R.string.book_detail_upload_author_txt, this.f9684for.getUpUser()));
                this.mUploadAuthorTv.setVisibility(0);
            }
            ComicDetailDataFragment comicDetailDataFragment = this.f9685goto;
            if (comicDetailDataFragment != null) {
                comicDetailDataFragment.f9896do = this.f9684for;
                comicDetailDataFragment.m3622synchronized();
            }
        }
    }
}
