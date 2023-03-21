package com.biquge.ebook.app.ui.book;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.BindViews;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.b1;
import com.apk.bg;
import com.apk.ca;
import com.apk.da;
import com.apk.eg;
import com.apk.g2;
import com.apk.h2;
import com.apk.hf;
import com.apk.hg;
import com.apk.j2;
import com.apk.l2;
import com.apk.lv;
import com.apk.n1;
import com.apk.n2;
import com.apk.n9;
import com.apk.o;
import com.apk.o0;
import com.apk.o9;
import com.apk.ov;
import com.apk.p9;
import com.apk.r0;
import com.apk.t9;
import com.apk.tt;
import com.apk.u0;
import com.apk.u9;
import com.apk.uv;
import com.apk.v;
import com.apk.v0;
import com.apk.v9;
import com.apk.w0;
import com.apk.yv;
import com.apk.ze;
import com.apk.zu;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.ad.AdFloatView;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.NewYyConfBean;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.ChangeSourceActivity;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import com.biquge.ebook.app.ui.book.adapter.BookRecyclerViewAdapter;
import com.biquge.ebook.app.ui.view.CoverImageView;
import com.biquge.ebook.app.ui.view.ReadFontPopupView;
import com.biquge.ebook.app.ui.view.RedBgColorDialog;
import com.biquge.ebook.app.ui.view.RedBgImageDialog;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.widget.BookReadDmGuidePopupView;
import com.biquge.ebook.app.widget.RoundBgView;
import com.biquge.ebook.app.widget.StatusBarView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.lxj.xpopup.impl.ConfirmPopupView;
import com.manhua.ui.widget.barrage.BarrageCommentsPopupView;
import com.manhua.ui.widget.barrage.BarrageControlPopWindow;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class NewBookReadMenuView extends FrameLayout implements n1 {

    /* renamed from: abstract  reason: not valid java name */
    public int f6998abstract;
    @BindView(R.id.read_add_shelf_btn)
    public TextView addNovelShelfBtn;
    @BindView(R.id.transcoding_read_add_shelf_btn)
    public TextView addShelfBtn;
    @BindView(R.id.book_read_menu_auto_read_bt)
    public TextView autoReadBtn;

    /* renamed from: break  reason: not valid java name */
    public WebSiteBean f6999break;
    @BindView(R.id.book_read_menu_cache_bt)
    public TextView cacheBtn;

    /* renamed from: case  reason: not valid java name */
    public l2 f7000case;

    /* renamed from: catch  reason: not valid java name */
    public hg f7001catch;
    @BindView(R.id.book_read_menu_novel_list_bt)
    public TextView cateBtn;

    /* renamed from: class  reason: not valid java name */
    public boolean f7002class;

    /* renamed from: const  reason: not valid java name */
    public boolean f7003const;

    /* renamed from: continue  reason: not valid java name */
    public final BarrageControlPopWindow.OnBarrageConfigListener f7004continue;
    @BindView(R.id.read_menu_web_day_night_switch_bt)
    public ImageView dayNightBtn;

    /* renamed from: default  reason: not valid java name */
    public List<ChapterBean> f7005default;

    /* renamed from: do  reason: not valid java name */
    public Cpublic f7006do;

    /* renamed from: else  reason: not valid java name */
    public h2 f7007else;
    @BindView(R.id.book_read_menu_ext_bt)
    public TextView exitBtn;

    /* renamed from: extends  reason: not valid java name */
    public bg f7008extends;

    /* renamed from: final  reason: not valid java name */
    public Animation f7009final;

    /* renamed from: finally  reason: not valid java name */
    public RedBgImageDialog f7010finally;

    /* renamed from: for  reason: not valid java name */
    public AdFloatView f7011for;

    /* renamed from: goto  reason: not valid java name */
    public Book f7012goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f7013if;

    /* renamed from: import  reason: not valid java name */
    public Animation f7014import;

    /* renamed from: interface  reason: not valid java name */
    public View f7015interface;
    @BindView(R.id.book_read_menu_android_tts_vioce)
    public TextView mAndroidTtsVioceBtn;
    @BindView(R.id.book_read_menu_auto_read_layout)
    public LinearLayout mAutoReadLayout;
    @BindView(R.id.book_auto_read_speed_value_txt)
    public TextView mAutoReadSpeedValue;
    @BindViews({R.id.book_read_menu_auto_read_cover, R.id.book_read_menu_auto_read_around, R.id.book_read_menu_auto_read_up})
    public List<TextView> mAutoReadTypeViews;
    @BindView(R.id.book_read_menu_top_bar)
    public StatusBarView mBarView;
    @BindView(R.id.read_menu_send_barrage_bt)
    public TextView mBarrageSendView;
    @BindView(R.id.read_bottom_barrage_switch)
    public TextView mBarrageSwitchView;
    @BindView(R.id.book_read_menu_bd_voice_layout)
    public LinearLayout mBdTtsVoiceLayout;
    @BindView(R.id.book_read_menu_bg_listview)
    public RecyclerView mBgRecyclerView;
    @BindView(R.id.book_read_menu_bottom_layout)
    public ConstraintLayout mBottomLayout;
    @BindView(R.id.book_read_menu_brightness_seekbar)
    public SeekBar mBrightnessSeekBar;
    @BindView(R.id.read_menu_chang_source)
    public TextView mChangeSourceTxt;
    @BindView(R.id.book_read_menu_chapter_seekbar)
    public SeekBar mChapterSeekBar;
    @BindView(R.id.read_menu_comment_bt)
    public ImageView mComment;
    @BindView(R.id.book_read_menu_default_layout)
    public ConstraintLayout mDefuaultLayout;
    @BindView(R.id.read_menu_eyeshield_bt)
    public ImageView mEyeshield;
    @BindView(R.id.book_read_menu_font_value_txt)
    public TextView mFontSizeTxt;
    @BindView(R.id.book_read_menu_linespace_value_txt)
    public TextView mLinespaceTxt;
    @BindView(R.id.read_menu_more_bt)
    public ImageView mMoreImage;
    @BindViews({R.id.view_bookread_menu_page_simulation, R.id.view_bookread_menu_page_left_right, R.id.view_bookread_menu_page_up_down})
    public List<TextView> mPageTypeViews;
    @BindView(R.id.book_read_menu_readaloud_pause)
    public TextView mPauseResumeView;
    @BindView(R.id.book_read_menu_readaloud_layout)
    public LinearLayout mReadAloudLayout;
    @BindViews({R.id.book_read_menu_readaloud_men, R.id.book_read_menu_readaloud_women, R.id.book_read_menu_readaloud_men_xy, R.id.book_read_menu_readaloud_women_yy})
    public List<TextView> mReadAloudTypeViews;
    @BindView(R.id.read_menu_reload_chapter)
    public TextView mRefreshTxt;
    @BindView(R.id.read_menu_report_failed)
    public TextView mReportFailedTxt;
    @BindView(R.id.book_read_menu_set_layout)
    public LinearLayout mSetLayout;
    @BindView(R.id.book_read_menu_switch_coupling)
    public TextView mSwitchCouplingTxt;
    @BindView(R.id.read_menu_day_night_switch_bt)
    public ImageView mSwitchNight;
    @BindView(R.id.book_read_menu_brightness_to_system)
    public TextView mSystemBrightTxt;
    @BindViews({R.id.read_voice_timer_one, R.id.read_voice_timer_two, R.id.read_voice_timer_three, R.id.read_voice_timer_four})
    public List<TextView> mTimerViews;
    @BindView(R.id.book_read_menu_top_external_layout)
    public LinearLayout mTopExternalLayout;
    @BindView(R.id.book_read_menu_top_internal_layout)
    public ConstraintLayout mTopInternalLayout;
    @BindView(R.id.book_read_menu_top_layout)
    public LinearLayout mTopLayout;
    @BindView(R.id.web_book_source_tv)
    public TextView mWebSourceTv;
    @BindView(R.id.book_read_android_tts_layout)
    public LinearLayout mWifiTtsLayout;
    @BindView(R.id.book_wifi_tts_tip_tv)
    public TextView mWifiTtsTipTv;

    /* renamed from: native  reason: not valid java name */
    public Animation f7016native;

    /* renamed from: new  reason: not valid java name */
    public Cnative f7017new;

    /* renamed from: package  reason: not valid java name */
    public Window f7018package;

    /* renamed from: private  reason: not valid java name */
    public Timer f7019private;

    /* renamed from: public  reason: not valid java name */
    public boolean f7020public;

    /* renamed from: return  reason: not valid java name */
    public final Animation.AnimationListener f7021return;
    @BindView(R.id.book_read_menu_set_bt)
    public TextView setBtn;

    /* renamed from: static  reason: not valid java name */
    public final Animation.AnimationListener f7022static;

    /* renamed from: strictfp  reason: not valid java name */
    public final BarrageCommentsPopupView.OnCallBackBarrage f7023strictfp;

    /* renamed from: super  reason: not valid java name */
    public Animation f7024super;

    /* renamed from: switch  reason: not valid java name */
    public final Animation.AnimationListener f7025switch;

    /* renamed from: this  reason: not valid java name */
    public CollectBook f7026this;

    /* renamed from: throw  reason: not valid java name */
    public Animation f7027throw;

    /* renamed from: throws  reason: not valid java name */
    public final Animation.AnimationListener f7028throws;

    /* renamed from: try  reason: not valid java name */
    public Activity f7029try;
    @BindView(R.id.book_read_menu_read_aloud_bt)
    public TextView ttsBtn;

    /* renamed from: volatile  reason: not valid java name */
    public final bg f7030volatile;
    @BindView(R.id.read_menu_web_cache_bt)
    public ImageView webCacheBtn;

    /* renamed from: while  reason: not valid java name */
    public Animation f7031while;

    /* renamed from: protected  reason: not valid java name */
    public static final int f6995protected = eg.m587catch(10.0f);

    /* renamed from: transient  reason: not valid java name */
    public static final int f6997transient = eg.m587catch(60.0f);

    /* renamed from: implements  reason: not valid java name */
    public static final int f6993implements = eg.m587catch(310.0f);

    /* renamed from: instanceof  reason: not valid java name */
    public static final int f6994instanceof = eg.m587catch(110.0f);

    /* renamed from: synchronized  reason: not valid java name */
    public static final int f6996synchronized = eg.m587catch(250.0f);

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cbreak extends yv {
        public Cbreak() {
        }

        @Override // com.apk.yv
        /* renamed from: new */
        public void mo398new(BasePopupView basePopupView) {
            NewBookReadMenuView.this.m3332const();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Runnable {
        public Ccase() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity activity = NewBookReadMenuView.this.f7029try;
            lv lvVar = new lv();
            ReadFontPopupView readFontPopupView = new ReadFontPopupView(NewBookReadMenuView.this.f7029try);
            if (readFontPopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else {
                lvVar.f2917continue = zu.f6266try;
            }
            readFontPopupView.popupInfo = lvVar;
            readFontPopupView.show();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$catch  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccatch extends TimerTask {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ long f7034do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ TextView f7036if;

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$catch$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ String f7037do;

            public Cdo(String str) {
                this.f7037do = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                Ccatch.this.f7036if.setText(this.f7037do);
            }
        }

        public Ccatch(long j, TextView textView) {
            this.f7034do = j;
            this.f7036if = textView;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Object valueOf;
            Object valueOf2;
            try {
                long currentTimeMillis = this.f7034do - System.currentTimeMillis();
                long j = (currentTimeMillis / 1000) / 60;
                int i = (int) (j / 60);
                long j2 = j % 60;
                if (i > 0) {
                    j2 += i * 60;
                }
                long j3 = (currentTimeMillis / 1000) % 60;
                StringBuilder sb = new StringBuilder();
                if (j2 < 10) {
                    valueOf = SpeechSynthesizer.REQUEST_DNS_OFF + j2;
                } else {
                    valueOf = Long.valueOf(j2);
                }
                sb.append(valueOf);
                sb.append(":");
                if (j3 < 10) {
                    valueOf2 = SpeechSynthesizer.REQUEST_DNS_OFF + j3;
                } else {
                    valueOf2 = Long.valueOf(j3);
                }
                sb.append(valueOf2);
                NewBookReadMenuView.this.post(new Cdo(sb.toString()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$class  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cclass extends TimerTask {

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$class$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    View view = new View(NewBookReadMenuView.this.f7029try);
                    view.setId(R.id.book_read_menu_readaloud_logout);
                    NewBookReadMenuView.this.f7008extends.onClick(view);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public Cclass() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            NewBookReadMenuView.this.m3348strictfp();
            NewBookReadMenuView.this.post(new Cdo());
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$const  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cconst implements BarrageControlPopWindow.OnBarrageConfigListener {
        public Cconst() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void alpha(int i, int i2) {
            if (NewBookReadMenuView.this.f7007else != null) {
                tt.f4763do.putInt("SP_BARRAGE_FONT_ALPHA_MARK_POSITION", i);
                tt.f4763do.putInt("SP_BARRAGE_FONT_ALPHA_MARK_KEY", i2);
                NewBookReadMenuView.this.f7007else.N(3);
            }
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void dismiss() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void fontSize(int i, float f) {
            if (NewBookReadMenuView.this.f7007else != null) {
                tt.f4763do.putInt("SP_BARRAGE_FONT_SIZE_MARK_POSITION", i);
                tt.f4763do.putFloat("SP_BARRAGE_FONT_SIZE_MARK_KEY", f);
                NewBookReadMenuView.this.f7007else.N(3);
            }
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void open(boolean z) {
            h2 h2Var = NewBookReadMenuView.this.f7007else;
            if (h2Var != null && h2Var.m1081strictfp()) {
                tt.f4763do.putBoolean("SP_READ_SHOW_DARRAGE_KEY", z);
            }
            h2 h2Var2 = NewBookReadMenuView.this.f7007else;
            if (h2Var2 != null) {
                if (z) {
                    h2Var2.N(3);
                } else {
                    h2Var2.N(2);
                }
            }
            TextView textView = NewBookReadMenuView.this.mBarrageSwitchView;
            if (textView != null) {
                textView.setSelected(z);
            }
        }

        @Override // com.manhua.ui.widget.barrage.BarrageControlPopWindow.OnBarrageConfigListener
        public void speed(int i, float f) {
            if (NewBookReadMenuView.this.f7007else != null) {
                tt.f4763do.putInt("SP_BARRAGE_FONT_SPEED_MARK_POSITION", i);
                tt.f4763do.putFloat("SP_BARRAGE_FONT_SPEED_MARK_KEY", f);
                NewBookReadMenuView.this.f7007else.N(3);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Animation.AnimationListener {

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0092do implements AdFloatView.Cfor {
            public C0092do() {
            }

            @Override // com.biquge.ebook.app.ad.AdFloatView.Cfor
            /* renamed from: do */
            public void mo2256do() {
                AdFloatView adFloatView = NewBookReadMenuView.this.f7011for;
                if (adFloatView != null) {
                    adFloatView.setVisibility(8);
                }
            }

            @Override // com.biquge.ebook.app.ad.AdFloatView.Cfor
            public void onShow() {
                AdFloatView adFloatView = NewBookReadMenuView.this.f7011for;
                if (adFloatView != null) {
                    adFloatView.setVisibility(0);
                }
            }
        }

        public Cdo() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            newBookReadMenuView.f7020public = false;
            NewBookReadMenuView.m3326new(newBookReadMenuView, newBookReadMenuView.f7029try, true);
            if (Cfinally.m797else().f != null) {
                NewBookReadMenuView newBookReadMenuView2 = NewBookReadMenuView.this;
                if (newBookReadMenuView2.f7011for == null) {
                    NewBookReadMenuView.this.f7011for = (AdFloatView) ((ViewStub) newBookReadMenuView2.findViewById(R.id.read_menu_float_ad_bt)).inflate();
                    NewBookReadMenuView.this.f7011for.setSourceTag(2);
                }
                AdFloatView adFloatView = NewBookReadMenuView.this.f7011for;
                if (adFloatView != null) {
                    adFloatView.m3265if(Cfinally.m797else().f, true, new C0092do());
                }
            }
            Cnative cnative = NewBookReadMenuView.this.f7017new;
            if (cnative != null) {
                cnative.notifyDataSetChanged();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            newBookReadMenuView.f7020public = true;
            newBookReadMenuView.f7000case.mo1611while(false);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements Runnable {
        public Celse() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            ze.s(newBookReadMenuView.f7029try, newBookReadMenuView.getBookId(), NewBookReadMenuView.this.getBookName(), true, true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$final  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfinal implements BarrageCommentsPopupView.OnCallBackBarrage {
        public Cfinal() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageCommentsPopupView.OnCallBackBarrage
        public void onInputConntent(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h2 h2Var = NewBookReadMenuView.this.f7007else;
            if (h2Var != null) {
                if (!v0.m2736try().m2741const()) {
                    ze.M(h2Var.f3971if);
                    return;
                } else {
                    BarrageDataUtils.getInstance().addBarrageData(BarrageDataUtils.BARRAGE_OPTION_KEY_NOVEL, h2Var.m1082super(), h2.m1057throws(h2Var.f1672case), str, str2);
                    return;
                }
            }
            throw null;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewBookReadMenuView.m3325if(NewBookReadMenuView.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements Runnable {
        public Cgoto() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                NewBookReadMenuView.this.f7029try.startActivity(new Intent(NewBookReadMenuView.this.f7029try, BookMoreSetActivity.class));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements uv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f7048do;

        public Cif(String str) {
            this.f7048do = str;
        }

        @Override // com.apk.uv
        public void onConfirm() {
            eg.m584abstract(NewBookReadMenuView.this.f7029try, this.f7048do);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$import  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cimport implements Animation.AnimationListener {
        public Cimport() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            newBookReadMenuView.f7020public = false;
            newBookReadMenuView.mDefuaultLayout.setVisibility(8);
            NewBookReadMenuView.this.mBottomLayout.setVisibility(8);
            NewBookReadMenuView.this.mSetLayout.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            newBookReadMenuView.f7020public = true;
            newBookReadMenuView.f7000case.mo1611while(true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$native  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnative extends BaseQuickAdapter<RedBgImageBean, BaseViewHolder> {
        public Cnative(Cdo cdo) {
            super((int) R.layout.view_book_read_menu_color_bg);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, RedBgImageBean redBgImageBean) {
            try {
                ((RoundBgView) baseViewHolder.getView(R.id.item_bg_color_view)).setBg(Color.parseColor(redBgImageBean.getBgColor()));
            } catch (Exception e) {
                e.printStackTrace();
            }
            baseViewHolder.setVisible(R.id.item_bg_chose_color_view, baseViewHolder.getLayoutPosition() == g2.m912const());
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            l2 l2Var = newBookReadMenuView.f7000case;
            if (newBookReadMenuView.f7007else != null) {
                l2Var.mo1602protected(da.m430public());
                return;
            }
            throw null;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$public  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cpublic extends PopupWindow {
        public Cpublic(NewBookReadMenuView newBookReadMenuView) {
            View inflate = View.inflate(newBookReadMenuView.f7029try, R.layout.view_readmenu_popview, null);
            setContentView(inflate);
            setWidth(-2);
            setHeight(-2);
            setFocusable(true);
            setOutsideTouchable(true);
            setBackgroundDrawable(new ColorDrawable(0));
            inflate.findViewById(R.id.view_readmenu_popview_book_detail).setOnClickListener(newBookReadMenuView.f7030volatile);
            TextView textView = (TextView) inflate.findViewById(R.id.view_readmenu_popview_add_bookmark);
            newBookReadMenuView.f7013if = textView;
            textView.setOnClickListener(newBookReadMenuView.f7030volatile);
            inflate.findViewById(R.id.view_readmenu_popview_share).setOnClickListener(newBookReadMenuView.f7030volatile);
            inflate.findViewById(R.id.view_readmenu_popview_back_error).setOnClickListener(newBookReadMenuView.f7030volatile);
            try {
                CoverImageView coverImageView = (CoverImageView) inflate.findViewById(R.id.view_readmenu_popview_book_image);
                if (newBookReadMenuView.f7026this != null) {
                    coverImageView.setCover(newBookReadMenuView.f7026this);
                } else {
                    CollectBook collectBook = new CollectBook();
                    if (newBookReadMenuView.f6999break != null) {
                        collectBook.setWebSite(true);
                        collectBook.setCollectId(newBookReadMenuView.f6999break.getNovelId());
                        collectBook.setName(newBookReadMenuView.f6999break.getTitle());
                        collectBook.setIcon(newBookReadMenuView.f6999break.getImg());
                    } else if (newBookReadMenuView.f7012goto != null) {
                        collectBook.setCollectId(newBookReadMenuView.f7012goto.getId());
                        collectBook.setName(newBookReadMenuView.f7012goto.getName());
                        collectBook.setIcon(newBookReadMenuView.f7012goto.getImg());
                    }
                    coverImageView.setCover(collectBook);
                }
                ((TextView) inflate.findViewById(R.id.view_readmenu_popview_book_name)).setText(newBookReadMenuView.getBookName());
                ((TextView) inflate.findViewById(R.id.view_readmenu_popview_book_author)).setText(newBookReadMenuView.getBookAuthor());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$super  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Csuper extends bg {
        public Csuper() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            switch (view.getId()) {
                case R.id.view_readmenu_popview_add_bookmark /* 2131297805 */:
                    NewBookReadMenuView.this.f7008extends.onClick(view);
                    NewBookReadMenuView.this.m3351this();
                    return;
                case R.id.view_readmenu_popview_back_error /* 2131297806 */:
                    NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
                    if (newBookReadMenuView.f7002class || newBookReadMenuView.f7003const) {
                        return;
                    }
                    ChapterBean m1080static = newBookReadMenuView.f7007else.m1080static();
                    if (m1080static != null) {
                        w0.m2897try(NewBookReadMenuView.this.f7029try, hf.BOOK, ze.r(R.string.book_chapter_faild_back_txt, NewBookReadMenuView.this.getBookName(), m1080static.getName(), m1080static.getOid()));
                    }
                    NewBookReadMenuView.this.m3351this();
                    return;
                case R.id.view_readmenu_popview_book_author /* 2131297807 */:
                case R.id.view_readmenu_popview_book_image /* 2131297809 */:
                case R.id.view_readmenu_popview_book_name /* 2131297810 */:
                default:
                    return;
                case R.id.view_readmenu_popview_book_detail /* 2131297808 */:
                    NewBookReadMenuView newBookReadMenuView2 = NewBookReadMenuView.this;
                    if (newBookReadMenuView2.f7002class || newBookReadMenuView2.f7003const) {
                        return;
                    }
                    BookDetailActivity.o(newBookReadMenuView2.f7029try, n2.m1811catch(newBookReadMenuView2.getBookId(), NewBookReadMenuView.this.getBookName(), ""));
                    NewBookReadMenuView.this.m3351this();
                    return;
                case R.id.view_readmenu_popview_share /* 2131297811 */:
                    try {
                        if (NewBookReadMenuView.this.f7015interface == null) {
                            NewBookReadMenuView.this.f7015interface = ((ViewStub) NewBookReadMenuView.this.findViewById(R.id.new_share_page_view)).inflate();
                            NewBookReadMenuView.this.f7015interface.setVisibility(4);
                        }
                        if (NewBookReadMenuView.this.f7012goto == null && NewBookReadMenuView.this.f7026this != null) {
                            NewBookReadMenuView.this.f7012goto = n2.m1809break(NewBookReadMenuView.this.f7026this);
                        }
                        w0.m2882interface(NewBookReadMenuView.this.f7029try, NewBookReadMenuView.this.f7015interface, NewBookReadMenuView.this.f7012goto, null);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    NewBookReadMenuView.this.m3351this();
                    return;
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis extends yv {
        public Cthis() {
        }

        @Override // com.apk.yv
        /* renamed from: new */
        public void mo398new(BasePopupView basePopupView) {
            NewBookReadMenuView.this.m3332const();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$throw  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthrow implements Animation.AnimationListener {
        public Cthrow() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            boolean z = false;
            newBookReadMenuView.f7020public = false;
            h2 h2Var = newBookReadMenuView.f7007else;
            String str = h2Var.f11101a;
            if (str == null || !str.equals(h2Var.f1672case)) {
                h2Var.f11101a = h2Var.f1672case;
                z = da.m421final(h2Var.m1082super());
            }
            if (z) {
                NewBookReadMenuView newBookReadMenuView2 = NewBookReadMenuView.this;
                if (newBookReadMenuView2 == null) {
                    throw null;
                }
                new b1().m141do(new t9(newBookReadMenuView2));
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            NewBookReadMenuView.this.f7020public = true;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements Runnable {
        public Ctry() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewBookReadMenuView.this.mBgRecyclerView.scrollToPosition(g2.m912const());
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadMenuView$while  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cwhile implements Animation.AnimationListener {
        public Cwhile() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            NewBookReadMenuView newBookReadMenuView = NewBookReadMenuView.this;
            newBookReadMenuView.f7020public = false;
            NewBookReadMenuView.m3326new(newBookReadMenuView, newBookReadMenuView.f7029try, false);
            NewBookReadMenuView.this.mTopLayout.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            NewBookReadMenuView.this.f7020public = true;
        }
    }

    public NewBookReadMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7021return = new Cdo();
        this.f7022static = new Cthrow();
        this.f7025switch = new Cwhile();
        this.f7028throws = new Cimport();
        this.f7004continue = new Cconst();
        this.f7023strictfp = new Cfinal();
        this.f7030volatile = new Csuper();
        LayoutInflater.from(context).inflate(R.layout.view_bookread_menu, this);
        ButterKnife.bind(this);
    }

    /* renamed from: catch  reason: not valid java name */
    public static ViewGroup.LayoutParams m3323catch(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBarrageInputHeight() {
        if (m3340import()) {
            return f6997transient;
        }
        return 0;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3325if(NewBookReadMenuView newBookReadMenuView) {
        newBookReadMenuView.getContext();
        lv lvVar = new lv();
        lvVar.f2938super = Boolean.TRUE;
        lvVar.f2941throw = new p9(newBookReadMenuView);
        BarrageCommentsPopupView barrageCommentsPopupView = new BarrageCommentsPopupView(newBookReadMenuView.f7029try, newBookReadMenuView.f7023strictfp);
        if (barrageCommentsPopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        barrageCommentsPopupView.popupInfo = lvVar;
        barrageCommentsPopupView.show();
    }

    /* renamed from: new  reason: not valid java name */
    public static void m3326new(NewBookReadMenuView newBookReadMenuView, Activity activity, boolean z) {
        if (newBookReadMenuView != null) {
            boolean m417const = da.m417const();
            if (z) {
                newBookReadMenuView.m3329break(activity, true);
                if (u0.m2663do().m2665if() && da.m436throw()) {
                    u0.m2664for(activity, da.m430public(), false, m417const);
                    return;
                }
                return;
            }
            newBookReadMenuView.m3329break(activity, false);
            if (u0.m2663do().m2665if() && da.m436throw()) {
                u0.m2664for(activity, false, false, m417const);
                return;
            }
            return;
        }
        throw null;
    }

    private void setAddShelfTxt(boolean z) {
        if (z) {
            this.addShelfBtn.setText(ze.q(R.string.txt_open_bookshlef_txt));
            this.addNovelShelfBtn.setText(ze.q(R.string.txt_open_bookshlef_txt));
            return;
        }
        this.addShelfBtn.setText(ze.q(R.string.txt_add_bookshlef_txt));
        this.addNovelShelfBtn.setText(ze.q(R.string.txt_add_bookshlef_txt));
    }

    private void setSpeechModeSelect(String str) {
        for (TextView textView : this.mReadAloudTypeViews) {
            textView.setSelected(false);
        }
        if ("1".equals(str)) {
            this.mReadAloudTypeViews.get(0).setSelected(true);
        } else if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(str)) {
            this.mReadAloudTypeViews.get(1).setSelected(true);
        } else if ("3".equals(str)) {
            this.mReadAloudTypeViews.get(2).setSelected(true);
        } else if (RedBgImageBean.RED_BG_TYPE_COLOR.equals(str)) {
            this.mReadAloudTypeViews.get(3).setSelected(true);
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public void m3328abstract() {
        this.mBottomLayout.setVisibility(0);
        setDayNightViewVisible(false);
        setCommentViewVisible(false);
        setEyeshieldViewVisible(false);
        AdFloatView adFloatView = this.f7011for;
        if (adFloatView != null) {
            adFloatView.setVisibility(4);
        }
        this.mReadAloudLayout.setVisibility(0);
        this.mReadAloudLayout.startAnimation(this.f7027throw);
        setSpeechModeSelect(da.m423for());
        l2 l2Var = this.f7000case;
        if (l2Var != null) {
            if (l2Var.mo1610volatile()) {
                String str = null;
                NewYyConfBean newYyConfBean = Ccontinue.m379if().f714for;
                if (newYyConfBean != null) {
                    str = newYyConfBean.getWifi_tts_tips();
                    try {
                        boolean contains = newYyConfBean.getVendor().toLowerCase().contains(ze.b().toLowerCase());
                        if (contains && !TextUtils.isEmpty(newYyConfBean.getNot_jixing()) && newYyConfBean.getNot_jixing().toLowerCase().contains(ze.c().toLowerCase())) {
                            contains = false;
                        }
                        if (contains) {
                            this.mAndroidTtsVioceBtn.setText(newYyConfBean.getExtra_btn());
                            this.mAndroidTtsVioceBtn.setVisibility(0);
                        }
                    } catch (Exception unused) {
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    str = "声音不喜欢?尝试断开wifi用蜂窝网络试试";
                }
                this.mWifiTtsTipTv.setText(Html.fromHtml(str));
                this.mWifiTtsLayout.setVisibility(0);
                this.mBdTtsVoiceLayout.setVisibility(8);
                return;
            }
            this.mBdTtsVoiceLayout.setVisibility(0);
            this.mWifiTtsLayout.setVisibility(8);
        }
    }

    /* renamed from: break  reason: not valid java name */
    public void m3329break(Activity activity, boolean z) {
        if (this.f7018package == null) {
            this.f7018package = activity.getWindow();
        }
        if (da.m417const()) {
            if (z) {
                this.f7018package.setFlags(2048, 2048);
            } else {
                this.f7018package.clearFlags(2048);
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m3330case() {
        if (this.f7001catch.m1114if()) {
            this.mSystemBrightTxt.setSelected(true);
        } else {
            this.mSystemBrightTxt.setSelected(false);
        }
    }

    /* renamed from: class  reason: not valid java name */
    public void m3331class() {
        if (this.mAutoReadLayout.getVisibility() == 0) {
            this.mAutoReadLayout.startAnimation(this.f7031while);
            this.mAutoReadLayout.setVisibility(4);
        }
    }

    /* renamed from: const  reason: not valid java name */
    public synchronized void m3332const() {
        if (this.f7020public) {
            return;
        }
        if (this.mTopLayout.getVisibility() == 0) {
            this.mTopLayout.startAnimation(this.f7024super);
        }
        if (this.mDefuaultLayout.getVisibility() == 0) {
            this.mDefuaultLayout.startAnimation(this.f7031while);
        }
        if (this.mSetLayout.getVisibility() == 0) {
            this.mSetLayout.startAnimation(this.f7016native);
        }
        m3354volatile(false);
    }

    /* renamed from: continue  reason: not valid java name */
    public final void m3333continue(int i, TextView textView) {
        m3348strictfp();
        if (this.f6998abstract == i) {
            this.f6998abstract = 0;
            return;
        }
        textView.setSelected(true);
        this.f6998abstract = i;
        long currentTimeMillis = System.currentTimeMillis() + (i * 60 * 1000);
        Timer timer = new Timer();
        this.f7019private = timer;
        timer.schedule(new Ccatch(currentTimeMillis, textView), 0L, 1000L);
        this.f7019private.schedule(new Cclass(), new Date(currentTimeMillis));
    }

    /* renamed from: default  reason: not valid java name */
    public void m3334default() {
        m3348strictfp();
        if (this.f6999break != null) {
            m3343package(this.cateBtn, R.drawable.text_bottom_contents_nor, 0, true);
            m3343package(this.autoReadBtn, R.drawable.text_bottom_scroll_nor, 0, true);
            m3343package(this.ttsBtn, R.drawable.text_bottom_listen_nor, 0, true);
            m3343package(this.setBtn, R.drawable.text_bottom_setting_nor, 0, true);
            m3343package(this.exitBtn, R.drawable.web_book_exit, 0, true);
        }
        LinearLayout linearLayout = this.mTopLayout;
        if (linearLayout != null) {
            linearLayout.clearAnimation();
        }
        ConstraintLayout constraintLayout = this.mDefuaultLayout;
        if (constraintLayout != null) {
            constraintLayout.clearAnimation();
        }
        LinearLayout linearLayout2 = this.mSetLayout;
        if (linearLayout2 != null) {
            linearLayout2.clearAnimation();
        }
        hg hgVar = this.f7001catch;
        if (hgVar != null) {
            hgVar.m1112for();
            this.f7001catch = null;
        }
    }

    @Override // com.apk.n1
    /* renamed from: do */
    public void mo1807do() {
        m3330case();
    }

    /* renamed from: else  reason: not valid java name */
    public final boolean m3335else() {
        if (r0.m2199catch().f3156extends) {
            l2 l2Var = this.f7000case;
            if (l2Var != null) {
                l2Var.mo1595if(true);
            }
            return true;
        }
        return false;
    }

    /* renamed from: extends  reason: not valid java name */
    public final void m3336extends() {
        this.mFontSizeTxt.setText(String.valueOf(g2.m929this()));
    }

    /* renamed from: final  reason: not valid java name */
    public void m3337final() {
        if (this.mReadAloudLayout.getVisibility() == 0) {
            try {
                this.mReadAloudLayout.startAnimation(this.f7031while);
                this.mReadAloudLayout.setVisibility(4);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: finally  reason: not valid java name */
    public final void m3338finally() {
        this.mLinespaceTxt.setText(String.valueOf(g2.m910catch()));
    }

    public String getBookAuthor() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        Book book = this.f7012goto;
        String author = book != null ? book.getAuthor() : "";
        if (TextUtils.isEmpty(author) && (collectBook = this.f7026this) != null) {
            author = collectBook.getAuthor();
        }
        return (!TextUtils.isEmpty(author) || (webSiteBean = this.f6999break) == null) ? author : webSiteBean.getAuthor();
    }

    public String getBookId() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        Book book = this.f7012goto;
        String id = book != null ? book.getId() : "";
        if (TextUtils.isEmpty(id) && (collectBook = this.f7026this) != null) {
            id = collectBook.getCollectId();
        }
        return (!TextUtils.isEmpty(id) || (webSiteBean = this.f6999break) == null) ? id : webSiteBean.getNovelId();
    }

    public String getBookName() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        Book book = this.f7012goto;
        String name = book != null ? book.getName() : "";
        if (TextUtils.isEmpty(name) && (collectBook = this.f7026this) != null) {
            name = collectBook.getName();
        }
        return (!TextUtils.isEmpty(name) || (webSiteBean = this.f6999break) == null) ? name : webSiteBean.getTitle();
    }

    public String getLastChapterName() {
        CollectBook collectBook;
        Book book = this.f7012goto;
        String lastChapter = book != null ? book.getLastChapter() : "";
        return (!TextUtils.isEmpty(lastChapter) || (collectBook = this.f7026this) == null) ? lastChapter : collectBook.getLastCapterName();
    }

    public String getLastChapterTime() {
        CollectBook collectBook;
        Book book = this.f7012goto;
        String lastTime = book != null ? book.getLastTime() : "";
        return (!TextUtils.isEmpty(lastTime) || (collectBook = this.f7026this) == null) ? lastTime : collectBook.getLastUpdateTime();
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m3339goto() {
        try {
            this.mTimerViews.get(0).setSelected(false);
            this.mTimerViews.get(0).setText(ze.q(R.string.book_voice_timer_one_txt));
            this.mTimerViews.get(1).setSelected(false);
            this.mTimerViews.get(1).setText(ze.q(R.string.book_voice_timer_two_txt));
            this.mTimerViews.get(2).setSelected(false);
            this.mTimerViews.get(2).setText(ze.q(R.string.book_voice_timer_three_txt));
            this.mTimerViews.get(3).setSelected(false);
            this.mTimerViews.get(3).setText(ze.q(R.string.book_voice_timer_four_txt));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: import  reason: not valid java name */
    public final boolean m3340import() {
        return (!w0.m2890static() || m3346return() || this.f7002class) ? false : true;
    }

    /* renamed from: interface  reason: not valid java name */
    public final void m3341interface(int i) {
        if (this.f7007else.m1066default() == i) {
            return;
        }
        this.f7000case.mo1605super(i, true, true, false);
        setPageType(i);
    }

    @OnClick({R.id.read_menu_back, R.id.web_book_back_btn, R.id.read_menu_report_failed, R.id.read_menu_chang_source, R.id.read_menu_reload_chapter, R.id.read_menu_send_barrage_bt, R.id.read_menu_read_orientation, R.id.book_read_menu_switch_coupling, R.id.read_menu_more_bt, R.id.book_read_menu_novel_list_bt, R.id.book_read_menu_cache_bt, R.id.book_read_menu_set_bt, R.id.book_read_menu_font_add_bt, R.id.book_read_menu_font_lessen_bt, R.id.book_read_menu_linespace_lessen_bt, R.id.book_read_menu_linespace_add_bt, R.id.book_read_menu_font_type_txt, R.id.view_bookread_menu_page_simulation, R.id.view_bookread_menu_page_left_right, R.id.view_bookread_menu_page_up_down, R.id.book_read_menu_last_chapter, R.id.book_read_menu_next_chapter, R.id.book_read_menu_auto_read_bt, R.id.book_read_menu_auto_read_cover, R.id.book_read_menu_auto_read_around, R.id.book_read_menu_auto_read_up, R.id.book_read_menu_auto_read_exit, R.id.read_menu_comment_bt, R.id.read_menu_eyeshield_bt, R.id.read_menu_day_night_switch_bt, R.id.read_menu_web_day_night_switch_bt, R.id.book_read_menu_more_set, R.id.book_read_menu_brightness_to_system, R.id.book_read_menu_read_aloud_bt, R.id.book_read_menu_readaloud_pause, R.id.book_read_menu_readaloud_logout, R.id.book_read_menu_readaloud_men, R.id.book_read_menu_readaloud_women, R.id.book_read_menu_readaloud_men_xy, R.id.book_read_menu_readaloud_women_yy, R.id.book_auto_read_speed_slow_txt, R.id.book_auto_read_speed_fast_txt, R.id.read_voice_timer_one, R.id.read_voice_timer_two, R.id.read_voice_timer_three, R.id.read_voice_timer_four, R.id.read_bottom_barrage_switch, R.id.book_read_bg_custom_txt, R.id.book_read_bg_personality_txt, R.id.book_read_menu_android_tts_vioce, R.id.transcoding_read_add_shelf_btn, R.id.read_add_shelf_btn, R.id.book_read_menu_ext_bt, R.id.read_menu_web_cache_bt, R.id.dialog_menu_book_detail_bt, R.id.read_menu_web_to_sc, R.id.read_menu_web_chang_source, R.id.read_menu_web_report_failed})
    public void menuClick(View view) {
        final ChapterBean m1080static;
        h2 h2Var;
        hf hfVar = hf.BOOK;
        int id = view.getId();
        Boolean bool = Boolean.FALSE;
        switch (id) {
            case R.id.book_auto_read_speed_fast_txt /* 2131296457 */:
                int m425if = da.m425if();
                if (m425if == 12) {
                    return;
                }
                int i = m425if + 1;
                this.mAutoReadSpeedValue.setText(ze.r(R.string.book_auto_read_speed_value_txt, String.valueOf(i)));
                this.f7000case.b(i);
                tt.f4763do.putInt("auto_read_speed", i);
                return;
            case R.id.book_auto_read_speed_slow_txt /* 2131296458 */:
                int m425if2 = da.m425if();
                if (m425if2 == 1) {
                    return;
                }
                int i2 = m425if2 - 1;
                this.mAutoReadSpeedValue.setText(ze.r(R.string.book_auto_read_speed_value_txt, String.valueOf(i2)));
                this.f7000case.b(i2);
                tt.f4763do.putInt("auto_read_speed", i2);
                return;
            case R.id.book_read_bg_custom_txt /* 2131296478 */:
                lv lvVar = new lv();
                lvVar.f2924for = Boolean.FALSE;
                lvVar.f2921extends = bool;
                lvVar.f2941throw = new Cthis();
                RedBgColorDialog redBgColorDialog = new RedBgColorDialog(this.f7029try);
                if (redBgColorDialog instanceof CenterPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (redBgColorDialog instanceof BottomPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (redBgColorDialog instanceof AttachPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (redBgColorDialog instanceof ImageViewerPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (redBgColorDialog instanceof PositionPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                }
                redBgColorDialog.popupInfo = lvVar;
                redBgColorDialog.show();
                return;
            case R.id.book_read_bg_personality_txt /* 2131296479 */:
                this.f7010finally = new RedBgImageDialog(this.f7029try);
                lv lvVar2 = new lv();
                lvVar2.f2924for = Boolean.FALSE;
                lvVar2.f2921extends = bool;
                lvVar2.f2941throw = new Cbreak();
                RedBgImageDialog redBgImageDialog = this.f7010finally;
                if (redBgImageDialog instanceof CenterPopupView) {
                    lvVar2.f2917continue = zu.f6266try;
                } else if (redBgImageDialog instanceof BottomPopupView) {
                    lvVar2.f2917continue = zu.f6266try;
                } else if (redBgImageDialog instanceof AttachPopupView) {
                    lvVar2.f2917continue = zu.f6266try;
                } else if (redBgImageDialog instanceof ImageViewerPopupView) {
                    lvVar2.f2917continue = zu.f6266try;
                } else if (redBgImageDialog instanceof PositionPopupView) {
                    lvVar2.f2917continue = zu.f6266try;
                }
                redBgImageDialog.popupInfo = lvVar2;
                redBgImageDialog.show();
                m3332const();
                return;
            case R.id.book_read_menu_android_tts_vioce /* 2131296482 */:
                Activity activity = this.f7029try;
                try {
                    Intent intent = new Intent();
                    intent.setAction("android.speech.tts.engine.INSTALL_TTS_DATA");
                    activity.startActivityForResult(intent, 648);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    try {
                        Intent intent2 = new Intent();
                        intent2.setAction("com.android.settings.TTS_SETTINGS");
                        intent2.setFlags(268435456);
                        activity.startActivityForResult(intent2, 648);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
            case R.id.book_read_menu_auto_read_around /* 2131296483 */:
                if (this.mAutoReadTypeViews.get(1).isSelected()) {
                    return;
                }
                setAutoReadType(1);
                this.f7000case.mo1596implements();
                m3331class();
                return;
            case R.id.book_read_menu_auto_read_bt /* 2131296484 */:
                if (m3335else()) {
                    return;
                }
                m3332const();
                this.f7000case.mo1596implements();
                return;
            case R.id.book_read_menu_auto_read_cover /* 2131296485 */:
                if (this.mAutoReadTypeViews.get(0).isSelected()) {
                    return;
                }
                setAutoReadType(0);
                this.f7000case.mo1596implements();
                m3331class();
                return;
            case R.id.book_read_menu_auto_read_exit /* 2131296486 */:
                this.f7008extends.onClick(view);
                return;
            case R.id.book_read_menu_auto_read_up /* 2131296488 */:
                if (this.mAutoReadTypeViews.get(2).isSelected()) {
                    return;
                }
                setAutoReadType(2);
                this.f7000case.mo1596implements();
                m3331class();
                return;
            case R.id.book_read_menu_brightness_to_system /* 2131296494 */:
                this.f7001catch.m1109case(!this.f7001catch.m1114if());
                this.f7001catch.m1116try();
                m3330case();
                return;
            case R.id.book_read_menu_cache_bt /* 2131296495 */:
            case R.id.read_menu_web_cache_bt /* 2131297375 */:
                if (this.f7002class) {
                    ToastUtils.show((int) R.string.tips_local_import_tips_txt);
                    return;
                }
                boolean f = n2.f(getBookId());
                if (f || !n2.m1817else(this.f7029try)) {
                    o0.m1925else().m1931do(this.f7029try, getBookId(), getBookName(), m3346return(), true, new o9(this, f));
                    return;
                }
                return;
            case R.id.book_read_menu_ext_bt /* 2131296498 */:
                Activity activity2 = this.f7029try;
                lv lvVar3 = new lv();
                String q = ze.q(R.string.web_read_close_trans_read_txt);
                String q2 = ze.q(R.string.main_cancel);
                String q3 = ze.q(R.string.share_close_txt);
                n9 n9Var = new n9(this);
                lvVar3.f2917continue = zu.f6266try;
                ConfirmPopupView confirmPopupView = new ConfirmPopupView(activity2, 0);
                confirmPopupView.f9575else = "退出提示";
                confirmPopupView.f9577goto = q;
                confirmPopupView.f9580this = null;
                confirmPopupView.f9569break = q2;
                confirmPopupView.f9571catch = q3;
                confirmPopupView.f9574do = null;
                confirmPopupView.f9578if = n9Var;
                confirmPopupView.f9573const = false;
                confirmPopupView.popupInfo = lvVar3;
                confirmPopupView.show();
                return;
            case R.id.book_read_menu_font_add_bt /* 2131296499 */:
                int m929this = g2.m929this();
                if (m929this >= 30) {
                    return;
                }
                tt.f4763do.putInt("reader_font_size", m929this + 1);
                m3336extends();
                if (this.f7007else.m1075interface(false)) {
                    return;
                }
                ca m315do = ca.m315do();
                int m908break = g2.m908break();
                m315do.f547new = m908break;
                m315do.f542do.setTextSize(m908break);
                this.f7007else.m1062catch();
                this.f7007else.w();
                return;
            case R.id.book_read_menu_font_lessen_bt /* 2131296500 */:
                int m929this2 = g2.m929this();
                if (m929this2 <= 12) {
                    return;
                }
                tt.f4763do.putInt("reader_font_size", m929this2 - 1);
                m3336extends();
                if (this.f7007else.m1075interface(false)) {
                    return;
                }
                ca m315do2 = ca.m315do();
                int m908break2 = g2.m908break();
                m315do2.f547new = m908break2;
                m315do2.f542do.setTextSize(m908break2);
                this.f7007else.m1062catch();
                this.f7007else.w();
                return;
            case R.id.book_read_menu_font_type_txt /* 2131296501 */:
                if (m3342native()) {
                    m3332const();
                }
                postDelayed(new Ccase(), 120L);
                return;
            case R.id.book_read_menu_last_chapter /* 2131296503 */:
                if (m3335else()) {
                    return;
                }
                this.f7000case.mo1587class();
                return;
            case R.id.book_read_menu_linespace_add_bt /* 2131296504 */:
                int m910catch = g2.m910catch();
                if (m910catch >= 40) {
                    return;
                }
                tt.f4763do.putInt("interval_view_id", m910catch + 2);
                m3338finally();
                if (this.f7007else.m1075interface(false)) {
                    return;
                }
                ca.m315do().m318new();
                this.f7007else.m1062catch();
                this.f7007else.w();
                return;
            case R.id.book_read_menu_linespace_lessen_bt /* 2131296505 */:
                int m910catch2 = g2.m910catch();
                if (m910catch2 <= 5) {
                    return;
                }
                tt.f4763do.putInt("interval_view_id", m910catch2 - 2);
                m3338finally();
                if (this.f7007else.m1075interface(false)) {
                    return;
                }
                ca.m315do().m318new();
                this.f7007else.m1062catch();
                this.f7007else.w();
                return;
            case R.id.book_read_menu_more_set /* 2131296507 */:
                if (m3342native()) {
                    m3332const();
                }
                postDelayed(new Cgoto(), 120L);
                return;
            case R.id.book_read_menu_next_chapter /* 2131296509 */:
                if (m3335else()) {
                    return;
                }
                this.f7000case.mo1593final();
                return;
            case R.id.book_read_menu_novel_list_bt /* 2131296511 */:
                if (m3335else()) {
                    return;
                }
                if (m3342native()) {
                    m3332const();
                }
                this.f7000case.mo1586catch();
                return;
            case R.id.book_read_menu_read_aloud_bt /* 2131296512 */:
            case R.id.book_read_menu_readaloud_logout /* 2131296514 */:
            case R.id.book_read_menu_readaloud_pause /* 2131296517 */:
                this.f7008extends.onClick(view);
                return;
            case R.id.book_read_menu_readaloud_men /* 2131296515 */:
                if (this.mReadAloudTypeViews.get(0).isSelected()) {
                    return;
                }
                da.m420extends("1");
                this.f7008extends.onClick(view);
                setSpeechModeSelect("1");
                return;
            case R.id.book_read_menu_readaloud_men_xy /* 2131296516 */:
                if (this.mReadAloudTypeViews.get(2).isSelected()) {
                    return;
                }
                da.m420extends("3");
                this.f7008extends.onClick(view);
                setSpeechModeSelect("3");
                return;
            case R.id.book_read_menu_readaloud_women /* 2131296519 */:
                if (this.mReadAloudTypeViews.get(1).isSelected()) {
                    return;
                }
                da.m420extends(SpeechSynthesizer.REQUEST_DNS_OFF);
                this.f7008extends.onClick(view);
                setSpeechModeSelect(SpeechSynthesizer.REQUEST_DNS_OFF);
                return;
            case R.id.book_read_menu_readaloud_women_yy /* 2131296520 */:
                if (this.mReadAloudTypeViews.get(3).isSelected()) {
                    return;
                }
                da.m420extends(RedBgImageBean.RED_BG_TYPE_COLOR);
                this.f7008extends.onClick(view);
                setSpeechModeSelect(RedBgImageBean.RED_BG_TYPE_COLOR);
                return;
            case R.id.book_read_menu_set_bt /* 2131296521 */:
                this.mSetLayout.setVisibility(0);
                this.mSetLayout.startAnimation(this.f7014import);
                if (this.f7007else != null) {
                    if (!da.m430public() && this.mTopLayout.getVisibility() == 0) {
                        this.mTopLayout.startAnimation(this.f7024super);
                    }
                    m3354volatile(false);
                    if (this.mBgRecyclerView == null || g2.m912const() < 0) {
                        return;
                    }
                    this.mBgRecyclerView.post(new Ctry());
                    return;
                }
                throw null;
            case R.id.book_read_menu_switch_coupling /* 2131296523 */:
                tt.f4763do.putBoolean("SP_COUPLING_CONTENT_KEY", !ze.m3179private("SP_COUPLING_CONTENT_KEY", false));
                this.mSwitchCouplingTxt.setSelected(ze.m3179private("SP_COUPLING_CONTENT_KEY", false));
                this.f7000case.mo1592extends();
                return;
            case R.id.dialog_menu_book_detail_bt /* 2131296712 */:
                String str = (String) this.mWebSourceTv.getTag();
                String r = ze.r(R.string.transcoding_open_source_url_txt, str);
                Activity activity3 = this.f7029try;
                lv lvVar4 = new lv();
                String q4 = ze.q(R.string.tips_tip_title_txt);
                String q5 = ze.q(R.string.main_cancel);
                String q6 = ze.q(R.string.web_read_open_detail_txt);
                Cif cif = new Cif(str);
                lvVar4.f2917continue = zu.f6266try;
                ConfirmPopupView confirmPopupView2 = new ConfirmPopupView(activity3, R.layout.dialog_web_book_source_layout);
                confirmPopupView2.f9575else = q4;
                confirmPopupView2.f9577goto = r;
                confirmPopupView2.f9580this = null;
                confirmPopupView2.f9569break = q5;
                confirmPopupView2.f9571catch = q6;
                confirmPopupView2.f9574do = null;
                confirmPopupView2.f9578if = cif;
                confirmPopupView2.f9573const = false;
                confirmPopupView2.popupInfo = lvVar4;
                confirmPopupView2.show();
                return;
            case R.id.read_add_shelf_btn /* 2131297346 */:
            case R.id.transcoding_read_add_shelf_btn /* 2131297711 */:
                try {
                    if (this.f7007else != null) {
                        if (n2.f(getBookId())) {
                            Intent intent3 = new Intent(this.f7029try, MainActivity.class);
                            intent3.putExtra("type", 1001);
                            intent3.putExtra("source", hfVar);
                            this.f7029try.startActivity(intent3);
                        } else {
                            this.f7007else.A();
                            setAddShelfTxt(true);
                        }
                    }
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case R.id.read_bottom_barrage_switch /* 2131297349 */:
                Activity activity4 = this.f7029try;
                if (this.f7007else != null) {
                    BarrageControlPopWindow barrageControlPopWindow = new BarrageControlPopWindow(activity4, da.m430public());
                    barrageControlPopWindow.showAtLocation(this.mDefuaultLayout, 80, 0, 0);
                    barrageControlPopWindow.setOnBarrageConfigListener(this.f7004continue);
                    if (this.f7007else != null) {
                        if (da.m430public()) {
                            return;
                        }
                        m3332const();
                        return;
                    }
                    throw null;
                }
                throw null;
            case R.id.read_menu_back /* 2131297361 */:
            case R.id.web_book_back_btn /* 2131297821 */:
                this.f7000case.mo1604return(true, true);
                return;
            case R.id.read_menu_chang_source /* 2131297363 */:
            case R.id.read_menu_web_chang_source /* 2131297376 */:
                if (m3335else() || (m1080static = this.f7007else.m1080static()) == null) {
                    return;
                }
                m3332const();
                postDelayed(new Runnable() { // from class: com.apk.f9
                    @Override // java.lang.Runnable
                    public final void run() {
                        NewBookReadMenuView.this.m3350switch(m1080static);
                    }
                }, 120L);
                h2 h2Var2 = this.f7007else;
                if (h2Var2.f1696strictfp.containsKey(h2Var2.f1672case)) {
                    v m2734do = v.m2734do();
                    h2Var2.m1082super();
                    h2Var2.m1089while();
                    if (m2734do == null) {
                        throw null;
                    }
                    return;
                }
                return;
            case R.id.read_menu_comment_bt /* 2131297365 */:
                m3332const();
                postDelayed(new Celse(), 120L);
                return;
            case R.id.read_menu_day_night_switch_bt /* 2131297366 */:
            case R.id.read_menu_web_day_night_switch_bt /* 2131297377 */:
                if (da.m427native()) {
                    da.m434switch(false);
                } else {
                    da.m434switch(true);
                }
                da.m432static(false);
                this.f7008extends.onClick(view);
                m3355while();
                return;
            case R.id.read_menu_eyeshield_bt /* 2131297367 */:
                if (da.m426import()) {
                    da.m432static(false);
                } else {
                    da.m432static(true);
                }
                da.m434switch(false);
                this.f7008extends.onClick(view);
                return;
            case R.id.read_menu_more_bt /* 2131297370 */:
                if (m3335else()) {
                    return;
                }
                if (this.f7006do == null) {
                    this.f7006do = new Cpublic(this);
                }
                this.f7006do.showAsDropDown(this.mMoreImage);
                try {
                    h2 h2Var3 = this.f7007else;
                    setBookMarkStatus(n2.h(h2Var3.m1082super(), h2Var3.f1672case, String.valueOf(h2Var3.f1683goto)));
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            case R.id.read_menu_read_orientation /* 2131297371 */:
                if (m3335else()) {
                    return;
                }
                if (this.f7007else != null) {
                    if (da.m430public()) {
                        h2 h2Var4 = this.f7007else;
                        if (h2Var4 != null) {
                            tt.f4763do.putBoolean("SP_READ_SCREEN_LAND_PORT_KEY", false);
                            v9 v9Var = h2Var4.f1673catch;
                            if (v9Var != null) {
                                v9Var.f5039else = false;
                            }
                            BookRecyclerViewAdapter bookRecyclerViewAdapter = h2Var4.f1675const;
                            if (bookRecyclerViewAdapter != null) {
                                bookRecyclerViewAdapter.f7157for = false;
                            }
                        } else {
                            throw null;
                        }
                    } else {
                        h2 h2Var5 = this.f7007else;
                        if (h2Var5 != null) {
                            tt.f4763do.putBoolean("SP_READ_SCREEN_LAND_PORT_KEY", true);
                            v9 v9Var2 = h2Var5.f1673catch;
                            if (v9Var2 != null) {
                                v9Var2.f5039else = true;
                            }
                            BookRecyclerViewAdapter bookRecyclerViewAdapter2 = h2Var5.f1675const;
                            if (bookRecyclerViewAdapter2 != null) {
                                bookRecyclerViewAdapter2.f7157for = true;
                            }
                        } else {
                            throw null;
                        }
                    }
                    if (m3342native()) {
                        m3332const();
                    }
                    postDelayed(new Cnew(), 220L);
                    return;
                }
                throw null;
            case R.id.read_menu_reload_chapter /* 2131297372 */:
                if (eg.m600implements()) {
                    this.f7007else.m1062catch();
                    h2 h2Var6 = this.f7007else;
                    o.m1921for().m1924new().execute(new j2(h2Var6, h2Var6.f1672case));
                    return;
                }
                return;
            case R.id.read_menu_report_failed /* 2131297373 */:
                if (eg.m600implements()) {
                    h2 h2Var7 = this.f7007else;
                    h2Var7.m1063class(this.f7029try, getBookId(), this.f7007else.f1672case, false);
                    if (h2Var7.f1696strictfp.containsKey(h2Var7.f1672case)) {
                        v m2734do2 = v.m2734do();
                        h2Var7.m1082super();
                        h2Var7.m1089while();
                        if (m2734do2 == null) {
                            throw null;
                        }
                        return;
                    }
                    return;
                }
                return;
            case R.id.read_menu_send_barrage_bt /* 2131297374 */:
                m3332const();
                postDelayed(new Cfor(), 150L);
                return;
            case R.id.read_menu_web_report_failed /* 2131297378 */:
                if (!eg.m600implements() || (h2Var = this.f7007else) == null) {
                    return;
                }
                h2Var.m1063class(this.f7029try, getBookId(), this.f7007else.f1672case, true);
                return;
            case R.id.read_menu_web_to_sc /* 2131297379 */:
                Intent intent4 = new Intent(this.f7029try, MainActivity.class);
                intent4.putExtra("type", 1002);
                intent4.putExtra("source", hfVar);
                this.f7029try.startActivity(intent4);
                return;
            case R.id.read_voice_timer_four /* 2131297382 */:
                m3339goto();
                m3333continue(90, this.mTimerViews.get(3));
                return;
            case R.id.read_voice_timer_one /* 2131297383 */:
                m3339goto();
                m3333continue(15, this.mTimerViews.get(0));
                return;
            case R.id.read_voice_timer_three /* 2131297384 */:
                m3339goto();
                m3333continue(60, this.mTimerViews.get(2));
                return;
            case R.id.read_voice_timer_two /* 2131297385 */:
                m3339goto();
                m3333continue(30, this.mTimerViews.get(1));
                return;
            case R.id.view_bookread_menu_page_left_right /* 2131297793 */:
                m3341interface(0);
                ToastUtils.show((int) R.string.book_style_left_right_toast_txt);
                m3332const();
                return;
            case R.id.view_bookread_menu_page_simulation /* 2131297795 */:
                m3341interface(2);
                ToastUtils.show((int) R.string.book_style_simulation_toast_txt);
                m3332const();
                return;
            case R.id.view_bookread_menu_page_up_down /* 2131297796 */:
                m3341interface(1);
                ToastUtils.show((int) R.string.book_style_up_dwon_toast_txt);
                m3332const();
                return;
            default:
                return;
        }
    }

    /* renamed from: native  reason: not valid java name */
    public boolean m3342native() {
        return this.mTopLayout.getVisibility() == 0 || (this.mSetLayout.getVisibility() == 0 && this.mBottomLayout.getVisibility() == 0);
    }

    /* renamed from: package  reason: not valid java name */
    public final void m3343package(TextView textView, int i, int i2, boolean z) {
        if (i2 != 0) {
            textView.setTextColor(i2);
        }
        if (i != 0) {
            Drawable drawable = getResources().getDrawable(i);
            if (z) {
                drawable.clearColorFilter();
            } else {
                drawable.setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
            }
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        }
    }

    /* renamed from: private  reason: not valid java name */
    public synchronized void m3344private() {
        ChapterBean m1080static;
        if (this.f7007else.l) {
            return;
        }
        if (this.f7020public) {
            return;
        }
        if (this.mTopLayout.getVisibility() != 0) {
            this.mTopLayout.setVisibility(0);
            this.mTopLayout.startAnimation(this.f7009final);
        }
        if (this.mBottomLayout.getVisibility() != 0) {
            this.mBottomLayout.setVisibility(0);
            this.mDefuaultLayout.setVisibility(0);
            this.mDefuaultLayout.startAnimation(this.f7027throw);
        }
        m3354volatile(true);
        if (this.f7007else != null) {
            setAddShelfTxt(this.f7007else.f1695static);
        }
        if (m3346return()) {
            if (this.f7007else != null && (m1080static = this.f7007else.m1080static()) != null) {
                this.mWebSourceTv.setTag(m1080static.getUrl());
                this.mWebSourceTv.setText(ze.r(R.string.read_open_webbook_source_txt, m1080static.getUrl()));
            }
        } else if (ze.m3179private("SP_READ_SHOW_BARRAGE_GUIDE_KEY", true)) {
            tt.f4763do.putBoolean("SP_READ_SHOW_BARRAGE_GUIDE_KEY", false);
            postDelayed(new Runnable() { // from class: com.apk.e9
                @Override // java.lang.Runnable
                public final void run() {
                    NewBookReadMenuView.this.m3353throws();
                }
            }, 120L);
        }
    }

    /* renamed from: public  reason: not valid java name */
    public boolean m3345public() {
        return this.mReadAloudLayout.getVisibility() == 0;
    }

    /* renamed from: return  reason: not valid java name */
    public final boolean m3346return() {
        return this.f6999break != null;
    }

    public void setAutoReadType(int i) {
        for (TextView textView : this.mAutoReadTypeViews) {
            textView.setSelected(false);
        }
        if (i == 0) {
            this.mAutoReadTypeViews.get(0).setSelected(true);
        } else if (i == 1) {
            this.mAutoReadTypeViews.get(1).setSelected(true);
        } else if (i == 2) {
            this.mAutoReadTypeViews.get(2).setSelected(true);
        }
        if (this.f7007else == null) {
            throw null;
        }
        tt.f4763do.putInt("auto_read_type", i);
    }

    public void setBarrageSendViewVisible(boolean z) {
        TextView textView;
        if (!m3340import() || (textView = this.mBarrageSendView) == null) {
            return;
        }
        textView.setVisibility(z ? 0 : 8);
    }

    public void setBookMarkStatus(boolean z) {
        TextView textView = this.f7013if;
        if (textView != null) {
            if (z) {
                textView.setText(ze.q(R.string.book_remove_mark_txt));
            } else {
                textView.setText(ze.q(R.string.book_add_mark_txt));
            }
            this.f7013if.setSelected(z);
        }
    }

    public void setCallBackListener(bg bgVar) {
        this.f7008extends = bgVar;
    }

    public void setCommentViewVisible(boolean z) {
        ImageView imageView;
        if (!w0.m2896throws() || this.f7002class || (imageView = this.mComment) == null) {
            return;
        }
        imageView.setVisibility(z ? 0 : 8);
    }

    public void setDayNightViewVisible(boolean z) {
        if (!m3346return()) {
            this.mSwitchNight.setVisibility(z ? 0 : 8);
            this.addNovelShelfBtn.setVisibility(z ? 0 : 8);
            return;
        }
        this.dayNightBtn.setVisibility(z ? 0 : 8);
        this.webCacheBtn.setVisibility(z ? 0 : 8);
        this.addShelfBtn.setVisibility(z ? 0 : 8);
    }

    public void setEyeMode(boolean z) {
        if (z) {
            this.mEyeshield.setSelected(true);
            this.f7000case.mo1591else(false);
            return;
        }
        this.mEyeshield.setSelected(false);
        this.f7000case.mo1591else(true);
    }

    public void setEyeshieldViewVisible(boolean z) {
        if (m3346return()) {
            return;
        }
        this.mEyeshield.setVisibility(z ? 0 : 8);
    }

    public void setImportFile(boolean z) {
        this.f7002class = z;
        if (z) {
            this.mComment.setVisibility(8);
            this.mReportFailedTxt.setVisibility(8);
            this.mChangeSourceTxt.setVisibility(8);
            this.mRefreshTxt.setVisibility(8);
        }
    }

    public void setNightMode(boolean z) {
        if (z) {
            this.mSwitchNight.setSelected(true);
            this.dayNightBtn.setSelected(true);
            this.f7000case.mo1591else(true);
            return;
        }
        this.mSwitchNight.setSelected(false);
        this.dayNightBtn.setSelected(false);
        this.f7000case.mo1591else(false);
    }

    public void setPageType(int i) {
        for (TextView textView : this.mPageTypeViews) {
            textView.setSelected(false);
        }
        if (i == 0) {
            this.mPageTypeViews.get(1).setSelected(true);
        } else if (i == 1) {
            this.mPageTypeViews.get(2).setSelected(true);
        } else if (i == 2) {
            this.mPageTypeViews.get(0).setSelected(true);
        }
    }

    public void setPauseOrResumeVoice(boolean z) {
        String q;
        String q2;
        TextView textView = this.mPauseResumeView;
        if (textView != null) {
            if (z) {
                q = ze.q(R.string.book_voice_resume_txt);
            } else {
                q = ze.q(R.string.book_voice_pause_txt);
            }
            textView.setText(q);
            this.mPauseResumeView.setSelected(z);
            if (z) {
                q2 = ze.q(R.string.book_voice_pause_desc);
            } else {
                q2 = ze.q(R.string.book_voice_resume_desc);
            }
            ToastUtils.show((CharSequence) q2);
        }
    }

    public void setWebSite(boolean z) {
        this.f7003const = z;
        if (z) {
            this.mReportFailedTxt.setVisibility(8);
            this.mChangeSourceTxt.setVisibility(8);
        }
    }

    /* renamed from: static  reason: not valid java name */
    public void m3347static(boolean z) {
        hg hgVar = this.f7001catch;
        if (hgVar != null) {
            if (hgVar != null) {
                try {
                    if (z) {
                        hgVar.f1843do.getWindow().addFlags(128);
                    } else if (da.m424goto() != 4) {
                        hgVar.f1843do.getWindow().clearFlags(128);
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            throw null;
        }
    }

    /* renamed from: strictfp  reason: not valid java name */
    public void m3348strictfp() {
        Timer timer = this.f7019private;
        if (timer != null) {
            timer.cancel();
        }
        this.f7019private = null;
        m3339goto();
    }

    /* renamed from: super  reason: not valid java name */
    public void m3349super(List<ChapterBean> list) {
        this.f7005default = list;
        if (this.mChapterSeekBar.getVisibility() != 0) {
            this.mChapterSeekBar.setVisibility(0);
        }
        new b1().m141do(new t9(this));
    }

    /* renamed from: switch  reason: not valid java name */
    public void m3350switch(ChapterBean chapterBean) {
        Intent intent = new Intent(this.f7029try, ChangeSourceActivity.class);
        intent.putExtra("bookId", getBookId());
        intent.putExtra("bookName", getBookName());
        intent.putExtra(NotificationCompat.CarExtender.KEY_AUTHOR, getBookAuthor());
        intent.putExtra("chapterName", chapterBean.getName());
        intent.putExtra("lastChapterName", getLastChapterName());
        intent.putExtra("lastChapterTime", getLastChapterTime());
        h2 h2Var = this.f7007else;
        intent.putExtra("readChapterId", h2Var != null ? h2Var.f1672case : "");
        WebSiteBean webSiteBean = this.f6999break;
        if (webSiteBean != null) {
            intent.putExtra("webSiteBean", webSiteBean);
        }
        this.f7029try.startActivity(intent);
    }

    /* renamed from: this  reason: not valid java name */
    public void m3351this() {
        Cpublic cpublic = this.f7006do;
        if (cpublic != null) {
            cpublic.dismiss();
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public void m3352throw() {
        boolean m436throw = da.m436throw();
        if (this.f7007else != null) {
            if (da.m430public() && m436throw) {
                ConstraintLayout constraintLayout = this.mBottomLayout;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, f6993implements + getBarrageInputHeight() + u0.m2663do().f4815if);
                layoutParams.gravity = 80;
                constraintLayout.setLayoutParams(layoutParams);
                ConstraintLayout constraintLayout2 = this.mDefuaultLayout;
                constraintLayout2.setLayoutParams(m3323catch(constraintLayout2, f6994instanceof + getBarrageInputHeight() + u0.m2663do().f4815if));
                LinearLayout linearLayout = this.mSetLayout;
                linearLayout.setLayoutParams(m3323catch(linearLayout, f6996synchronized + u0.m2663do().f4815if));
                this.mDefuaultLayout.setPadding(0, 0, 0, u0.m2663do().f4815if);
                LinearLayout linearLayout2 = this.mSetLayout;
                int i = f6995protected;
                linearLayout2.setPadding(i, i, i, u0.m2663do().f4815if);
                return;
            } else if (this.f7007else != null) {
                int barrageInputHeight = da.m430public() ? getBarrageInputHeight() : 0;
                ConstraintLayout constraintLayout3 = this.mBottomLayout;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, f6993implements + barrageInputHeight);
                layoutParams2.gravity = 80;
                constraintLayout3.setLayoutParams(layoutParams2);
                ConstraintLayout constraintLayout4 = this.mDefuaultLayout;
                constraintLayout4.setLayoutParams(m3323catch(constraintLayout4, f6994instanceof + barrageInputHeight));
                LinearLayout linearLayout3 = this.mSetLayout;
                linearLayout3.setLayoutParams(m3323catch(linearLayout3, f6996synchronized));
                this.mBottomLayout.setPadding(0, 0, 0, 0);
                this.mDefuaultLayout.setPadding(0, 0, 0, 0);
                LinearLayout linearLayout4 = this.mSetLayout;
                int i2 = f6995protected;
                linearLayout4.setPadding(i2, i2, i2, 0);
                return;
            } else {
                throw null;
            }
        }
        throw null;
    }

    /* renamed from: throws  reason: not valid java name */
    public void m3353throws() {
        lv lvVar = new lv();
        lvVar.f2941throw = new u9(this);
        lvVar.f2940this = ov.NoAnimation;
        BookReadDmGuidePopupView bookReadDmGuidePopupView = new BookReadDmGuidePopupView(this.f7029try);
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

    /* renamed from: volatile  reason: not valid java name */
    public void m3354volatile(boolean z) {
        TextView textView;
        TextView textView2;
        if (z) {
            setDayNightViewVisible(true);
            setCommentViewVisible(true);
            setEyeshieldViewVisible(true);
            if (!m3340import() || (textView2 = this.mBarrageSwitchView) == null) {
                return;
            }
            textView2.setVisibility(0);
            return;
        }
        setDayNightViewVisible(false);
        setCommentViewVisible(false);
        setEyeshieldViewVisible(false);
        if (m3340import() && (textView = this.mBarrageSwitchView) != null) {
            textView.setVisibility(4);
        }
        AdFloatView adFloatView = this.f7011for;
        if (adFloatView != null) {
            adFloatView.setVisibility(4);
        }
    }

    /* renamed from: while  reason: not valid java name */
    public final void m3355while() {
        int p;
        int p2;
        WebSiteBean webSiteBean = this.f6999break;
        if (webSiteBean != null) {
            String chapterUrl = webSiteBean.getChapterUrl();
            this.mWebSourceTv.setTag(chapterUrl);
            this.mWebSourceTv.setText(ze.r(R.string.read_open_webbook_source_txt, chapterUrl));
            this.mTopInternalLayout.setVisibility(8);
            this.mTopExternalLayout.setVisibility(0);
            this.mSwitchNight.setVisibility(8);
            CollectBook collectBook = this.f7026this;
            if (collectBook != null && !TextUtils.isEmpty(collectBook.getExternalUrl())) {
                this.webCacheBtn.setVisibility(8);
            }
            this.autoReadBtn.setVisibility(8);
            this.cacheBtn.setVisibility(8);
            this.exitBtn.setVisibility(0);
            findViewById(R.id.read_menu_float_left_layout).setVisibility(8);
            findViewById(R.id.book_read_menu_brightness_layout).setVisibility(8);
            findViewById(R.id.book_read_menu_font_type_txt).setVisibility(8);
            findViewById(R.id.book_read_bg_custom_txt).setVisibility(8);
            findViewById(R.id.book_read_bg_personality_txt).setVisibility(8);
            findViewById(R.id.book_read_menu_more_set_layout).setVisibility(8);
            ((LinearLayout) findViewById(R.id.set_update_size_layout)).setOrientation(1);
            findViewById(R.id.set_update_size_btn_txt).setVisibility(0);
            findViewById(R.id.set_update_interval_btn_txt).setVisibility(0);
            findViewById(R.id.set_interval_tagview).setVisibility(0);
            findViewById(R.id.set_nomarl_interval_tagview).setVisibility(8);
            if (da.m427native()) {
                p = ze.p(R.color.color_e1000000);
                p2 = ze.p(R.color.color_999999);
                this.webCacheBtn.setBackgroundResource(R.drawable.shape_bg_black_circle);
                this.webCacheBtn.setColorFilter(Color.parseColor("#666666"));
                this.dayNightBtn.setBackgroundResource(R.drawable.shape_bg_black_circle);
                this.f7000case.setImmersionBar(false);
            } else {
                p = ze.p(R.color.main_bg_color);
                p2 = ze.p(R.color.color_333333);
                this.webCacheBtn.setBackgroundResource(R.drawable.shape_bg_white_circle);
                this.webCacheBtn.setColorFilter(Color.parseColor("#666666"));
                this.dayNightBtn.setBackgroundResource(R.drawable.shape_bg_white_circle);
                this.f7000case.setImmersionBar(true);
            }
            this.mTopLayout.setBackgroundColor(p);
            this.mDefuaultLayout.setBackgroundColor(p);
            this.mSetLayout.setBackgroundColor(p);
            this.mReadAloudLayout.setBackgroundColor(p);
            this.mAutoReadLayout.setBackgroundColor(p);
            ((TextView) findViewById(R.id.book_read_menu_last_chapter)).setTextColor(p2);
            ((TextView) findViewById(R.id.book_read_menu_next_chapter)).setTextColor(p2);
            m3343package(this.cateBtn, R.drawable.web_book_dir, p2, false);
            m3343package(this.autoReadBtn, R.drawable.text_bottom_scroll_nor, p2, false);
            m3343package(this.ttsBtn, R.drawable.web_book_tts, p2, false);
            m3343package(this.setBtn, R.drawable.web_book_set, p2, false);
            m3343package(this.exitBtn, R.drawable.web_book_exit, p2, false);
        }
    }
}
