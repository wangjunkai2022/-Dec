package com.manhua.ui.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentManagerImpl;
import butterknife.BindView;
import butterknife.BindViews;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.b1;
import com.apk.bg;
import com.apk.da;
import com.apk.eg;
import com.apk.f00;
import com.apk.h20;
import com.apk.hf;
import com.apk.hg;
import com.apk.i20;
import com.apk.j00;
import com.apk.j20;
import com.apk.k00;
import com.apk.k30;
import com.apk.lv;
import com.apk.mu;
import com.apk.n1;
import com.apk.n20;
import com.apk.o20;
import com.apk.ov;
import com.apk.p20;
import com.apk.q20;
import com.apk.r20;
import com.apk.tt;
import com.apk.u;
import com.apk.u0;
import com.apk.v0;
import com.apk.w0;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.widget.BookReadDmGuidePopupView;
import com.biquge.ebook.app.widget.SwitchButton;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.widget.ComicReadMenuView;
import com.manhua.ui.widget.barrage.BarrageCommentsPopupView;
import com.manhua.ui.widget.barrage.BarrageControlPopWindow;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicReadMenuView extends FrameLayout implements n1 {

    /* renamed from: break  reason: not valid java name */
    public k00 f10151break;

    /* renamed from: case  reason: not valid java name */
    public Animation f10152case;

    /* renamed from: catch  reason: not valid java name */
    public f00 f10153catch;

    /* renamed from: class  reason: not valid java name */
    public ComicBean f10154class;

    /* renamed from: const  reason: not valid java name */
    public ComicCollectBean f10155const;

    /* renamed from: do  reason: not valid java name */
    public Activity f10156do;

    /* renamed from: else  reason: not valid java name */
    public Animation f10157else;

    /* renamed from: final  reason: not valid java name */
    public boolean f10158final;

    /* renamed from: for  reason: not valid java name */
    public Ccase f10159for;

    /* renamed from: goto  reason: not valid java name */
    public Animation f10160goto;

    /* renamed from: if  reason: not valid java name */
    public hg f10161if;

    /* renamed from: import  reason: not valid java name */
    public Window f10162import;
    @BindView(R.id.read_menu_send_barrage_bt)
    public TextView mBarrageSendView;
    @BindView(R.id.read_bottom_barrage_switch)
    public TextView mBarrageSwitchView;
    @BindView(R.id.book_read_menu_brightness_seekbar)
    public SeekBar mBrightnessSeekBar;
    @BindView(R.id.book_read_menu_chapter_seekbar)
    public SeekBar mChapterSeekBar;
    @BindView(R.id.book_read_menu_night_bt)
    public TextView mDayNightTView;
    @BindView(R.id.book_read_menu_default_layout)
    public LinearLayout mDefuaultLayout;
    @BindView(R.id.read_menu_more_bt)
    public ImageView mMoreView;
    @BindView(R.id.view_bookread_menu_page_land)
    public TextView mPageLandTip;
    @BindView(R.id.view_bookread_menu_page_left)
    public TextView mPageTypeLeft;
    @BindView(R.id.view_bookread_menu_page_right)
    public TextView mPageTypeRight;
    @BindView(R.id.view_bookread_menu_page_up_down)
    public TextView mPageTypeUpDown;
    @BindViews({R.id.read_bottom_menu_port, R.id.read_bottom_menu_land})
    public List<TextView> mScreenTView;
    @BindView(R.id.book_read_menu_set_layout)
    public LinearLayout mSetLayout;
    @BindView(R.id.read_menu_battery_sb)
    public SwitchButton mSwitchButton;
    @BindView(R.id.book_read_menu_brightness_to_system)
    public TextView mSystemBrightTxt;
    @BindView(R.id.read_menu_chapter_name)
    public TextView mTitleTView;
    @BindView(R.id.book_read_menu_top_layout)
    public LinearLayout mTopLayout;
    @BindView(R.id.cb_volume_flip_page)
    public SwitchButton mVolumeFlipCB;

    /* renamed from: native  reason: not valid java name */
    public final BarrageControlPopWindow.OnBarrageConfigListener f10163native;

    /* renamed from: new  reason: not valid java name */
    public Animation f10164new;

    /* renamed from: public  reason: not valid java name */
    public final BarrageCommentsPopupView.OnCallBackBarrage f10165public;

    /* renamed from: return  reason: not valid java name */
    public View f10166return;

    /* renamed from: static  reason: not valid java name */
    public final bg f10167static;

    /* renamed from: super  reason: not valid java name */
    public List<ComicChapterBean> f10168super;

    /* renamed from: this  reason: not valid java name */
    public Animation f10169this;

    /* renamed from: throw  reason: not valid java name */
    public boolean f10170throw;

    /* renamed from: try  reason: not valid java name */
    public Animation f10171try;

    /* renamed from: while  reason: not valid java name */
    public long f10172while;

    /* renamed from: com.manhua.ui.widget.ComicReadMenuView$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends PopupWindow {
        public Ccase(ComicReadMenuView comicReadMenuView, j20 j20Var) {
            View inflate = View.inflate(comicReadMenuView.f10156do, R.layout.comic_view_readmenu_popview, null);
            setContentView(inflate);
            setWidth(-2);
            setHeight(-2);
            setFocusable(true);
            setOutsideTouchable(true);
            setBackgroundDrawable(new ColorDrawable(0));
            inflate.findViewById(R.id.view_readmenu_popview_book_detail).setOnClickListener(comicReadMenuView.f10167static);
            inflate.findViewById(R.id.view_readmenu_popview_share).setOnClickListener(comicReadMenuView.f10167static);
            inflate.findViewById(R.id.view_readmenu_popview_back_error).setOnClickListener(comicReadMenuView.f10167static);
            u.m2650import(comicReadMenuView.getBookImage(), (ImageView) inflate.findViewById(R.id.view_readmenu_popview_book_image));
            ((TextView) inflate.findViewById(R.id.view_readmenu_popview_book_name)).setText(comicReadMenuView.getBookName());
            ((TextView) inflate.findViewById(R.id.view_readmenu_popview_book_author)).setText(comicReadMenuView.getBookAuthor());
        }
    }

    /* renamed from: com.manhua.ui.widget.ComicReadMenuView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicReadMenuView.m3644goto(ComicReadMenuView.this);
        }
    }

    /* renamed from: com.manhua.ui.widget.ComicReadMenuView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements BarrageControlPopWindow.OnBarrageConfigListener {
        public Cfor() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void alpha(int i, int i2) {
            if (ComicReadMenuView.this.f10153catch != null) {
                tt.f4763do.putInt("SP_BARRAGE_FONT_ALPHA_MARK_POSITION", i);
                tt.f4763do.putInt("SP_BARRAGE_FONT_ALPHA_MARK_KEY", i2);
                ComicReadMenuView.this.f10153catch.p(3);
            }
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void dismiss() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void fontSize(int i, float f) {
            if (ComicReadMenuView.this.f10153catch != null) {
                tt.f4763do.putInt("SP_BARRAGE_FONT_SIZE_MARK_POSITION", i);
                tt.f4763do.putFloat("SP_BARRAGE_FONT_SIZE_MARK_KEY", f);
                ComicReadMenuView.this.f10153catch.p(3);
            }
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void open(boolean z) {
            if (ComicReadMenuView.this.f10153catch != null) {
                tt.f4763do.putBoolean("SP_READ_SHOW_DARRAGE_KEY", z);
            }
            f00 f00Var = ComicReadMenuView.this.f10153catch;
            if (f00Var != null) {
                if (z) {
                    f00Var.p(3);
                } else {
                    f00Var.p(2);
                }
            }
            TextView textView = ComicReadMenuView.this.mBarrageSwitchView;
            if (textView != null) {
                textView.setSelected(z);
            }
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void speed(int i, float f) {
            if (ComicReadMenuView.this.f10153catch != null) {
                tt.f4763do.putInt("SP_BARRAGE_FONT_SPEED_MARK_POSITION", i);
                tt.f4763do.putFloat("SP_BARRAGE_FONT_SPEED_MARK_KEY", f);
                ComicReadMenuView.this.f10153catch.p(3);
            }
        }
    }

    /* renamed from: com.manhua.ui.widget.ComicReadMenuView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicReadMenuView comicReadMenuView = ComicReadMenuView.this;
            ze.s(comicReadMenuView.f10156do, comicReadMenuView.getBookId(), ComicReadMenuView.this.getBookName(), false, true);
        }
    }

    /* renamed from: com.manhua.ui.widget.ComicReadMenuView$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements BarrageCommentsPopupView.OnCallBackBarrage {
        public Cnew() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageCommentsPopupView.OnCallBackBarrage
        public void onInputConntent(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            f00 f00Var = ComicReadMenuView.this.f10153catch;
            if (f00Var != null) {
                if (!v0.m2736try().m2741const()) {
                    ze.M(f00Var.f3971if);
                    return;
                } else {
                    BarrageDataUtils.getInstance().addBarrageData(BarrageDataUtils.BARRAGE_OPTION_KEY_COMIC, f00Var.m702catch(), f00.m699while(f00Var.f1195try), str, str2);
                    return;
                }
            }
            throw null;
        }
    }

    /* renamed from: com.manhua.ui.widget.ComicReadMenuView$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends bg {
        public Ctry() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            int id = view.getId();
            if (id == R.id.view_readmenu_popview_back_error) {
                ComicChapterBean m729throw = ComicReadMenuView.this.f10153catch.m729throw();
                if (m729throw != null) {
                    w0.m2897try(ComicReadMenuView.this.f10156do, hf.COMIC, ze.r(R.string.book_chapter_faild_back_txt, ComicReadMenuView.this.getBookName(), m729throw.getName(), m729throw.getOid()));
                }
                ComicReadMenuView.this.m3649catch();
            } else if (id == R.id.view_readmenu_popview_book_detail) {
                ComicReadMenuView comicReadMenuView = ComicReadMenuView.this;
                ComicDetailActivity.n(comicReadMenuView.f10156do, mu.m1765final(comicReadMenuView.getBookId(), ComicReadMenuView.this.getBookName(), ""));
                ComicReadMenuView.this.m3649catch();
            } else if (id != R.id.view_readmenu_popview_share) {
            } else {
                try {
                    if (ComicReadMenuView.this.f10166return == null) {
                        ComicReadMenuView.this.f10166return = ((ViewStub) ComicReadMenuView.this.findViewById(R.id.new_share_page_view)).inflate();
                        ComicReadMenuView.this.f10166return.setVisibility(4);
                    }
                    if (ComicReadMenuView.this.f10154class == null && ComicReadMenuView.this.f10155const != null) {
                        ComicReadMenuView.this.f10154class = mu.m1759const(ComicReadMenuView.this.f10155const);
                    }
                    w0.m2882interface(ComicReadMenuView.this.f10156do, ComicReadMenuView.this.f10166return, null, ComicReadMenuView.this.f10154class);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ComicReadMenuView.this.m3649catch();
            }
        }
    }

    public ComicReadMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10163native = new Cfor();
        this.f10165public = new Cnew();
        this.f10167static = new Ctry();
        LayoutInflater.from(getContext()).inflate(R.layout.comic_view_comicread_menu, this);
        ButterKnife.bind(this);
    }

    /* renamed from: case  reason: not valid java name */
    public static void m3641case(ComicReadMenuView comicReadMenuView, Activity activity, boolean z) {
        if (z) {
            comicReadMenuView.m3650class(activity, true);
            if (u0.m2663do().m2665if()) {
                if (comicReadMenuView.f10153catch != null) {
                    u0.m2664for(activity, da.m430public(), false, true);
                    return;
                }
                throw null;
            }
            return;
        }
        comicReadMenuView.m3650class(activity, false);
        if (u0.m2663do().m2665if()) {
            u0.m2664for(activity, false, false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBarrageInputHeight() {
        if (w0.m2890static()) {
            return eg.m587catch(60.0f);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBookAuthor() {
        ComicBean comicBean = this.f10154class;
        if (comicBean != null) {
            return comicBean.getAuthor();
        }
        ComicCollectBean comicCollectBean = this.f10155const;
        return comicCollectBean != null ? comicCollectBean.getAuthor() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBookId() {
        ComicBean comicBean = this.f10154class;
        if (comicBean != null) {
            return comicBean.getId();
        }
        ComicCollectBean comicCollectBean = this.f10155const;
        return comicCollectBean != null ? comicCollectBean.getCollectId() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBookImage() {
        ComicBean comicBean = this.f10154class;
        if (comicBean != null) {
            return comicBean.getImg();
        }
        ComicCollectBean comicCollectBean = this.f10155const;
        return comicCollectBean != null ? comicCollectBean.getIcon() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBookName() {
        ComicBean comicBean = this.f10154class;
        if (comicBean != null) {
            return comicBean.getName();
        }
        ComicCollectBean comicCollectBean = this.f10155const;
        return comicCollectBean != null ? comicCollectBean.getName() : "";
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m3644goto(ComicReadMenuView comicReadMenuView) {
        comicReadMenuView.getContext();
        lv lvVar = new lv();
        lvVar.f2938super = Boolean.TRUE;
        BarrageCommentsPopupView barrageCommentsPopupView = new BarrageCommentsPopupView(comicReadMenuView.f10156do, comicReadMenuView.f10165public);
        if (barrageCommentsPopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        barrageCommentsPopupView.popupInfo = lvVar;
        barrageCommentsPopupView.show();
    }

    /* renamed from: break  reason: not valid java name */
    public final boolean m3648break() {
        if (k30.m1427catch().f3156extends) {
            k00 k00Var = this.f10151break;
            if (k00Var != null) {
                k00Var.mo1403abstract();
                return true;
            }
            return true;
        }
        return false;
    }

    /* renamed from: catch  reason: not valid java name */
    public void m3649catch() {
        Ccase ccase = this.f10159for;
        if (ccase != null) {
            ccase.dismiss();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public void m3650class(Activity activity, boolean z) {
        if (this.f10162import == null) {
            this.f10162import = activity.getWindow();
        }
        if (z) {
            this.f10162import.addFlags(2048);
            this.f10162import.addFlags(1024);
            return;
        }
        this.f10162import.clearFlags(2048);
    }

    /* renamed from: const  reason: not valid java name */
    public void m3651const() {
        if (this.f10170throw || this.f10158final) {
            return;
        }
        if (this.mTopLayout.getVisibility() == 0) {
            this.mTopLayout.startAnimation(this.f10171try);
        }
        if (this.mDefuaultLayout.getVisibility() == 0) {
            this.mDefuaultLayout.startAnimation(this.f10157else);
        }
        if (this.mSetLayout.getVisibility() == 0) {
            this.mSetLayout.startAnimation(this.f10169this);
        }
    }

    @Override // com.apk.n1
    /* renamed from: do */
    public void mo1807do() {
        m3660this();
    }

    /* renamed from: final  reason: not valid java name */
    public void m3652final(List<ComicChapterBean> list) {
        this.f10168super = list;
        if (this.mChapterSeekBar.getVisibility() != 0) {
            this.mChapterSeekBar.setVisibility(0);
        }
        new b1().m141do(new p20(this));
    }

    /* renamed from: import  reason: not valid java name */
    public void m3653import() {
        if (this.f10153catch != null) {
            if (da.m430public()) {
                this.mScreenTView.get(0).setSelected(true);
                this.mScreenTView.get(1).setSelected(false);
                this.mPageTypeLeft.setVisibility(0);
                this.mPageTypeRight.setVisibility(0);
                this.mPageTypeUpDown.setVisibility(0);
                this.mPageLandTip.setVisibility(8);
            } else {
                this.mScreenTView.get(0).setSelected(false);
                this.mScreenTView.get(1).setSelected(true);
                this.mPageTypeLeft.setVisibility(8);
                this.mPageTypeRight.setVisibility(8);
                this.mPageTypeUpDown.setVisibility(8);
                this.mPageLandTip.setVisibility(0);
            }
            int m587catch = eg.m587catch(10.0f);
            LinearLayout linearLayout = this.mDefuaultLayout;
            if (this.f10153catch != null) {
                linearLayout.setPadding(0, 0, 0, da.m430public() ? u0.m2663do().f4815if : 0);
                LinearLayout linearLayout2 = this.mSetLayout;
                if (this.f10153catch != null) {
                    linearLayout2.setPadding(m587catch, m587catch, m587catch, da.m430public() ? u0.m2663do().f4815if : m587catch);
                    return;
                }
                throw null;
            }
            throw null;
        }
        throw null;
    }

    @OnClick({R.id.read_menu_back, R.id.read_menu_report_failed, R.id.read_menu_more_bt, R.id.book_read_menu_novel_list_bt, R.id.book_read_menu_cache_bt, R.id.read_menu_send_barrage_bt, R.id.book_read_menu_night_bt, R.id.book_read_menu_set_bt, R.id.view_bookread_menu_page_up_down, R.id.view_bookread_menu_page_left, R.id.view_bookread_menu_page_right, R.id.book_read_menu_last_chapter, R.id.book_read_menu_next_chapter, R.id.read_menu_comment_bt, R.id.read_bottom_menu_port, R.id.read_bottom_menu_land, R.id.book_read_menu_brightness_to_system, R.id.read_bottom_barrage_switch})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.book_read_menu_brightness_to_system /* 2131296494 */:
                this.f10161if.m1109case(!this.f10161if.m1114if());
                this.f10161if.m1116try();
                m3660this();
                return;
            case R.id.book_read_menu_cache_bt /* 2131296495 */:
                boolean h = mu.h(getBookId());
                if (h || !mu.m1768goto(this.f10156do)) {
                    new zu.Cdo(getContext()).m3253do(null, new String[]{ze.q(R.string.cache_download_book_txt), ze.q(R.string.cache_download_book_at_begin_txt)}, new i20(this, h)).show();
                    return;
                }
                return;
            case R.id.book_read_menu_last_chapter /* 2131296503 */:
                if (m3648break()) {
                    return;
                }
                this.f10151break.mo1407class();
                return;
            case R.id.book_read_menu_next_chapter /* 2131296509 */:
                if (m3648break()) {
                    return;
                }
                this.f10151break.mo1411final();
                return;
            case R.id.book_read_menu_night_bt /* 2131296510 */:
                if (this.f10153catch != null) {
                    da.m434switch(!da.m427native());
                    m3658super();
                    return;
                }
                throw null;
            case R.id.book_read_menu_novel_list_bt /* 2131296511 */:
                if (m3648break()) {
                    return;
                }
                if (m3654native()) {
                    m3651const();
                }
                this.f10151break.mo1406catch();
                return;
            case R.id.book_read_menu_set_bt /* 2131296521 */:
                this.mSetLayout.setVisibility(0);
                this.mSetLayout.startAnimation(this.f10160goto);
                if (this.f10153catch != null) {
                    if (da.m430public() || this.mTopLayout.getVisibility() != 0) {
                        return;
                    }
                    this.mTopLayout.startAnimation(this.f10171try);
                    return;
                }
                throw null;
            case R.id.read_bottom_barrage_switch /* 2131297349 */:
                Activity activity = this.f10156do;
                if (this.f10153catch != null) {
                    BarrageControlPopWindow barrageControlPopWindow = new BarrageControlPopWindow(activity, da.m430public());
                    barrageControlPopWindow.showAtLocation(this.mDefuaultLayout, 80, 0, 0);
                    barrageControlPopWindow.setOnBarrageConfigListener(this.f10163native);
                    if (this.f10153catch != null) {
                        if (da.m430public()) {
                            return;
                        }
                        m3651const();
                        return;
                    }
                    throw null;
                }
                throw null;
            case R.id.read_bottom_menu_land /* 2131297350 */:
                if (this.mScreenTView.get(1).isSelected()) {
                    return;
                }
                if (this.f10153catch != null) {
                    tt.f4763do.putBoolean("SP_READ_SCREEN_LAND_PORT_KEY", false);
                    this.f10151break.mo1423throws(false, 260);
                    return;
                }
                throw null;
            case R.id.read_bottom_menu_port /* 2131297351 */:
                if (this.mScreenTView.get(0).isSelected()) {
                    return;
                }
                if (this.f10153catch != null) {
                    tt.f4763do.putBoolean("SP_READ_SCREEN_LAND_PORT_KEY", true);
                    this.f10151break.mo1423throws(true, FragmentManagerImpl.ANIM_DUR);
                    return;
                }
                throw null;
            case R.id.read_menu_back /* 2131297361 */:
                this.f10151break.mo1417return(true, true);
                return;
            case R.id.read_menu_comment_bt /* 2131297365 */:
                m3651const();
                postDelayed(new Cif(), 260L);
                return;
            case R.id.read_menu_more_bt /* 2131297370 */:
                if (m3648break()) {
                    return;
                }
                if (this.f10159for == null) {
                    this.f10159for = new Ccase(this, null);
                }
                this.f10159for.showAsDropDown(this.mMoreView);
                return;
            case R.id.read_menu_report_failed /* 2131297373 */:
                if (m3648break()) {
                    return;
                }
                if (System.currentTimeMillis() - this.f10172while < 180000) {
                    ToastUtils.show((int) R.string.tips_couple_refresh_txt);
                    return;
                }
                f00 f00Var = this.f10153catch;
                if (f00Var != null) {
                    b1 b1Var = new b1();
                    b1Var.m143if(f00Var.f3971if);
                    b1Var.m141do(new j00(f00Var, true, true));
                }
                this.f10172while = System.currentTimeMillis();
                return;
            case R.id.read_menu_send_barrage_bt /* 2131297374 */:
                m3651const();
                postDelayed(new Cdo(), 150L);
                return;
            case R.id.view_bookread_menu_page_left /* 2131297792 */:
                ToastUtils.show((int) R.string.read_menu_page_left_txt);
                m3659switch(1);
                m3651const();
                return;
            case R.id.view_bookread_menu_page_right /* 2131297794 */:
                ToastUtils.show((int) R.string.read_menu_page_right_txt);
                m3659switch(0);
                m3651const();
                return;
            case R.id.view_bookread_menu_page_up_down /* 2131297796 */:
                ToastUtils.show((int) R.string.read_menu_page_up_down_txt);
                m3659switch(2);
                m3651const();
                return;
            default:
                return;
        }
    }

    /* renamed from: native  reason: not valid java name */
    public boolean m3654native() {
        return this.mTopLayout.getVisibility() == 0 || this.mSetLayout.getVisibility() == 0;
    }

    /* renamed from: public  reason: not valid java name */
    public void m3655public() {
        lv lvVar = new lv();
        lvVar.f2941throw = new h20(this);
        lvVar.f2940this = ov.NoAnimation;
        BookReadDmGuidePopupView bookReadDmGuidePopupView = new BookReadDmGuidePopupView(this.f10156do);
        if (bookReadDmGuidePopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (bookReadDmGuidePopupView instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (bookReadDmGuidePopupView instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (bookReadDmGuidePopupView instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        bookReadDmGuidePopupView.popupInfo = lvVar;
        bookReadDmGuidePopupView.show();
    }

    /* renamed from: return  reason: not valid java name */
    public void m3656return(ComicBean comicBean, ComicCollectBean comicCollectBean) {
        this.f10154class = comicBean;
        this.f10155const = comicCollectBean;
        this.mTitleTView.setText(getBookName());
    }

    public void setBarrageSendViewVisible(boolean z) {
        TextView textView;
        if (!w0.m2890static() || (textView = this.mBarrageSendView) == null) {
            return;
        }
        textView.setVisibility(z ? 0 : 8);
    }

    /* renamed from: static  reason: not valid java name */
    public void m3657static() {
        if (this.f10153catch.f1189strictfp || this.f10158final) {
            return;
        }
        this.f10170throw = true;
        if (this.mTopLayout.getVisibility() != 0) {
            this.mTopLayout.setVisibility(0);
            this.mTopLayout.startAnimation(this.f10164new);
        }
        if (this.mDefuaultLayout.getVisibility() != 0) {
            this.mDefuaultLayout.setVisibility(0);
            this.mDefuaultLayout.startAnimation(this.f10152case);
        }
        if (ze.m3179private("SP_READ_SHOW_BARRAGE_GUIDE_KEY", true)) {
            tt.f4763do.putBoolean("SP_READ_SHOW_BARRAGE_GUIDE_KEY", false);
            postDelayed(new Runnable() { // from class: com.apk.g20
                @Override // java.lang.Runnable
                public final void run() {
                    ComicReadMenuView.this.m3655public();
                }
            }, 260L);
        }
    }

    /* renamed from: super  reason: not valid java name */
    public final void m3658super() {
        if (this.f10153catch != null) {
            if (da.m427native()) {
                this.f10151break.mo1410else(true);
                this.mDayNightTView.setTextColor(Color.parseColor("#D81E06"));
                this.mDayNightTView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, getResources().getDrawable(R.drawable.text_bottom_night_nor), (Drawable) null, (Drawable) null);
                return;
            }
            this.f10151break.mo1410else(false);
            this.mDayNightTView.setTextColor(Color.parseColor("#FFFFFF"));
            this.mDayNightTView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, getResources().getDrawable(R.drawable.text_bottom_day_nor), (Drawable) null, (Drawable) null);
            return;
        }
        throw null;
    }

    /* renamed from: switch  reason: not valid java name */
    public final void m3659switch(int i) {
        if (this.f10153catch.m715import() == i) {
            return;
        }
        this.f10151break.mo1419super(i, true, true, false);
        m3662while();
    }

    /* renamed from: this  reason: not valid java name */
    public void m3660this() {
        if (this.f10161if.m1114if()) {
            this.mSystemBrightTxt.setSelected(true);
        } else {
            this.mSystemBrightTxt.setSelected(false);
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public void m3661throw() {
        this.mTopLayout.setVisibility(4);
        this.mDefuaultLayout.setVisibility(4);
        if (w0.m2890static()) {
            this.mBarrageSwitchView.setText(ze.r(R.string.comic_barrage_count_txt, 0));
            this.mBarrageSendView.setVisibility(0);
        }
        if (da.m433super(getBookId())) {
            new b1().m141do(new n20(this));
        }
        hg hgVar = new hg(this.f10156do);
        this.f10161if = hgVar;
        hgVar.m1110do(this.mBrightnessSeekBar, this);
        this.f10161if.m1116try();
        m3660this();
        m3658super();
        m3653import();
        if (this.f10153catch != null) {
            boolean m3179private = ze.m3179private("SP_COMIC_READ_SHOW_PAGE_TITLE_KEY", true);
            this.mSwitchButton.setChecked(m3179private);
            this.f10151break.mo1418strictfp(m3179private);
            this.mSwitchButton.setOnCheckedChangeListener(new q20(this));
            SwitchButton switchButton = this.mVolumeFlipCB;
            if (this.f10153catch != null) {
                switchButton.setChecked(da.m431return());
                this.mVolumeFlipCB.setOnCheckedChangeListener(new r20(this));
                m3662while();
                this.mChapterSeekBar.setOnSeekBarChangeListener(new o20(this));
                TextView textView = this.mBarrageSwitchView;
                if (textView != null) {
                    textView.setSelected(this.f10153catch.m706default());
                    if (this.f10153catch != null) {
                        setBarrageSendViewVisible(da.m430public());
                        return;
                    }
                    throw null;
                }
                return;
            }
            throw null;
        }
        throw null;
    }

    /* renamed from: while  reason: not valid java name */
    public final void m3662while() {
        int m715import = this.f10153catch.m715import();
        if (m715import == 0) {
            this.mPageTypeRight.setSelected(true);
            this.mPageTypeLeft.setSelected(false);
            this.mPageTypeUpDown.setSelected(false);
        } else if (m715import == 1) {
            this.mPageTypeLeft.setSelected(true);
            this.mPageTypeUpDown.setSelected(false);
            this.mPageTypeRight.setSelected(false);
        } else if (m715import != 2) {
        } else {
            this.mPageTypeUpDown.setSelected(true);
            this.mPageTypeLeft.setSelected(false);
            this.mPageTypeRight.setSelected(false);
        }
    }
}
