package com.biquge.ebook.app.ui.book;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.aa;
import com.apk.b1;
import com.apk.b7;
import com.apk.bg;
import com.apk.c0;
import com.apk.c1;
import com.apk.ca;
import com.apk.d;
import com.apk.da;
import com.apk.dt;
import com.apk.e1;
import com.apk.eg;
import com.apk.f;
import com.apk.f1;
import com.apk.f2;
import com.apk.ft;
import com.apk.g0;
import com.apk.g1;
import com.apk.g9;
import com.apk.h1;
import com.apk.h2;
import com.apk.hf;
import com.apk.hg;
import com.apk.i1;
import com.apk.i2;
import com.apk.i9;
import com.apk.iu;
import com.apk.j9;
import com.apk.jf;
import com.apk.k;
import com.apk.k9;
import com.apk.l2;
import com.apk.l30;
import com.apk.l9;
import com.apk.lv;
import com.apk.m1;
import com.apk.mf;
import com.apk.n2;
import com.apk.o;
import com.apk.og;
import com.apk.ov;
import com.apk.p0;
import com.apk.r0;
import com.apk.s0;
import com.apk.sv;
import com.apk.tt;
import com.apk.u0;
import com.apk.uv;
import com.apk.v;
import com.apk.v3;
import com.apk.v9;
import com.apk.w;
import com.apk.w0;
import com.apk.x4;
import com.apk.xw;
import com.apk.y3;
import com.apk.yb0;
import com.apk.yv;
import com.apk.ze;
import com.apk.zu;
import com.baidu.tts.client.SpeechSynthesizeBag;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.ad.AdFloatView;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.biquge.ebook.app.adapter.BookMarkAdapter;
import com.biquge.ebook.app.app.BaiDuVoiceService;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.receiver.BatteryReceiver;
import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.biquge.ebook.app.ui.activity.RewardVideoActivity;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.book.adapter.BookRecyclerViewAdapter;
import com.biquge.ebook.app.ui.book.simulation.PageView;
import com.biquge.ebook.app.ui.book.view.ReadBookLayout;
import com.biquge.ebook.app.ui.view.NovelDirChapterPopup;
import com.biquge.ebook.app.ui.view.ReadLinearLayoutManager;
import com.biquge.ebook.app.ui.view.RedBgImageDialog;
import com.biquge.ebook.app.ui.view.WebChangeSourcePopupView;
import com.biquge.ebook.app.ui.view.WebReloadPopupView;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.ui.webread.view.WebBookDirLayout;
import com.biquge.ebook.app.ui.webread.view.WebBookReadDirPopView;
import com.biquge.ebook.app.widget.AppCheckBox;
import com.biquge.ebook.app.widget.BookPageTextView;
import com.biquge.ebook.app.widget.BookReadGuidePopupView;
import com.biquge.ebook.app.widget.BookTitleTextView;
import com.biquge.ebook.app.widget.RewardVideoAdView;
import com.biquge.ebook.app.widget.ScrollPaintView;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.ui.widget.ComicReaderViewpager;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.PublicLoadingView;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import com.ss.android.download.api.constant.BaseConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class NewBookReadActivity extends b7 implements l2, m1, f1 {
    public static final Handler A = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    public ScrollPaintView f11272a;
    public boolean b;

    /* renamed from: break  reason: not valid java name */
    public BatteryReceiver f6920break;
    public RewardVideoAdView c;

    /* renamed from: catch  reason: not valid java name */
    public h2 f6921catch;

    /* renamed from: class  reason: not valid java name */
    public Book f6922class;

    /* renamed from: const  reason: not valid java name */
    public CollectBook f6923const;
    public View d;

    /* renamed from: default  reason: not valid java name */
    public boolean f6925default;
    public TextView e;

    /* renamed from: extends  reason: not valid java name */
    public og f6926extends;

    /* renamed from: final  reason: not valid java name */
    public String f6927final;
    public int g;
    public RedBgImageBean h;
    public File i;

    /* renamed from: import  reason: not valid java name */
    public g0 f6930import;

    /* renamed from: interface  reason: not valid java name */
    public String f6932interface;
    public AppCheckBox j;
    public boolean k;
    public String m;
    @BindView(R.id.adview_banner)
    public AdViewBanner mAdViewBanner;
    @BindView(R.id.book_read_slide_page_txt)
    public BookPageTextView mBookPageTextView;
    @BindView(R.id.book_read_chapter_name_txt)
    public BookTitleTextView mBookTitleTextView;
    @BindView(R.id.bookread_loading_layout)
    public PublicLoadingView mLoadingView;
    @BindView(R.id.read_book_menu_view)
    public NewBookReadMenuView mMenuView;
    @BindView(R.id.book_night_view)
    public View mNightView;
    @BindView(R.id.read_content_layout)
    public ReadBookLayout mReadLayout;
    @BindView(R.id.read_content_recyclerview_layout)
    public LinearLayout mRecyclerLayout;
    @BindView(R.id.read_content_recyclerview)
    public PageRecyclerView mRecyclerView;
    @BindView(R.id.read_content_viewpager)
    public ComicReaderViewpager mViewPager;
    public Intent n;

    /* renamed from: native  reason: not valid java name */
    public String f6933native;
    public AudioManager o;

    /* renamed from: public  reason: not valid java name */
    public boolean f6937public;

    /* renamed from: return  reason: not valid java name */
    public int f6938return;

    /* renamed from: static  reason: not valid java name */
    public List<String> f6939static;

    /* renamed from: strictfp  reason: not valid java name */
    public String f6940strictfp;

    /* renamed from: switch  reason: not valid java name */
    public long f6942switch;
    public NovelDirChapterPopup t;

    /* renamed from: this  reason: not valid java name */
    public l30 f6944this;

    /* renamed from: throw  reason: not valid java name */
    public boolean f6945throw;

    /* renamed from: throws  reason: not valid java name */
    public WebSiteBean f6946throws;

    /* renamed from: transient  reason: not valid java name */
    public PageView f6947transient;
    public WebBookReadDirPopView u;
    public int v;

    /* renamed from: volatile  reason: not valid java name */
    public boolean f6948volatile;
    public jf w;

    /* renamed from: while  reason: not valid java name */
    public boolean f6949while;
    public boolean y;
    public boolean z;

    /* renamed from: super  reason: not valid java name */
    public boolean f6941super = true;

    /* renamed from: finally  reason: not valid java name */
    public final Runnable f6928finally = new Cthrows();

    /* renamed from: package  reason: not valid java name */
    public boolean f6934package = false;

    /* renamed from: private  reason: not valid java name */
    public boolean f6935private = false;

    /* renamed from: abstract  reason: not valid java name */
    public boolean f6919abstract = false;

    /* renamed from: continue  reason: not valid java name */
    public boolean f6924continue = true;

    /* renamed from: protected  reason: not valid java name */
    public final ViewPager.OnPageChangeListener f6936protected = new Cdo();

    /* renamed from: implements  reason: not valid java name */
    public final View.OnTouchListener f6929implements = new Cnew();

    /* renamed from: instanceof  reason: not valid java name */
    public final bg f6931instanceof = new Ctry();

    /* renamed from: synchronized  reason: not valid java name */
    public int f6943synchronized = -1;
    public final ScrollPaintView.Cdo f = new Celse();
    public final e1 l = new Cclass();
    public boolean p = true;
    public AudioManager.OnAudioFocusChangeListener q = new Cconst();
    public final Runnable r = new Cfinal();
    public final Runnable s = new Csuper();
    public boolean x = true;

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cbreak extends yv {
        public Cbreak() {
        }

        @Override // com.apk.yv
        /* renamed from: if */
        public void mo308if(BasePopupView basePopupView) {
            NewBookReadActivity.this.j = (AppCheckBox) basePopupView.findViewById(R.id.dialog_choose);
            NewBookReadActivity.this.j.setChecked(false);
            NewBookReadActivity.this.j.setText(ze.q(R.string.txt_download_no_show_txt));
            ((TextView) basePopupView.findViewById(R.id.a8v)).setTextColor(zu.f6262do);
            ((TextView) basePopupView.findViewById(R.id.a8v)).setText(ze.q(R.string.txt_download_offline_btn_txt));
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements RewardVideoAdView.Cif {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f6951do;

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$case$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (NewBookReadActivity.this.isFinishing()) {
                    return;
                }
                Ccase ccase = Ccase.this;
                RewardVideoActivity.o(NewBookReadActivity.this, hf.BOOK, ccase.f6951do ? 10215 : 10213);
            }
        }

        public Ccase(boolean z) {
            this.f6951do = z;
        }

        @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
        /* renamed from: do */
        public void mo905do() {
            h2 h2Var;
            if (f.m683catch()) {
                int i = 0;
                NewBookReadActivity.this.F(false, this.f6951do);
                int m3174instanceof = ze.m3174instanceof("SP_VIDEO_AD_PRELOAD_MOODULE_B_COUNTDOWN_KEY", 5000);
                if (m3174instanceof <= 0 || (h2Var = NewBookReadActivity.this.f6921catch) == null || !h2Var.t()) {
                    i = m3174instanceof;
                }
                NewBookReadActivity.this.postDelayed(new Cdo(), i);
                return;
            }
            RewardVideoActivity.o(NewBookReadActivity.this, hf.BOOK, this.f6951do ? 10215 : 10213);
        }

        @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
        /* renamed from: if */
        public void mo906if() {
            FragmentManagerActivity.i(NewBookReadActivity.this, ze.q(R.string.new_share_lb_title), "9");
        }

        @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
        public void onClose() {
            RewardVideoAdView rewardVideoAdView = NewBookReadActivity.this.c;
            if (rewardVideoAdView != null) {
                rewardVideoAdView.setVisibility(8);
            }
            r0.m2199catch().f3156extends = true;
            ComicReaderViewpager comicReaderViewpager = NewBookReadActivity.this.mViewPager;
            if (comicReaderViewpager != null) {
                comicReaderViewpager.setCanScroll(false);
            }
            PageRecyclerView pageRecyclerView = NewBookReadActivity.this.mRecyclerView;
            if (pageRecyclerView != null) {
                pageRecyclerView.setScrollEnabled(false);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$catch  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ccatch implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f6954do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f6955for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ CollectBook f6956if;

        public Ccatch(Activity activity, CollectBook collectBook, String str) {
            this.f6954do = activity;
            this.f6956if = collectBook;
            this.f6955for = str;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            Intent intent = new Intent(this.f6954do, NewBookReadActivity.class);
            intent.putExtra("collectBook", this.f6956if);
            intent.putExtra("chapterId", this.f6955for);
            this.f6954do.startActivity(intent);
            if (this.f6956if != null) {
                v m2734do = v.m2734do();
                this.f6956if.getCollectId();
                this.f6956if.getName();
                if (m2734do == null) {
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$class  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cclass implements e1 {

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$class$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                NewBookReadActivity.this.K();
            }
        }

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$class$if  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cif implements Runnable {
            public Cif() {
            }

            @Override // java.lang.Runnable
            public void run() {
                NewBookReadActivity.this.f6921catch.p(false);
            }
        }

        public Cclass() {
        }

        @Override // com.apk.e1
        /* renamed from: do */
        public synchronized void mo533do() {
            if (NewBookReadActivity.this.f6939static != null && NewBookReadActivity.this.f6939static.size() > 0) {
                NewBookReadActivity.this.f6939static.remove(0);
                if (NewBookReadActivity.this.f6939static.size() > 0) {
                    return;
                }
            }
            if (NewBookReadActivity.this.f6937public) {
                if (NewBookReadActivity.this.f6921catch.m1065continue(true)) {
                    NewBookReadActivity.this.runOnUiThread(new Cdo());
                    return;
                }
                NewBookReadActivity.this.runOnUiThread(new Cif());
            } else if (NewBookReadActivity.this.f6930import != null) {
                NewBookReadActivity.this.f6930import.m904try();
            }
        }

        @Override // com.apk.e1
        /* renamed from: for */
        public synchronized void mo534for(boolean z, boolean z2) {
            if (NewBookReadActivity.this.z) {
                NewBookReadActivity.this.mMenuView.m3348strictfp();
                return;
            }
            if (z) {
                NewBookReadActivity.v(NewBookReadActivity.this);
            } else {
                ToastUtils.show((int) R.string.book_recode_tts_init_failed_txt);
            }
        }

        @Override // com.apk.e1
        /* renamed from: if */
        public void mo535if(String str, int i) {
            try {
                if (NewBookReadActivity.this.f6933native.length() > 0) {
                    NewBookReadActivity.this.f6933native = NewBookReadActivity.this.f6933native.substring(1, NewBookReadActivity.this.f6933native.length());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.e1
        public void onError() {
            NewBookReadActivity.y(NewBookReadActivity.this);
        }

        @Override // com.apk.e1
        public void onStart() {
            NewBookReadActivity.w(NewBookReadActivity.this);
            s0.m2367if().f4237new = true;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$const  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cconst implements AudioManager.OnAudioFocusChangeListener {
        public Cconst() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            g0 g0Var;
            try {
                if (i == -2) {
                    NewBookReadActivity.z(NewBookReadActivity.this);
                } else if (NewBookReadActivity.this.f6937public && i == -1) {
                    NewBookReadActivity.z(NewBookReadActivity.this);
                } else if (i == -3) {
                    NewBookReadActivity.z(NewBookReadActivity.this);
                } else if (i == 1) {
                    NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
                    if (newBookReadActivity.f6937public && !newBookReadActivity.p && (g0Var = newBookReadActivity.f6930import) != null) {
                        g0Var.m901for();
                    }
                    newBookReadActivity.p = true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ViewPager.OnPageChangeListener {
        public Cdo() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            try {
                if (i == 0) {
                    NewBookReadActivity.this.f6935private = false;
                    NewBookReadActivity.this.f6924continue = true;
                    NewBookReadActivity.this.f6919abstract = false;
                    NewBookReadActivity.this.f6921catch.m1067else(NewBookReadActivity.this.f6948volatile);
                } else if (i == 1) {
                    NewBookReadActivity.this.f6935private = true;
                    NewBookReadActivity.this.f6919abstract = true;
                    NewBookReadActivity.x(NewBookReadActivity.this);
                } else if (i == 2) {
                    NewBookReadActivity.this.f6935private = false;
                    NewBookReadActivity.x(NewBookReadActivity.this);
                }
                if (NewBookReadActivity.this.f6921catch != null) {
                    if (NewBookReadActivity.this.f6919abstract) {
                        h2 h2Var = NewBookReadActivity.this.f6921catch;
                        h2Var.l = true;
                        if (h2Var.m1077protected()) {
                            BarrageDataUtils.getInstance().setScrollState(false);
                            return;
                        }
                        return;
                    }
                    NewBookReadActivity.this.f6921catch.mo713if();
                    if (NewBookReadActivity.this.f6921catch != null) {
                        NewBookReadActivity.this.f6921catch.K();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            try {
                if (NewBookReadActivity.this.f6934package && NewBookReadActivity.this.f6935private && i2 == 0 && NewBookReadActivity.this.f6924continue) {
                    NewBookReadActivity.this.f6924continue = false;
                    NewBookReadActivity.this.mo1597import();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            ChapterBean m1080static;
            try {
                BookChapter m1078public = NewBookReadActivity.this.f6921catch.m1078public();
                if (m1078public == null) {
                    return;
                }
                String str = m1078public.getChapterId() + "=" + m1078public.getAllPage() + "=" + m1078public.getReadPage();
                if (str.equals(NewBookReadActivity.this.f6932interface)) {
                    return;
                }
                NewBookReadActivity.this.f6932interface = str;
                NewBookReadActivity.this.f6921catch.E(i);
                NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
                h2 h2Var = NewBookReadActivity.this.f6921catch;
                boolean z = true;
                if (!h2Var.m1065continue(false) || i != h2Var.m1068extends() - 1) {
                    z = false;
                }
                newBookReadActivity.f6934package = z;
                if (!NewBookReadActivity.this.f6921catch.m1087transient()) {
                    NewBookReadActivity.this.f6921catch.m1085this();
                }
                NewBookReadActivity.this.f6948volatile = false;
                if (!TextUtils.isEmpty(NewBookReadActivity.this.f6940strictfp) && (m1080static = NewBookReadActivity.this.f6921catch.m1080static()) != null) {
                    NewBookReadActivity.this.f6948volatile = NewBookReadActivity.this.f6940strictfp.equals(m1080static.getNid());
                }
                if (!TextUtils.isEmpty(NewBookReadActivity.this.f6940strictfp) && !NewBookReadActivity.this.f6919abstract) {
                    NewBookReadActivity.this.f6921catch.m1067else(NewBookReadActivity.this.f6948volatile);
                }
                NewBookReadActivity.this.f6940strictfp = m1078public.getChapterId();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements ScrollPaintView.Cdo {
        public Celse() {
        }

        /* renamed from: do  reason: not valid java name */
        public void m3315do(boolean z) {
            NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
            if (newBookReadActivity.b) {
                if (z) {
                    LinearLayout linearLayout = newBookReadActivity.mMenuView.mAutoReadLayout;
                    if (linearLayout != null && linearLayout.getVisibility() == 0) {
                        NewBookReadActivity.this.mMenuView.m3331class();
                        NewBookReadActivity.this.f11272a.m3490try();
                        return;
                    }
                    NewBookReadMenuView newBookReadMenuView = NewBookReadActivity.this.mMenuView;
                    newBookReadMenuView.mBottomLayout.setVisibility(0);
                    newBookReadMenuView.setDayNightViewVisible(false);
                    newBookReadMenuView.setCommentViewVisible(false);
                    newBookReadMenuView.mEyeshield.setVisibility(4);
                    AdFloatView adFloatView = newBookReadMenuView.f7011for;
                    if (adFloatView != null) {
                        adFloatView.setVisibility(4);
                    }
                    newBookReadMenuView.mAutoReadLayout.setVisibility(0);
                    newBookReadMenuView.mAutoReadLayout.startAnimation(newBookReadMenuView.f7027throw);
                    newBookReadMenuView.mAutoReadSpeedValue.setText(ze.r(R.string.book_auto_read_speed_value_txt, String.valueOf(da.m425if())));
                    newBookReadMenuView.setAutoReadType(newBookReadMenuView.f7007else.m1064const());
                    return;
                }
                newBookReadActivity.mMenuView.m3331class();
            }
        }

        /* renamed from: if  reason: not valid java name */
        public void m3316if() {
            BookChapter m1079return;
            NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
            if (!newBookReadActivity.b) {
                newBookReadActivity.f11272a.m3487case();
            } else if (newBookReadActivity.f6921catch.m1065continue(true)) {
                ToastUtils.show((int) R.string.book_auto_read_stop_last_page_txt);
                NewBookReadActivity.this.j0();
            } else {
                try {
                    m1079return = NewBookReadActivity.this.f6921catch.m1079return(NewBookReadActivity.this.f6921catch.m1083switch() + 1);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (m1079return != null) {
                    if (m1079return.getItemType() != 2) {
                        String m1069final = NewBookReadActivity.this.f6921catch.m1069final(m1079return);
                        if (TextUtils.isEmpty(m1069final) || "LOAD_FAILED".equals(m1069final)) {
                            ToastUtils.show((int) R.string.book_auto_read_failed_stop_txt);
                            NewBookReadActivity.this.j0();
                            return;
                        }
                    }
                    try {
                        if (NewBookReadActivity.this.f6921catch.m1064const() == 0) {
                            if (NewBookReadActivity.this.f11272a != null) {
                                NewBookReadActivity.this.f11272a.setVisibility(4);
                                NewBookReadActivity.this.f11272a.setImage(ze.o0(NewBookReadActivity.this.mReadLayout));
                                NewBookReadActivity.this.f11272a.m3488for();
                                NewBookReadActivity.this.f11272a.setVisibility(0);
                                NewBookReadActivity.this.f11272a.m3490try();
                            }
                            NewBookReadActivity.this.f6921catch.p(false);
                            return;
                        }
                        NewBookReadActivity.this.f6921catch.p(true);
                        if (NewBookReadActivity.this.f11272a != null) {
                            NewBookReadActivity.this.f11272a.m3488for();
                            NewBookReadActivity.this.f11272a.m3490try();
                            return;
                        }
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                ToastUtils.show((int) R.string.book_auto_read_failed_stop_txt);
                NewBookReadActivity.this.j0();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$final  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfinal implements Runnable {
        public Cfinal() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewBookReadActivity.this.mMenuView.m3347static(true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements i1 {
        public Cfor() {
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements uv {
        public Cgoto() {
        }

        @Override // com.apk.uv
        public void onConfirm() {
            NewBookReadActivity.u(NewBookReadActivity.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements PageView.Cif {
        public Cif() {
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$import  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cimport implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f6967do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f6968for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ Book f6969if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f6970new;

        public Cimport(Activity activity, Book book, String str, String str2) {
            this.f6967do = activity;
            this.f6969if = book;
            this.f6968for = str;
            this.f6970new = str2;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            Intent intent = new Intent(this.f6967do, NewBookReadActivity.class);
            intent.putExtra("book", this.f6969if);
            intent.putExtra("chapterId", this.f6968for);
            this.f6967do.startActivity(intent);
            if (this.f6969if != null) {
                v m2734do = v.m2734do();
                this.f6969if.getId();
                this.f6969if.getName();
                if (m2734do == null) {
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$native  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnative implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ long f6971do;

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$native$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements g1 {
            public Cdo() {
            }

            @Override // com.apk.g1
            public void onData(Object obj) {
                NewBookReadActivity.this.f6921catch.A();
                Cnative cnative = Cnative.this;
                NewBookReadActivity.this.J(cnative.f6971do);
            }
        }

        public Cnative(long j) {
            this.f6971do = j;
        }

        @Override // com.apk.ft
        public void onClick() {
            if (n2.m1810case(NewBookReadActivity.this, true, true, new Cdo())) {
                return;
            }
            NewBookReadActivity.this.f6921catch.A();
            NewBookReadActivity.this.J(this.f6971do);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements View.OnTouchListener {
        public Cnew() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
            if (newBookReadActivity.f6937public) {
                if (motionEvent.getAction() == 0) {
                    if (NewBookReadActivity.this.mMenuView.m3345public()) {
                        NewBookReadActivity.this.mMenuView.m3337final();
                        return true;
                    }
                    NewBookReadActivity.this.mMenuView.m3328abstract();
                    return true;
                }
                return true;
            }
            return newBookReadActivity.f6944this.f2740do.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$public  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cpublic implements dt {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ long f6975do;

        public Cpublic(long j) {
            this.f6975do = j;
        }

        @Override // com.apk.dt
        public void onClick() {
            NewBookReadActivity.this.J(this.f6975do);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$return  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Creturn implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f6977do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ WebSiteBean f6978if;

        public Creturn(Activity activity, WebSiteBean webSiteBean) {
            this.f6977do = activity;
            this.f6978if = webSiteBean;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            Intent intent = new Intent(this.f6977do, NewBookReadActivity.class);
            intent.putExtra("EXTRA_WEB_BEAN_KEY", this.f6978if);
            this.f6977do.startActivity(intent);
            if (this.f6978if != null) {
                String str = (String) p0.m2001do("SP_WEB_TO_RED_KEY");
                v m2734do = v.m2734do();
                this.f6978if.getNovelId();
                this.f6978if.getTitle();
                if (m2734do == null) {
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$static  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cstatic implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f6979do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f6980if;

        public Cstatic(Activity activity, String str) {
            this.f6979do = activity;
            this.f6980if = str;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            Intent intent = new Intent(this.f6979do, NewBookReadActivity.class);
            Book book = new Book();
            book.setId(this.f6980if);
            intent.putExtra("book", book);
            this.f6979do.startActivity(intent);
            if (v.m2734do() == null) {
                throw null;
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$super  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Csuper implements Runnable {
        public Csuper() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewBookReadActivity.this.mMenuView.m3347static(false);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$switch  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cswitch implements PageRecyclerView.Cdo {
        public Cswitch() {
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: case  reason: not valid java name */
        public void mo3317case() {
            NewBookReadActivity.x(NewBookReadActivity.this);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: do  reason: not valid java name */
        public void mo3318do(int i) {
            NewBookReadActivity.this.f6921catch.E(i);
            NewBookReadActivity.this.f6921catch.m1085this();
            NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
            h2 h2Var = newBookReadActivity.f6921catch;
            if (h2Var == null || !newBookReadActivity.b) {
                return;
            }
            h2Var.m1067else(false);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: for  reason: not valid java name */
        public void mo3319for(int i) {
            NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
            h2 h2Var = newBookReadActivity.f6921catch;
            if (h2Var == null || !newBookReadActivity.f6937public) {
                return;
            }
            BookChapter m1079return = h2Var.m1079return(i);
            NewBookReadActivity.this.E(NewBookReadActivity.this.f6921catch.m1069final(m1079return), m1079return);
            NewBookReadActivity.this.f6921catch.E(i);
            NewBookReadActivity.this.f6921catch.m1067else(false);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: if  reason: not valid java name */
        public void mo3320if() {
            NewBookReadActivity.this.f6921catch.n(false);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: new  reason: not valid java name */
        public void mo3321new() {
            NewBookReadActivity.this.f6921catch.o(false);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: try  reason: not valid java name */
        public void mo3322try() {
            if (NewBookReadActivity.this.f6921catch.m1065continue(false)) {
                NewBookReadActivity.this.mo1597import();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis implements sv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6983do;

        public Cthis(String str) {
            this.f6983do = str;
        }

        @Override // com.apk.sv
        public void onCancel() {
            AppCheckBox appCheckBox = NewBookReadActivity.this.j;
            if (appCheckBox == null || !appCheckBox.isChecked()) {
                return;
            }
            ze.W(this.f6983do);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$throw  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthrow implements h1 {

        /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$throw$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo extends c1<Object> {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ ChapterBean f6986do;

            public Cdo(ChapterBean chapterBean) {
                this.f6986do = chapterBean;
            }

            @Override // com.apk.c1
            public Object doInBackground() {
                n2.q(NewBookReadActivity.this.L(), this.f6986do.getOid());
                NewBookReadActivity.this.f6921catch.f1672case = this.f6986do.getOid();
                return super.doInBackground();
            }

            @Override // com.apk.c1
            public void onPostExecute(Object obj) {
                super.onPostExecute(obj);
                NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
                newBookReadActivity.f6945throw = true;
                newBookReadActivity.f6921catch.f1694return = true;
                newBookReadActivity.mMenuView.setImportFile(true);
                h2 h2Var = NewBookReadActivity.this.f6921catch;
                h2Var.f1683goto = 0;
                h2Var.w();
            }

            @Override // com.apk.c1
            public void onPreExecute() {
                super.onPreExecute();
                NewBookReadActivity.this.m3314goto();
            }
        }

        public Cthrow() {
        }

        @Override // com.apk.h1
        /* renamed from: do */
        public void mo1049do() {
        }

        @Override // com.apk.h1
        /* renamed from: for */
        public void mo1050for(ChapterBean chapterBean) {
            StringBuilder m1016super = com.apk.Cgoto.m1016super("SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY");
            m1016super.append(NewBookReadActivity.this.L());
            if (chapterBean.getNovelId().equals(m1016super.toString())) {
                new b1().m141do(new Cdo(chapterBean));
            } else {
                NewBookReadActivity.this.f6921catch.C(chapterBean.getOid());
            }
        }

        @Override // com.apk.h1
        /* renamed from: if */
        public void mo1051if(String str, int i) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h2 h2Var = NewBookReadActivity.this.f6921catch;
            h2Var.f1672case = str;
            h2Var.f1683goto = i;
            h2Var.w();
        }

        @Override // com.apk.h1
        /* renamed from: new */
        public void mo1052new(List<ChapterBean> list, String str) {
            NewBookReadMenuView newBookReadMenuView = NewBookReadActivity.this.mMenuView;
            if (newBookReadMenuView != null) {
                newBookReadMenuView.m3349super(list);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$throws  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthrows implements Runnable {
        public Cthrows() {
        }

        @Override // java.lang.Runnable
        public void run() {
            og ogVar = NewBookReadActivity.this.f6926extends;
            if (ogVar == null || !ogVar.isShowing()) {
                return;
            }
            NewBookReadActivity.this.f6926extends.dismiss();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends bg {
        public Ctry() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x0143, code lost:
            if (java.lang.Math.abs(java.lang.System.currentTimeMillis() - r6) > ((r9.f4233goto * 60) * 1000)) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x016a, code lost:
            if (com.apk.ze.m3174instanceof("SP_TTS_USE_TIME_KEY", r1) >= r9.f4233goto) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x016d, code lost:
            r0 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x016e, code lost:
            if (r0 != false) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0172, code lost:
            if (r9.f4231final != null) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0174, code lost:
            r2 = new java.util.Timer();
            r9.f4231final = r2;
            r2.schedule(new com.apk.t0(r9), 60000, 60000);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0189, code lost:
            r2 = r0;
         */
        @Override // com.apk.bg
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onNoDoubleClick(android.view.View r9) {
            /*
                Method dump skipped, instructions count: 480
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.book.NewBookReadActivity.Ctry.onNoDoubleClick(android.view.View):void");
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.NewBookReadActivity$while  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cwhile extends yv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f6990do;

        public Cwhile(boolean z) {
            this.f6990do = z;
        }

        @Override // com.apk.yv
        /* renamed from: do */
        public boolean mo3121do(BasePopupView basePopupView) {
            BookMarkAdapter bookMarkAdapter = NewBookReadActivity.this.t.f7736package;
            if (bookMarkAdapter == null ? false : bookMarkAdapter.f6340do) {
                NewBookReadActivity.this.t.m3410break();
                return true;
            }
            return false;
        }

        @Override // com.apk.yv
        /* renamed from: for */
        public void mo397for(BasePopupView basePopupView) {
            if (this.f6990do) {
                NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
                if (newBookReadActivity.t != null) {
                    newBookReadActivity.t = null;
                }
            }
        }
    }

    public static void X(String str) {
        ToastUtils.show((CharSequence) str);
    }

    public static void Z(Activity activity, Book book, String str, String str2) {
        w0.m2875extends(activity, new Cimport(activity, book, str, str2), true);
    }

    public static void a0(Activity activity, CollectBook collectBook, String str) {
        w0.m2875extends(activity, new Ccatch(activity, collectBook, str), true);
    }

    public static void b0(Activity activity, String str) {
        w0.m2875extends(activity, new Cstatic(activity, str), true);
    }

    public static void c0(Activity activity, WebSiteBean webSiteBean) {
        w0.m2875extends(activity, new Creturn(activity, webSiteBean), true);
    }

    public static void q(final NewBookReadActivity newBookReadActivity, final String str) {
        if (newBookReadActivity.k) {
            newBookReadActivity.e0(false);
        }
        o m1921for = o.m1921for();
        Runnable runnable = new Runnable() { // from class: com.apk.z8
            @Override // java.lang.Runnable
            public final void run() {
                NewBookReadActivity.this.Q(str);
            }
        };
        ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }

    public static void u(NewBookReadActivity newBookReadActivity) {
        if (newBookReadActivity != null) {
            b1 b1Var = new b1();
            b1Var.m142for(newBookReadActivity, true, ze.q(R.string.txt_download_offline_loading_txt));
            b1Var.m141do(new g9(newBookReadActivity));
            ze.V();
            return;
        }
        throw null;
    }

    public static void v(NewBookReadActivity newBookReadActivity) {
        PageView pageView;
        RewardVideoAdView rewardVideoAdView = newBookReadActivity.c;
        if (rewardVideoAdView == null || rewardVideoAdView.getVisibility() != 0) {
            newBookReadActivity.m3314goto();
            if (newBookReadActivity.mMenuView.m3342native()) {
                newBookReadActivity.mMenuView.m3332const();
            }
            h2 h2Var = newBookReadActivity.f6921catch;
            h2Var.y = true;
            h2Var.e = true;
            com.apk.Cimport cimport = h2Var.f1701throw;
            if (cimport != null) {
                cimport.f2180import = true;
            }
            h2Var.f1674class.setTtsVoice(true);
            newBookReadActivity.f6921catch.y();
            if (newBookReadActivity.f6921catch.m1066default() == 1) {
                newBookReadActivity.f6921catch.x();
            }
            if (newBookReadActivity.f6921catch.m1087transient() && (pageView = newBookReadActivity.f6947transient) != null) {
                pageView.setVisibility(8);
            }
            BookChapter m1078public = newBookReadActivity.f6921catch.m1078public();
            newBookReadActivity.E(newBookReadActivity.f6921catch.m1069final(m1078public), m1078public);
            newBookReadActivity.d0();
            newBookReadActivity.mo1590do(false, false);
            newBookReadActivity.i0();
            newBookReadActivity.f6938return = 0;
        }
    }

    public static void w(NewBookReadActivity newBookReadActivity) {
        newBookReadActivity.mo1590do(false, false);
    }

    public static void x(NewBookReadActivity newBookReadActivity) {
        if (newBookReadActivity.mMenuView.m3342native()) {
            newBookReadActivity.mMenuView.m3332const();
        }
    }

    public static void y(NewBookReadActivity newBookReadActivity) {
        synchronized (newBookReadActivity) {
            if (newBookReadActivity.f6937public) {
                int i = newBookReadActivity.f6938return + 1;
                newBookReadActivity.f6938return = i;
                if (i == 4) {
                    newBookReadActivity.runOnUiThread(new i9(newBookReadActivity));
                }
                if (newBookReadActivity.f6938return >= 4) {
                    return;
                }
                if (!TextUtils.isEmpty(newBookReadActivity.f6933native)) {
                    if (newBookReadActivity.f6930import != null) {
                        newBookReadActivity.f6930import.m904try();
                    }
                    newBookReadActivity.E(newBookReadActivity.f6933native, null);
                }
            }
        }
    }

    public static void z(NewBookReadActivity newBookReadActivity) {
        g0 g0Var;
        if (newBookReadActivity.f6937public && newBookReadActivity.p && (g0Var = newBookReadActivity.f6930import) != null) {
            g0Var.m902if();
        }
        newBookReadActivity.p = false;
    }

    public final void D() {
        try {
            this.f11272a.setVisibility(8);
            this.f11272a.m3487case();
            this.f11272a.m3488for();
            if (this.f6921catch.m1087transient()) {
                this.f6921catch.s(this.f6921catch.m1083switch());
                if (this.f6947transient != null) {
                    this.f6947transient.setVisibility(8);
                }
            }
            this.b = true;
            if (this.f6921catch.m1064const() == 0) {
                this.f11272a.setImage(ze.o0(this.mReadLayout));
                this.f11272a.setVisibility(0);
                this.f11272a.m3490try();
                this.f6921catch.p(false);
            } else {
                this.f11272a.setVisibility(0);
                this.f11272a.m3490try();
            }
            this.mMenuView.m3347static(true);
            this.f6921catch.D(true);
            this.f6921catch.y();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void E(String str, BookChapter bookChapter) {
        String substring;
        if (bookChapter != null) {
            String str2 = bookChapter.getChapterId() + "_" + bookChapter.getReadPage() + "_" + bookChapter.getAllPage();
            if (!TextUtils.isEmpty(this.m) && this.m.equals(str2)) {
                return;
            }
            this.m = str2;
        }
        if (!TextUtils.isEmpty(str) && !"LOAD_FAILED".equals(str)) {
            List<String> list = this.f6939static;
            if (list != null) {
                list.clear();
            }
            if (!n2.i(str)) {
                str = com.apk.Cgoto.m989case(str, "1");
            }
            if (str.getBytes().length > 1024) {
                int length = str.length() / 500;
                if (str.length() % 500 != 0) {
                    length++;
                }
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (i < length) {
                    int i2 = i * 500;
                    i++;
                    int i3 = i * 500;
                    if (i2 > str.length()) {
                        substring = null;
                    } else if (i3 > str.length()) {
                        substring = str.substring(i2, str.length());
                    } else {
                        substring = str.substring(i2, i3);
                    }
                    arrayList.add(substring);
                }
                this.f6939static = arrayList;
            }
            List<String> list2 = this.f6939static;
            if (list2 != null && list2.size() > 0) {
                ArrayList arrayList2 = new ArrayList();
                for (String str3 : this.f6939static) {
                    SpeechSynthesizeBag speechSynthesizeBag = new SpeechSynthesizeBag();
                    speechSynthesizeBag.setText(str3);
                    arrayList2.add(speechSynthesizeBag);
                }
                g0 g0Var = this.f6930import;
                if (g0Var != null) {
                    g0Var.m903new(str, arrayList2);
                    this.f6933native = str;
                    this.f6937public = true;
                    r0.m2199catch().f3974abstract = true;
                    return;
                }
                return;
            }
            g0 g0Var2 = this.f6930import;
            if (g0Var2 != null) {
                g0Var2.m903new(str, null);
                this.f6933native = str;
                this.f6937public = true;
                r0.m2199catch().f3974abstract = true;
                return;
            }
            return;
        }
        ToastUtils.show((int) R.string.book_recode_tts_failed_stop_txt);
        K();
    }

    public void F(boolean z, boolean z2) {
        try {
            if (this.c != null && z && this.c.getVisibility() == 0) {
                return;
            }
            if (this.c == null) {
                RewardVideoAdView rewardVideoAdView = (RewardVideoAdView) ((ViewStub) findViewById(R.id.read_book_reward_view)).inflate();
                this.c = rewardVideoAdView;
                rewardVideoAdView.m3483do(hf.BOOK);
                this.c.setOnRewardBtnCallback(new Ccase(z2));
            }
            if (z2) {
                if (this.c != null) {
                    this.c.m3484if(false);
                }
            } else {
                NewShareDisBean m382for = Ccontinue.m379if().m382for();
                if (m382for != null && !m382for.isOnlyCheckTime() && this.c != null) {
                    this.c.m3484if(true);
                }
            }
            if (z) {
                if (this.mMenuView.m3342native()) {
                    this.mMenuView.m3332const();
                }
                if (this.b) {
                    j0();
                    ToastUtils.show((int) R.string.book_auto_read_is_exit_txt);
                }
                if (this.c != null) {
                    this.c.setVisibility(0);
                    return;
                }
                return;
            }
            if (this.c != null) {
                this.c.setVisibility(8);
            }
            if (r0.m2199catch().f3156extends) {
                r0.m2199catch().f3156extends = false;
                if (this.mViewPager != null) {
                    this.mViewPager.setCanScroll(true);
                }
                if (this.mRecyclerView != null) {
                    this.mRecyclerView.setScrollEnabled(true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void G() {
        StringBuilder m1016super = com.apk.Cgoto.m1016super("SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY");
        m1016super.append(L());
        String sb = m1016super.toString();
        if (ze.D(sb)) {
            zu.Cdo cdo = new zu.Cdo(this);
            Boolean bool = Boolean.FALSE;
            lv lvVar = cdo.f6267do;
            lvVar.f2926if = bool;
            lvVar.f2924for = bool;
            cdo.f6267do.f2941throw = new Cbreak();
            cdo.m3254else(ze.q(R.string.tips_tip_title_txt), ze.q(R.string.txt_download_smart_chapter_txt), new Cgoto(), new Cthis(sb), R.layout.dialog_logout_layout).show();
        }
    }

    public final void H() {
        boolean m417const = da.m417const();
        if (u0.m2663do().f4814for) {
            this.v = u0.m2663do().f4813do;
        } else if (m417const) {
            this.v = 0;
        } else {
            this.v = u0.m2663do().f4813do;
        }
        if (this.mReadLayout != null) {
            if (this.f6921catch != null) {
                if (da.m430public()) {
                    this.mReadLayout.setPadding(0, this.v, 0, 0);
                } else {
                    this.mReadLayout.setPadding(u0.m2663do().f4814for ? u0.m2663do().f4813do : 0, this.v, 0, 0);
                }
            } else {
                throw null;
            }
        }
        h2 h2Var = this.f6921catch;
        int i = this.v;
        h2Var.r = i;
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (m417const) {
            i = u0.m2663do().f4813do;
        }
        ViewGroup.LayoutParams layoutParams = newBookReadMenuView.mBarView.getLayoutParams();
        layoutParams.height = i;
        newBookReadMenuView.mBarView.setLayoutParams(layoutParams);
    }

    public final void I() {
        Handler handler;
        og ogVar = this.f6926extends;
        if (ogVar == null || !ogVar.isShowing() || (handler = A) == null) {
            return;
        }
        handler.postDelayed(this.f6928finally, 800L);
    }

    public final void J(long j) {
        Handler handler = A;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.apk.c9
                @Override // java.lang.Runnable
                public final void run() {
                    NewBookReadActivity.this.R();
                }
            }, j);
        }
    }

    public void K() {
        Handler handler;
        c0 c0Var;
        g0 g0Var = this.f6930import;
        if (g0Var != null && !g0Var.m900do() && g0Var.f1486for == 2 && (c0Var = g0Var.f1485do) != null) {
            c0Var.m298case();
            c0 c0Var2 = g0Var.f1485do;
            synchronized (c0Var2) {
                try {
                    c0Var2.f478for.f1164new.release();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        this.f6937public = false;
        this.k = false;
        r0.m2199catch().f3974abstract = false;
        this.mMenuView.m3337final();
        this.mMenuView.m3348strictfp();
        h2 h2Var = this.f6921catch;
        h2Var.y = false;
        h2Var.e = false;
        com.apk.Cimport cimport = h2Var.f1701throw;
        if (cimport != null) {
            cimport.f2180import = false;
        }
        h2Var.f1674class.setTtsVoice(false);
        AudioManager audioManager = this.o;
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this.q);
        }
        this.m = null;
        if (this.f6921catch.m1087transient()) {
            runOnUiThread(new Runnable() { // from class: com.apk.a9
                @Override // java.lang.Runnable
                public final void run() {
                    NewBookReadActivity.this.S();
                }
            });
            if (this.f6947transient != null && (handler = A) != null) {
                handler.postDelayed(new Runnable() { // from class: com.apk.v8
                    @Override // java.lang.Runnable
                    public final void run() {
                        NewBookReadActivity.this.T();
                    }
                }, 200L);
            }
        }
        try {
            if (this.n != null) {
                stopService(this.n);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        s0.m2367if().f4237new = false;
    }

    public final String L() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        Book book = this.f6922class;
        String id = book != null ? book.getId() : "";
        if (TextUtils.isEmpty(id) && (collectBook = this.f6923const) != null) {
            id = collectBook.getCollectId();
        }
        return (!TextUtils.isEmpty(id) || (webSiteBean = this.f6946throws) == null) ? id : webSiteBean.getNovelId();
    }

    public final String M() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        Book book = this.f6922class;
        String name = book != null ? book.getName() : "";
        if (TextUtils.isEmpty(name) && (collectBook = this.f6923const) != null) {
            name = collectBook.getName();
        }
        return (!TextUtils.isEmpty(name) || (webSiteBean = this.f6946throws) == null) ? name : webSiteBean.getTitle();
    }

    public final void N() {
        try {
            if (this.i != null) {
                if (this.f6947transient != null) {
                    this.f6947transient.setBgImage(this.i);
                }
            } else if (this.f6947transient != null) {
                this.f6947transient.setBgColor(this.g);
            }
            if (this.f6947transient != null) {
                this.f6921catch.s(this.f6921catch.m1083switch());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0034 A[Catch: OutOfMemoryError -> 0x00e2, Exception -> 0x00e7, TryCatch #2 {Exception -> 0x00e7, OutOfMemoryError -> 0x00e2, blocks: (B:3:0x0005, B:5:0x000d, B:11:0x0026, B:13:0x0034, B:14:0x003a, B:16:0x0048, B:21:0x00d1, B:23:0x00d8, B:27:0x00de, B:17:0x007a, B:19:0x0082, B:20:0x00a8, B:6:0x0015, B:8:0x001b), top: B:34:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048 A[Catch: OutOfMemoryError -> 0x00e2, Exception -> 0x00e7, TryCatch #2 {Exception -> 0x00e7, OutOfMemoryError -> 0x00e2, blocks: (B:3:0x0005, B:5:0x000d, B:11:0x0026, B:13:0x0034, B:14:0x003a, B:16:0x0048, B:21:0x00d1, B:23:0x00d8, B:27:0x00de, B:17:0x007a, B:19:0x0082, B:20:0x00a8, B:6:0x0015, B:8:0x001b), top: B:34:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007a A[Catch: OutOfMemoryError -> 0x00e2, Exception -> 0x00e7, TryCatch #2 {Exception -> 0x00e7, OutOfMemoryError -> 0x00e2, blocks: (B:3:0x0005, B:5:0x000d, B:11:0x0026, B:13:0x0034, B:14:0x003a, B:16:0x0048, B:21:0x00d1, B:23:0x00d8, B:27:0x00de, B:17:0x007a, B:19:0x0082, B:20:0x00a8, B:6:0x0015, B:8:0x001b), top: B:34:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d8 A[Catch: OutOfMemoryError -> 0x00e2, Exception -> 0x00e7, TryCatch #2 {Exception -> 0x00e7, OutOfMemoryError -> 0x00e2, blocks: (B:3:0x0005, B:5:0x000d, B:11:0x0026, B:13:0x0034, B:14:0x003a, B:16:0x0048, B:21:0x00d1, B:23:0x00d8, B:27:0x00de, B:17:0x007a, B:19:0x0082, B:20:0x00a8, B:6:0x0015, B:8:0x001b), top: B:34:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void O() {
        /*
            r6 = this;
            r0 = 0
            r6.h = r0
            r6.i = r0
            boolean r0 = com.apk.da.m427native()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L15
            com.biquge.ebook.app.bean.RedBgImageBean r0 = com.apk.g2.m911class()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.h = r0     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r0 = 1
            goto L25
        L15:
            boolean r0 = com.apk.da.m426import()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            if (r0 == 0) goto L24
            com.biquge.ebook.app.bean.RedBgImageBean r0 = com.apk.g2.m920goto()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.h = r0     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r0 = 0
            r3 = 1
            goto L26
        L24:
            r0 = 0
        L25:
            r3 = 0
        L26:
            com.biquge.ebook.app.ui.book.NewBookReadMenuView r4 = r6.mMenuView     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r4.setNightMode(r0)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.ui.book.NewBookReadMenuView r4 = r6.mMenuView     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r4.setEyeMode(r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.bean.RedBgImageBean r3 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            if (r3 != 0) goto L3a
            com.biquge.ebook.app.bean.RedBgImageBean r3 = com.apk.g2.m928super()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.h = r3     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
        L3a:
            com.biquge.ebook.app.bean.RedBgImageBean r3 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r3 = r3.getType()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r4 = "3"
            boolean r4 = r4.equals(r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            if (r4 == 0) goto L7a
            com.biquge.ebook.app.bean.RedBgImageBean r3 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r3 = r3.getBgImage()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.bean.RedBgImageBean r4 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r4 = r4.getfColor()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.g = r2     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.apk.ca r5 = com.apk.ca.m315do()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            int r4 = android.graphics.Color.parseColor(r4)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r5.m319try(r4)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.io.File r4 = new java.io.File     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.apk.a6 r5 = com.apk.a6.m18else()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r5 = r5.m25try()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r3 = com.apk.rt.m2362if(r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r4.<init>(r5, r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.i = r4     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.ui.book.view.ReadBookLayout r3 = r6.mReadLayout     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.apk.u.m2655static(r4, r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            goto Ld1
        L7a:
            java.lang.String r4 = "6"
            boolean r3 = r4.equals(r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            if (r3 == 0) goto La8
            com.biquge.ebook.app.bean.RedBgImageBean r3 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r3 = r3.getBgImage()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.bean.RedBgImageBean r4 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r4 = r4.getfColor()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.g = r2     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.apk.ca r5 = com.apk.ca.m315do()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            int r4 = android.graphics.Color.parseColor(r4)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r5.m319try(r4)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.io.File r4 = new java.io.File     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r4.<init>(r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.i = r4     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.ui.book.view.ReadBookLayout r3 = r6.mReadLayout     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.apk.u.m2655static(r4, r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            goto Ld1
        La8:
            com.biquge.ebook.app.bean.RedBgImageBean r3 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r3 = r3.getBgColor()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.bean.RedBgImageBean r4 = r6.h     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            java.lang.String r4 = r4.getfColor()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            int r3 = android.graphics.Color.parseColor(r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r6.g = r3     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.ui.book.view.ReadBookLayout r5 = r6.mReadLayout     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r5.setBackgroundColor(r3)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.manhua.ui.widget.PublicLoadingView r3 = r6.mLoadingView     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            int r5 = r6.g     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r3.setBgColor(r5)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.apk.ca r3 = com.apk.ca.m315do()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            int r4 = android.graphics.Color.parseColor(r4)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            r3.m319try(r4)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
        Ld1:
            r6.N()     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            com.biquge.ebook.app.ad.ads.AdViewBanner r3 = r6.mAdViewBanner     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            if (r3 == 0) goto Leb
            com.biquge.ebook.app.ad.ads.AdViewBanner r3 = r6.mAdViewBanner     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            if (r0 != 0) goto Ldd
            goto Lde
        Ldd:
            r1 = 0
        Lde:
            r3.setThemeDayNight(r1)     // Catch: java.lang.OutOfMemoryError -> Le2 java.lang.Exception -> Le7
            goto Leb
        Le2:
            r0 = move-exception
            r0.printStackTrace()
            goto Leb
        Le7:
            r0 = move-exception
            r0.printStackTrace()
        Leb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.book.NewBookReadActivity.O():void");
    }

    public final void P() {
        View decorView;
        if (this.w == null) {
            this.w = new jf(this);
        }
        boolean m417const = da.m417const();
        Window window = getWindow();
        if (m417const) {
            this.w.m1310do();
            window.setFlags(1024, 1024);
        } else {
            jf jfVar = this.w;
            if (jfVar != null) {
                try {
                    if (jfVar.f2314do != null && Build.VERSION.SDK_INT >= 28 && (decorView = jfVar.f2314do.getWindow().getDecorView()) != null) {
                        try {
                            try {
                                WindowManager.LayoutParams attributes = jfVar.f2314do.getWindow().getAttributes();
                                attributes.layoutInDisplayCutoutMode = 0;
                                jfVar.f2314do.getWindow().setAttributes(attributes);
                                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1028);
                            } catch (NoSuchFieldError e) {
                                e.printStackTrace();
                            } catch (NoSuchMethodError e2) {
                                e2.printStackTrace();
                            }
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                window.setFlags(2048, 1024);
                setWindowStatusBarColor(this, 17170444);
            } else {
                throw null;
            }
        }
        if (da.m436throw()) {
            u0.m2664for(this, false, false, m417const);
        }
    }

    public /* synthetic */ void Q(String str) {
        m3314goto();
        l0(str);
    }

    public /* synthetic */ void R() {
        finish();
    }

    public /* synthetic */ void S() {
        h2 h2Var = this.f6921catch;
        h2Var.s(h2Var.m1083switch());
        PageView pageView = this.f6947transient;
        if (pageView != null) {
            pageView.setVisibility(4);
        }
    }

    public /* synthetic */ void T() {
        PageView pageView = this.f6947transient;
        if (pageView != null) {
            pageView.setVisibility(0);
        }
    }

    public /* synthetic */ void U() {
        h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            h2Var.K();
        }
    }

    public /* synthetic */ void V(boolean z) {
        if (!z && this.f6941super) {
            this.f6941super = false;
            ze.V();
        }
        if (z) {
            this.mLoadingView.m3667if();
        } else {
            this.mLoadingView.m3666for();
        }
    }

    public void W(boolean z) {
        if (z) {
            tt.f4763do.putBoolean("SP_SHOW_CHAPTER_CHANGE_SOURCE_POPUP_KEY", false);
            lv lvVar = new lv();
            lvVar.f2940this = ov.NoAnimation;
            lvVar.f2941throw = new l9(this);
            WebChangeSourcePopupView webChangeSourcePopupView = new WebChangeSourcePopupView(this, this.f6946throws != null);
            if (webChangeSourcePopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webChangeSourcePopupView instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webChangeSourcePopupView instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webChangeSourcePopupView instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else {
                lvVar.f2917continue = zu.f6266try;
            }
            webChangeSourcePopupView.popupInfo = lvVar;
            webChangeSourcePopupView.show();
            return;
        }
        g0();
    }

    public /* synthetic */ void Y() {
        Handler handler = A;
        if (handler != null) {
            handler.post(this.s);
        }
    }

    @Override // com.apk.l2
    public void b(int i) {
        this.f11272a.setScrollSpeed(i);
    }

    @Override // com.apk.l2
    /* renamed from: break */
    public void mo1584break() {
        if (r0.m2199catch().f3156extends) {
            F(true, false);
            return;
        }
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (newBookReadMenuView != null && newBookReadMenuView.m3342native()) {
            this.mMenuView.m3332const();
        } else if (this.f6921catch.m1066default() == 1) {
        } else {
            if (da.m416class()) {
                mo1606this();
            } else {
                this.f6921catch.u();
            }
        }
    }

    @Override // com.apk.l2
    public void c() {
        try {
            if (this.f6947transient == null) {
                PageView pageView = (PageView) ((ViewStub) findViewById(R.id.read_pv_page)).inflate();
                this.f6947transient = pageView;
                if (pageView.f7178try == null) {
                    pageView.f7178try = new aa(pageView.f7169do, pageView.f7174if, pageView, pageView.f7165case);
                }
                this.f6921catch.o = this.f6947transient;
                this.f6947transient.setBookReadPresenter(this.f6921catch);
                N();
                this.f6947transient.setTouchListener(new Cif());
                this.f6947transient.setOnDrawMoveListener(new Cfor());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.l2
    /* renamed from: case */
    public void mo1585case(boolean z) {
        if (this.d == null) {
            View inflate = ((ViewStub) findViewById(R.id.read_chapter_video_ad_view)).inflate();
            this.d = inflate;
            inflate.setBackgroundColor(this.g);
            this.e = (TextView) this.d.findViewById(R.id.item_read_ad_continue_view);
            try {
                LinearLayout linearLayout = (LinearLayout) this.d.findViewById(R.id.item_read_ad_layout);
                String q = ze.q(R.string.read_reward_video_desc_txt);
                TextView textView = new TextView(this);
                textView.setTextSize(2, 17.0f);
                textView.setTextColor(ca.m315do().f542do.getColor());
                textView.setText(q);
                linearLayout.removeAllViews();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                int m587catch = eg.m587catch(15.0f);
                layoutParams.leftMargin = m587catch;
                layoutParams.rightMargin = m587catch;
                linearLayout.addView(textView, layoutParams);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        View view = this.d;
        if (view != null) {
            if (z) {
                view.setVisibility(0);
                this.f6921catch.m1060break(this.e);
                return;
            }
            view.setVisibility(8);
        }
    }

    @Override // com.apk.l2
    /* renamed from: catch */
    public void mo1586catch() {
        if (this.f6946throws != null) {
            h2 h2Var = this.f6921catch;
            String str = h2Var != null ? h2Var.f1672case : "";
            WebSiteBean webSiteBean = this.f6946throws;
            WebBookReadDirPopView webBookReadDirPopView = this.u;
            if (webBookReadDirPopView == null) {
                this.u = new WebBookReadDirPopView(this, webSiteBean, str, new j9(this));
            } else {
                WebBookDirLayout webBookDirLayout = webBookReadDirPopView.f7901this;
                if (webBookDirLayout != null) {
                    webBookDirLayout.m3435new(str);
                    webBookReadDirPopView.f7901this.m3433for(0);
                }
            }
            lv lvVar = new lv();
            WebBookReadDirPopView webBookReadDirPopView2 = this.u;
            if (webBookReadDirPopView2 instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookReadDirPopView2 instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookReadDirPopView2 instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookReadDirPopView2 instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webBookReadDirPopView2 instanceof PositionPopupView) {
                lvVar.f2917continue = zu.f6266try;
            }
            webBookReadDirPopView2.popupInfo = lvVar;
            webBookReadDirPopView2.show();
            return;
        }
        String L = L();
        h2 h2Var2 = this.f6921catch;
        f0(L, h2Var2 != null ? h2Var2.f1672case : "", false);
    }

    @Override // com.apk.l2
    /* renamed from: class */
    public void mo1587class() {
        ChapterBean m1073import;
        h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            try {
                if (h2Var.m1072implements()) {
                    h2Var.z();
                }
                if (h2Var.g || (m1073import = h2Var.m1073import(h2Var.f1672case)) == null) {
                    return;
                }
                String pid = m1073import.getPid();
                if (h2Var.m1071goto(pid)) {
                    h2Var.f1672case = pid;
                    h2Var.f1683goto = 0;
                    h2Var.w();
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.l2
    /* renamed from: const */
    public void mo1588const(final String str) {
        runOnUiThread(new Runnable() { // from class: com.apk.b9
            @Override // java.lang.Runnable
            public final void run() {
                NewBookReadActivity.X(str);
            }
        });
    }

    @Override // com.apk.l2
    public void d() {
        if (this.f6947transient != null) {
            if (this.f6921catch.m1087transient()) {
                this.f6947transient.setVisibility(0);
            } else {
                this.f6947transient.setVisibility(8);
            }
        }
    }

    public final void d0() {
        if (this.o == null) {
            this.o = (AudioManager) getSystemService("audio");
        }
        this.o.requestAudioFocus(this.q, 3, 1);
    }

    @Override // com.apk.l2
    /* renamed from: default */
    public void mo1589default(int i) {
        c0 c0Var;
        if (TextUtils.isEmpty(this.f6933native)) {
            return;
        }
        if (this.k) {
            e0(false);
        }
        g0 g0Var = this.f6930import;
        if (g0Var != null) {
            if (g0Var.m900do()) {
                yb0 yb0Var = g0Var.f1487if;
            } else if (g0Var.f1486for == 2 && (c0Var = g0Var.f1485do) != null) {
                c0Var.m298case();
                c0 c0Var2 = g0Var.f1485do;
                synchronized (c0Var2) {
                    try {
                        c0Var2.f478for.f1164new.setParam(SpeechSynthesizer.PARAM_SPEED, String.valueOf(i));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        E(this.f6933native, null);
    }

    @Override // com.apk.f6, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.b) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.r);
            removeCallbacks(this.s);
        } else if (motionEvent.getAction() == 1) {
            h0();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.apk.l2
    /* renamed from: do */
    public void mo1590do(final boolean z, boolean z2) {
        runOnUiThread(new Runnable() { // from class: com.apk.w8
            @Override // java.lang.Runnable
            public final void run() {
                NewBookReadActivity.this.V(z);
            }
        });
    }

    @Override // com.apk.l2
    public void e() {
        if (this.f6937public) {
            BookChapter m1078public = this.f6921catch.m1078public();
            E(this.f6921catch.m1069final(m1078public), m1078public);
        }
    }

    public final void e0(boolean z) {
        try {
            if (this.f6930import == null || this.mMenuView == null) {
                return;
            }
            if (this.k) {
                if (z) {
                    this.f6930import.m901for();
                }
                this.mMenuView.setPauseOrResumeVoice(false);
            } else {
                if (z) {
                    this.f6930import.m902if();
                }
                this.mMenuView.setPauseOrResumeVoice(true);
            }
            this.k = this.k ? false : true;
            i0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.l2
    /* renamed from: else */
    public void mo1591else(boolean z) {
        try {
            if (this.mNightView != null) {
                if (z) {
                    if (this.mNightView.getVisibility() != 0) {
                        this.mNightView.setVisibility(0);
                    }
                } else if (this.mNightView.getVisibility() != 8) {
                    this.mNightView.setVisibility(8);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.l2
    /* renamed from: extends */
    public void mo1592extends() {
        this.f6921catch.w();
        if (this.f6921catch.m1087transient()) {
            h2 h2Var = this.f6921catch;
            h2Var.s(h2Var.m1083switch());
        }
    }

    @Override // com.apk.m1
    public void f(int i, int i2) {
        l30 l30Var = this.f6944this;
        if (l30Var != null) {
            l30Var.f2741for = i;
            l30Var.f2743new = i2;
        }
        h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            if (h2Var.f1671break != null) {
                try {
                    int m793case = (i2 - this.v) - (this.f6949while ? Cfinally.m793case() : 0);
                    if (this.f6921catch != null) {
                        if (!da.m430public() && u0.m2663do().f4814for) {
                            i -= u0.m2663do().f4813do;
                        }
                        this.f6921catch.J(i, m793case);
                        this.f6921catch.m1062catch();
                        this.f6921catch.w();
                        this.f6921catch.I();
                        if (this.f6947transient != null) {
                            this.f6947transient.m3358for();
                        }
                        O();
                        if (this.f11272a != null) {
                            this.f11272a.m3489new();
                            return;
                        }
                        return;
                    }
                    throw null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public final void f0(String str, String str2, boolean z) {
        NovelDirChapterPopup novelDirChapterPopup = this.t;
        if (novelDirChapterPopup == null) {
            this.t = new NovelDirChapterPopup(this, M(), str, str2, new Cthrow(), da.m427native());
        } else {
            h2 h2Var = this.f6921catch;
            String str3 = h2Var != null ? h2Var.f1672case : "";
            boolean m427native = da.m427native();
            if (!str3.equals(novelDirChapterPopup.f7735native)) {
                novelDirChapterPopup.f7735native = str3;
            }
            if (novelDirChapterPopup.f7739return != m427native) {
                novelDirChapterPopup.f7739return = m427native;
            }
            novelDirChapterPopup.m3411catch();
            novelDirChapterPopup.m3414final();
            k kVar = novelDirChapterPopup.f7740static;
            if (kVar != null) {
                kVar.m1402new(str3, novelDirChapterPopup.f7739return);
            }
            novelDirChapterPopup.m3416throw(true);
            novelDirChapterPopup.m3412class(false);
        }
        lv lvVar = new lv();
        lvVar.f2941throw = new Cwhile(z);
        NovelDirChapterPopup novelDirChapterPopup2 = this.t;
        if (novelDirChapterPopup2 instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelDirChapterPopup2 instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelDirChapterPopup2 instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelDirChapterPopup2 instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelDirChapterPopup2 instanceof PositionPopupView) {
            lvVar.f2917continue = zu.f6266try;
        }
        novelDirChapterPopup2.popupInfo = lvVar;
        novelDirChapterPopup2.show();
    }

    @Override // com.apk.l2
    /* renamed from: final */
    public void mo1593final() {
        h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            try {
                if (h2Var.m1072implements()) {
                    h2Var.z();
                }
                if (h2Var.g) {
                    return;
                }
                if (h2Var.m1065continue(false)) {
                    ((l2) h2Var.f3970do).mo1597import();
                }
                ChapterBean m1073import = h2Var.m1073import(h2Var.f1672case);
                if (m1073import != null) {
                    String nid = m1073import.getNid();
                    if (h2Var.m1071goto(nid)) {
                        h2Var.f1672case = nid;
                        h2Var.f1683goto = 0;
                        h2Var.w();
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.l2
    /* renamed from: finally */
    public void mo1594finally() {
        Handler handler = A;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.apk.d9
                @Override // java.lang.Runnable
                public final void run() {
                    NewBookReadActivity.this.U();
                }
            }, 500L);
        }
    }

    public final void g0() {
        tt.f4763do.putBoolean("SP_SHOW_CHAPTER_RELOAD_POPUP_KEY", false);
        lv lvVar = new lv();
        lvVar.f2940this = ov.NoAnimation;
        WebReloadPopupView webReloadPopupView = new WebReloadPopupView(this, this.f6946throws != null);
        if (webReloadPopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (webReloadPopupView instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (webReloadPopupView instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (webReloadPopupView instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        webReloadPopupView.popupInfo = lvVar;
        webReloadPopupView.show();
    }

    @Override // com.apk.b7, com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_book_read_new;
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m3314goto() {
        mo1590do(true, false);
    }

    public final void h0() {
        try {
            removeCallbacks(this.r);
            removeCallbacks(this.s);
            long j = 0;
            int m424goto = da.m424goto();
            if (m424goto == 0) {
                if (A != null) {
                    A.post(this.s);
                    return;
                }
                return;
            }
            if (m424goto == 1) {
                j = 900000;
            } else if (m424goto == 2) {
                j = 1800000;
            } else if (m424goto == 3) {
                j = 3600000;
            } else if (m424goto == 4) {
                if (A != null) {
                    A.post(this.r);
                    return;
                }
                return;
            }
            if (A != null) {
                A.post(this.r);
            }
            if (A != null) {
                A.postDelayed(new Runnable() { // from class: com.apk.y8
                    @Override // java.lang.Runnable
                    public final void run() {
                        NewBookReadActivity.this.Y();
                    }
                }, j);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void i0() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        try {
            Intent intent = new Intent(this, BaiDuVoiceService.class);
            this.n = intent;
            StringBuilder sb = new StringBuilder();
            sb.append(M());
            sb.append(" -- ");
            Book book = this.f6922class;
            String author = book != null ? book.getAuthor() : "";
            if (TextUtils.isEmpty(author) && (collectBook = this.f6923const) != null) {
                author = collectBook.getAuthor();
            }
            if (TextUtils.isEmpty(author) && (webSiteBean = this.f6946throws) != null) {
                author = webSiteBean.getAuthor();
            }
            sb.append(author);
            intent.putExtra("bookName", sb.toString());
            this.n.putExtra("isPauseReadAloud", this.k);
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(this.n);
            } else {
                startService(this.n);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.l2
    /* renamed from: if */
    public void mo1595if(boolean z) {
        F(z, false);
    }

    @Override // com.apk.l2
    /* renamed from: implements */
    public void mo1596implements() {
        RewardVideoAdView rewardVideoAdView = this.c;
        if (rewardVideoAdView == null || rewardVideoAdView.getVisibility() != 0) {
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.f6921catch.m1065continue(true)) {
                ToastUtils.show((int) R.string.book_auto_read_stop_last_page_txt);
                return;
            }
            BookChapter m1078public = this.f6921catch.m1078public();
            if (!(m1078public != null ? h2.m1055package(m1078public) : false)) {
                String m1069final = this.f6921catch.m1069final(this.f6921catch.m1078public());
                if (TextUtils.isEmpty(m1069final) || "LOAD_FAILED".equals(m1069final)) {
                    ToastUtils.show((int) R.string.book_auto_read_failed_stop_txt);
                    return;
                }
            }
            if (this.f11272a == null) {
                ScrollPaintView scrollPaintView = (ScrollPaintView) ((ViewStub) findViewById(R.id.roll_scroll_view)).inflate();
                this.f11272a = scrollPaintView;
                scrollPaintView.setScrollPaintCompleteListener(this.f);
            }
            if (this.f6943synchronized == -1) {
                this.f6943synchronized = this.f6921catch.m1066default();
            }
            int m1064const = this.f6921catch.m1064const();
            if (m1064const == 0) {
                D();
            } else if (m1064const == 1) {
                this.f6921catch.w = true;
                mo1605super(0, true, true, true);
            } else {
                this.f6921catch.w = true;
                mo1605super(1, true, true, true);
            }
        }
    }

    @Override // com.apk.l2
    /* renamed from: import */
    public void mo1597import() {
        Intent intent = new Intent(this, BookReadEndActivity.class);
        intent.putExtra("isNight", da.m427native());
        intent.putExtra("isEye", da.m426import());
        startActivity(intent);
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        h2 h2Var = new h2(this, A, this);
        this.f6921catch = h2Var;
        View.OnTouchListener onTouchListener = this.f6929implements;
        h2Var.m = onTouchListener;
        BookRecyclerViewAdapter bookRecyclerViewAdapter = h2Var.f1675const;
        if (bookRecyclerViewAdapter != null) {
            bookRecyclerViewAdapter.f7158goto = onTouchListener;
        }
        v9 v9Var = h2Var.f1673catch;
        if (v9Var != null) {
            v9Var.f5051while = h2Var.m;
        }
        if (this.f6921catch != null) {
            if (!da.m430public()) {
                setRequestedOrientation(0);
            }
            P();
            return;
        }
        throw null;
    }

    @Override // com.apk.b7, com.apk.f6
    public void initData() {
        super.initData();
        Intent intent = getIntent();
        this.f6922class = (Book) intent.getSerializableExtra("book");
        this.f6923const = (CollectBook) intent.getSerializableExtra("collectBook");
        this.f6927final = intent.getStringExtra("chapterId");
        this.f6946throws = (WebSiteBean) intent.getSerializableExtra("EXTRA_WEB_BEAN_KEY");
        new b1().m141do(new k9(this));
        k0(this.f6921catch.m1066default());
        try {
            if (w0.m2888public(L())) {
                ((TextView) ((ViewStub) findViewById(R.id.copyright_tips_layout)).inflate().findViewById(R.id.view_copyright_title_tv)).setText("《" + M() + "》");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        O();
        Cfinally m797else = Cfinally.m797else();
        if ((m797else.f1362protected == null || !m797else.m808final() || Cfinally.m796do(m797else.f1362protected, "bannerbottom") == null) ? false : true) {
            try {
                this.f6949while = true;
                this.mAdViewBanner.setThemeDayNight(!da.m427native());
                this.mAdViewBanner.m3271for(this, "bannerbottom");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.f6920break == null) {
            this.f6920break = new BatteryReceiver(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            registerReceiver(this.f6920break, intentFilter);
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.f6942switch = currentTimeMillis;
        mf.m1712do("SP_READ_CLOSE_REPEAT_BOOK", Long.valueOf(currentTimeMillis));
    }

    @Override // com.apk.f6
    public void initView() {
        super.initView();
        registerEventBus(this);
        this.mReadLayout.setOnSizeChangedListener(this);
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        newBookReadMenuView.f7029try = this;
        newBookReadMenuView.f7009final = AnimationUtils.loadAnimation(this, R.anim.book_menu_top_in);
        newBookReadMenuView.f7024super = AnimationUtils.loadAnimation(newBookReadMenuView.f7029try, R.anim.book_menu_top_out);
        newBookReadMenuView.f7027throw = AnimationUtils.loadAnimation(newBookReadMenuView.f7029try, R.anim.book_menu_bottom_in);
        newBookReadMenuView.f7031while = AnimationUtils.loadAnimation(newBookReadMenuView.f7029try, R.anim.book_menu_bottom_out);
        newBookReadMenuView.f7014import = AnimationUtils.loadAnimation(newBookReadMenuView.f7029try, R.anim.book_menu_bottom_in);
        newBookReadMenuView.f7016native = AnimationUtils.loadAnimation(newBookReadMenuView.f7029try, R.anim.book_menu_bottom_out);
        newBookReadMenuView.f7009final.setAnimationListener(newBookReadMenuView.f7021return);
        newBookReadMenuView.f7027throw.setAnimationListener(newBookReadMenuView.f7022static);
        newBookReadMenuView.f7024super.setAnimationListener(newBookReadMenuView.f7025switch);
        newBookReadMenuView.f7031while.setAnimationListener(newBookReadMenuView.f7028throws);
        String m2620do = tt.m2620do("SP_READ_SOURCE_TIPS_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            m2620do = ze.q(R.string.book_read_source_tips_txt);
        }
        ((TextView) newBookReadMenuView.findViewById(R.id.read_source_tips_tv)).setText(Html.fromHtml(m2620do));
        NewBookReadMenuView newBookReadMenuView2 = this.mMenuView;
        newBookReadMenuView2.f7007else = this.f6921catch;
        newBookReadMenuView2.f7000case = this;
        this.mViewPager.addOnPageChangeListener(this.f6936protected);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new ReadLinearLayoutManager(this));
        this.mRecyclerView.f10219for = new Cswitch();
        this.f6944this = new l30(this, this.f6921catch.n);
        this.mViewPager.setOnTouchListener(this.f6929implements);
        this.mRecyclerView.setOnTouchListener(this.f6929implements);
        this.mMenuView.setCallBackListener(this.f6931instanceof);
        H();
    }

    @Override // com.apk.f1
    /* renamed from: interface */
    public void mo746interface() {
        h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            if (h2Var != null) {
                try {
                    if (h2Var.f1671break != null && h2Var.f1673catch != null) {
                        ComicReaderViewpager comicReaderViewpager = h2Var.f1671break;
                        BookPageTextView bookPageTextView = (BookPageTextView) comicReaderViewpager.findViewWithTag(n2.m1842throws(h2Var.m1078public()) + "BookPageTextView");
                        if (bookPageTextView != null) {
                            bookPageTextView.postInvalidate();
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                BookPageTextView bookPageTextView2 = h2Var.f1697super;
                if (bookPageTextView2 != null) {
                    bookPageTextView2.postInvalidate();
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public final void j0() {
        boolean z = false;
        try {
            this.b = false;
            this.f6921catch.D(false);
            this.mMenuView.m3331class();
            this.f11272a.setVisibility(8);
            this.f11272a.m3487case();
            this.f11272a.m3488for();
            this.mMenuView.m3347static(false);
            if (this.f6943synchronized != -1) {
                this.f6921catch.x = true;
                mo1605super(this.f6943synchronized, true, true, true);
                z = true;
            }
            if (this.f6921catch.m1087transient()) {
                this.f6921catch.s(this.f6921catch.m1083switch());
            }
            if (!z) {
                d();
            }
            this.f6943synchronized = -1;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void k0(int i) {
        try {
            if (i == 1) {
                if (this.mRecyclerLayout != null) {
                    this.mRecyclerLayout.setVisibility(0);
                }
                if (this.mViewPager != null) {
                    this.mViewPager.setVisibility(8);
                }
                if (this.f6947transient != null) {
                    this.f6947transient.setVisibility(8);
                }
            } else {
                if (this.mViewPager != null) {
                    this.mViewPager.setVisibility(0);
                }
                if (this.mRecyclerLayout != null) {
                    this.mRecyclerLayout.setVisibility(8);
                }
                if (this.f6921catch.m1066default() == 2) {
                    if (this.f6947transient != null) {
                        this.f6947transient.setVisibility(0);
                    }
                } else if (this.f6947transient != null) {
                    this.f6947transient.setVisibility(8);
                }
            }
            if (this.mMenuView != null) {
                this.mMenuView.setPageType(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void l0(String str) {
        c0 c0Var;
        List<String> list = this.f6939static;
        if (list != null && list.size() > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f6933native);
            List<String> list2 = this.f6939static;
            sb.append(list2.get(list2.size() - 1));
            this.f6933native = sb.toString();
        }
        g0 g0Var = this.f6930import;
        if (g0Var != null) {
            if (g0Var.m900do()) {
                yb0 yb0Var = g0Var.f1487if;
            } else if (g0Var.f1486for == 2 && (c0Var = g0Var.f1485do) != null) {
                c0Var.m298case();
                c0 c0Var2 = g0Var.f1485do;
                synchronized (c0Var2) {
                    try {
                        c0Var2.f478for.m692do(str);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        E(this.f6933native, null);
    }

    @Override // com.apk.b7
    public String m() {
        return "SOURCE_NOVEL_VALUE";
    }

    @Override // com.apk.l2
    /* renamed from: native */
    public void mo1598native(int i) {
        TextView textView;
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (newBookReadMenuView == null || (textView = newBookReadMenuView.mBarrageSwitchView) == null) {
            return;
        }
        textView.setText(ze.r(R.string.comic_barrage_count_txt, Integer.valueOf(i)));
    }

    @Override // com.apk.l2
    /* renamed from: new */
    public void mo1599new(boolean z) {
        F(z, true);
    }

    @Override // com.apk.b7
    public void o(boolean z, boolean z2) {
        mo1604return(z, z2);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        RedBgImageDialog redBgImageDialog;
        super.onActivityResult(i, i2, intent);
        if (i == 10213) {
            if (i2 == -1) {
                try {
                    F(false, false);
                    eg.h(this, r0.m2199catch().m2202class(), null);
                    r0.m2199catch().m2206throw(this.f6921catch.f1672case, false);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            F(true, false);
        } else if (i == 10215) {
            try {
                if (i2 == -1) {
                    F(false, false);
                    eg.h(this, r0.m2199catch().m2202class(), null);
                    r0.m2199catch().m2206throw(this.f6921catch.f1672case, true);
                } else {
                    F(true, false);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (i != 1023 || i2 != -1) {
            if (i == 648 && this.f6937public) {
                l0(da.m423for());
            }
        } else if (intent != null) {
            try {
                Uri data = intent.getData();
                if (data != null) {
                    String m601import = eg.m601import(this, data);
                    if (this.mMenuView == null || TextUtils.isEmpty(m601import) || (redBgImageDialog = this.mMenuView.f7010finally) == null) {
                        return;
                    }
                    redBgImageDialog.setCotomImage(m601import);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        mo1604return(false, true);
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            if (this.f6925default) {
                H();
                this.f6921catch.k = true;
                this.mMenuView.m3352throw();
                NewBookReadMenuView newBookReadMenuView = this.mMenuView;
                if (this.f6921catch != null) {
                    newBookReadMenuView.setBarrageSendViewVisible(da.m430public());
                } else {
                    throw null;
                }
            }
            this.f6925default = false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.b7, com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.z = true;
            I();
            unRegisterEventBus(this);
            this.mViewPager.removeOnPageChangeListener(this.f6936protected);
            if (this.f6920break != null) {
                unregisterReceiver(this.f6920break);
            }
            if (this.mMenuView != null) {
                this.mMenuView.m3334default();
            }
            if (this.f6921catch != null) {
                this.f6921catch.q();
            }
            if (this.mAdViewBanner != null) {
                this.mAdViewBanner.m3272new();
            }
            if (A != null) {
                A.removeCallbacksAndMessages(null);
            }
            da m419else = da.m419else();
            HashMap<String, ChapterBean> hashMap = m419else.f840do;
            if (hashMap != null) {
                hashMap.clear();
                m419else.f840do = null;
            }
            HashMap<String, ComicChapterBean> hashMap2 = m419else.f841for;
            if (hashMap2 != null) {
                hashMap2.clear();
                m419else.f841for = null;
            }
            BarrageDataUtils.getInstance().onDestroy();
            r0 m2199catch = r0.m2199catch();
            m2199catch.f3975continue = false;
            m2199catch.f3148break = false;
            Timer timer = m2199catch.f3153default;
            if (timer != null) {
                timer.cancel();
            }
            r0.f3973strictfp = null;
            p0.m2011super("CACHE_NOVEL_AD_KEY", Integer.valueOf(m2199catch.f3165return));
            d.Cdo.f803do.m403try();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0173, code lost:
        if (com.apk.h2.m1056private(r0) != false) goto L96;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onEventMainThread(com.apk.mf r5) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.book.NewBookReadActivity.onEventMainThread(com.apk.mf):void");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!this.b && !this.f6937public && i == 25) {
            if (r0.m2199catch().f3156extends) {
                return false;
            }
            RewardVideoAdView rewardVideoAdView = this.c;
            if (rewardVideoAdView == null || rewardVideoAdView.getVisibility() != 0) {
                PublicLoadingView publicLoadingView = this.mLoadingView;
                if (publicLoadingView == null || publicLoadingView.getVisibility() != 0) {
                    com.apk.Cimport cimport = this.f6921catch.f1701throw;
                    if (!((cimport == null || cimport.f2181native == null) ? false : true) && keyEvent.getRepeatCount() == 0) {
                        if (!da.m431return()) {
                            return false;
                        }
                        if (this.f6921catch.m1087transient()) {
                            this.f6921catch.L();
                        } else {
                            this.f6921catch.p(false);
                        }
                        if (this.mMenuView.m3342native()) {
                            this.mMenuView.m3332const();
                        }
                    }
                    return true;
                }
                return true;
            }
            return false;
        } else if (!this.b && !this.f6937public && i == 24) {
            if (r0.m2199catch().f3156extends) {
                return false;
            }
            RewardVideoAdView rewardVideoAdView2 = this.c;
            if (rewardVideoAdView2 == null || rewardVideoAdView2.getVisibility() != 0) {
                PublicLoadingView publicLoadingView2 = this.mLoadingView;
                if (publicLoadingView2 == null || publicLoadingView2.getVisibility() != 0) {
                    com.apk.Cimport cimport2 = this.f6921catch.f1701throw;
                    if (!((cimport2 == null || cimport2.f2181native == null) ? false : true) && keyEvent.getRepeatCount() == 0) {
                        if (!da.m431return()) {
                            return false;
                        }
                        if (this.f6921catch.m1087transient()) {
                            this.f6921catch.M();
                        } else {
                            this.f6921catch.u();
                        }
                        if (this.mMenuView.m3342native()) {
                            this.mMenuView.m3332const();
                        }
                    }
                    return true;
                }
                return true;
            }
            return false;
        } else {
            return super.onKeyDown(i, keyEvent);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 25 || i == 24) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        final h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            com.apk.Cimport cimport = h2Var.f1701throw;
            if (h2Var.m1077protected()) {
                BarrageDataUtils.getInstance().setScrollState(false);
                h2Var.N(4);
            }
            r0 m2199catch = r0.m2199catch();
            if (!m2199catch.f3169this) {
                m2199catch.f3975continue = false;
            }
            if (!h2Var.f1695static) {
                o m1921for = o.m1921for();
                Runnable runnable = new Runnable() { // from class: com.apk.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.this.c();
                    }
                };
                ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.execute(runnable);
                }
            }
            if (!h2Var.m1072implements() || h2Var.f1702throws == 0) {
                return;
            }
            String m1082super = h2Var.m1082super();
            int i = h2Var.f1702throws;
            o m1921for2 = o.m1921for();
            f2 f2Var = new f2(m1082super, i);
            ThreadPoolExecutor threadPoolExecutor2 = m1921for2.f3327do;
            if (threadPoolExecutor2 != null) {
                threadPoolExecutor2.execute(f2Var);
            }
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            com.apk.Cimport cimport = h2Var.f1701throw;
            if (h2Var.m1077protected()) {
                BarrageDataUtils.getInstance().setScrollState(true);
                h2Var.N(5);
            }
            r0.m2199catch().f3975continue = true;
        }
    }

    @Override // com.apk.b7, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        boolean z;
        g0 g0Var;
        super.onStart();
        AdViewBanner adViewBanner = this.mAdViewBanner;
        boolean z2 = false;
        if (adViewBanner != null) {
            adViewBanner.f6314this = false;
        }
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (newBookReadMenuView != null) {
            hg hgVar = newBookReadMenuView.f7001catch;
            if (hgVar != null) {
                hgVar.m1115new();
            }
            hg hgVar2 = this.mMenuView.f7001catch;
            if (hgVar2 != null) {
                hgVar2.m1116try();
            }
        }
        if (this.b) {
            ScrollPaintView scrollPaintView = this.f11272a;
            if (scrollPaintView != null) {
                ObjectAnimator objectAnimator = scrollPaintView.f8136static;
                if (objectAnimator != null && objectAnimator.isRunning()) {
                    z2 = true;
                }
                if (!z2) {
                    this.f11272a.m3490try();
                    this.mMenuView.m3331class();
                }
            }
            NewBookReadMenuView newBookReadMenuView2 = this.mMenuView;
            if (newBookReadMenuView2 != null) {
                newBookReadMenuView2.m3347static(true);
            }
        }
        if (!this.b) {
            h0();
        }
        boolean z3 = this.f6937public;
        if (!z3 || (z = this.p)) {
            return;
        }
        if (z3 && !z && (g0Var = this.f6930import) != null) {
            g0Var.m901for();
        }
        this.p = true;
        d0();
    }

    @Override // com.apk.b7, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        AdViewBanner adViewBanner = this.mAdViewBanner;
        if (adViewBanner != null) {
            adViewBanner.f6314this = true;
        }
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (newBookReadMenuView != null) {
            hg hgVar = newBookReadMenuView.f7001catch;
            if (hgVar != null) {
                hgVar.m1113goto();
            }
            hg hgVar2 = this.mMenuView.f7001catch;
            if (hgVar2 != null) {
                hgVar2.m1112for();
            }
        }
        if (this.b) {
            ScrollPaintView scrollPaintView = this.f11272a;
            if (scrollPaintView != null) {
                scrollPaintView.m3487case();
            }
            NewBookReadMenuView newBookReadMenuView2 = this.mMenuView;
            if (newBookReadMenuView2 != null) {
                newBookReadMenuView2.m3347static(false);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        iu iuVar;
        super.onWindowFocusChanged(z);
        if (z) {
            if (this.x != z) {
                if (!this.mMenuView.m3342native()) {
                    P();
                }
                if (this.f6946throws != null && (iuVar = this.mImmersionBar) != null) {
                    setImmersionBar(iuVar.f2235class.f756catch);
                }
            }
            if (!this.y) {
                this.y = true;
                if (!ze.m3179private("SP_BOOK_READ_FIRST_GUIDE_KEY", false)) {
                    tt.f4763do.putBoolean("SP_BOOK_READ_FIRST_GUIDE_KEY", true);
                    lv lvVar = new lv();
                    lvVar.f2940this = ov.NoAnimation;
                    lvVar.f2923finally = true;
                    BookReadGuidePopupView bookReadGuidePopupView = new BookReadGuidePopupView(this);
                    if (bookReadGuidePopupView instanceof CenterPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (bookReadGuidePopupView instanceof BottomPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (bookReadGuidePopupView instanceof AttachPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (bookReadGuidePopupView instanceof ImageViewerPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else {
                        lvVar.f2917continue = zu.f6266try;
                    }
                    bookReadGuidePopupView.popupInfo = lvVar;
                    bookReadGuidePopupView.show();
                }
                x4.m2957import(w.m2839catch(), 604800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new y3(new v3(this, null), "SP_HOST_SHUC_XS_KEY"));
                k(L(), true);
                G();
            }
        }
        this.x = z;
    }

    @Override // com.apk.l2
    /* renamed from: package */
    public void mo1600package() {
        D();
        this.f6921catch.w = false;
    }

    @Override // com.apk.l2
    /* renamed from: private */
    public void mo1601private(final boolean z) {
        if (this.mMenuView.m3342native()) {
            return;
        }
        this.mMenuView.m3344private();
        postDelayed(new Runnable() { // from class: com.apk.x8
            @Override // java.lang.Runnable
            public final void run() {
                NewBookReadActivity.this.W(z);
            }
        }, 200L);
    }

    @Override // com.apk.l2
    /* renamed from: protected */
    public void mo1602protected(boolean z) {
        this.f6925default = true;
        if (z) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(0);
        }
    }

    @Override // com.apk.l2
    /* renamed from: public */
    public void mo1603public(String str, String str2) {
        if (this.f6926extends == null) {
            this.f6926extends = new og(this);
        }
        if (!this.f6926extends.isShowing()) {
            og ogVar = this.f6926extends;
            ogVar.showAtLocation(this.mMenuView, 80, 0, ogVar.f3413for);
        }
        og ogVar2 = this.f6926extends;
        ogVar2.f3412do.setText(str);
        ogVar2.f3414if.setText(str2);
    }

    @Override // com.apk.l2
    /* renamed from: return */
    public void mo1604return(boolean z, boolean z2) {
        MhtgTwoBean mhtgTwoBean;
        if (w0.m2888public(L())) {
            J(0L);
        } else if (this.f6937public) {
            if (this.mMenuView.m3345public()) {
                this.mMenuView.m3337final();
                return;
            }
            K();
            ToastUtils.show((int) R.string.book_voice_is_exit_txt);
        } else if (this.b) {
            j0();
            ToastUtils.show((int) R.string.book_auto_read_is_exit_txt);
        } else {
            int i = 0;
            if (!z) {
                if (this.mMenuView.mSetLayout.getVisibility() == 0) {
                    this.mMenuView.m3332const();
                    return;
                }
            }
            if (z2 && this.f251do != 0) {
                try {
                    if (!ze.m3179private("SP_XSTG2_SHELF_SHOW_DIALOG_KEY", false) && (mhtgTwoBean = Ccontinue.m379if().f706break) != null) {
                        long abs = Math.abs(System.currentTimeMillis() - this.f251do) + ze.a("SP_XSTG2_READ_TIME_KEY", 0L);
                        if (abs >= mhtgTwoBean.getRead() * BaseConstants.Time.MINUTE) {
                            tt.f4763do.putBoolean("SP_XSTG2_SHELF_SHOW_DIALOG_KEY", true);
                            tt.f4763do.putLong("SP_XSTG2_SHOW_DATE_KEY", System.currentTimeMillis());
                        } else {
                            tt.f4763do.putLong("SP_XSTG2_READ_TIME_KEY", abs);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (!z && (!u0.m2663do().m2665if() || !da.m436throw())) {
                if (this.mMenuView.m3342native()) {
                    this.mMenuView.m3332const();
                    return;
                }
            } else if (this.mMenuView.m3342native()) {
                this.mMenuView.m3332const();
                i = FragmentManagerImpl.ANIM_DUR;
            }
            long j = i;
            if (!n2.f(L())) {
                showTipDialog(this, ze.q(R.string.txt_is_add_bookshlef_txt), new Cnative(j), new Cpublic(j), true);
            } else {
                J(j);
            }
        }
    }

    @Override // com.apk.f6, com.apk.l2
    public void setImmersionBar(boolean z) {
        super.setImmersionBar(z);
    }

    @Override // com.apk.l2
    /* renamed from: super */
    public void mo1605super(int i, boolean z, boolean z2, boolean z3) {
        int i2;
        if (z) {
            h2 h2Var = this.f6921catch;
            if (h2Var != null) {
                h2Var.f1687interface = 0;
                if (z2) {
                    tt.f4763do.putInt("read_page_animation", i);
                    v9 v9Var = h2Var.f1673catch;
                    if (v9Var != null) {
                        v9Var.f5034case = i;
                    }
                    BookRecyclerViewAdapter bookRecyclerViewAdapter = h2Var.f1675const;
                    if (bookRecyclerViewAdapter != null) {
                        bookRecyclerViewAdapter.f7159if = i;
                    }
                    h2Var.z();
                }
                if (z3) {
                    h2Var.m1062catch();
                    h2Var.B(h2Var.f1683goto, true);
                } else {
                    ArrayList arrayList = new ArrayList();
                    ChapterBean m1073import = h2Var.m1073import(h2Var.f1672case);
                    if (m1073import != null) {
                        String pid = m1073import.getPid();
                        if (h2Var.m1071goto(pid)) {
                            List<BookChapter> m = h2Var.m(h2Var.m1073import(pid), false);
                            i2 = ((ArrayList) m).size();
                            arrayList.addAll(m);
                        } else {
                            i2 = 0;
                        }
                        List<BookChapter> m2 = h2Var.m(m1073import, false);
                        if (da.m430public() && h2Var.f1701throw.m1252for()) {
                            int i3 = h2Var.f1683goto;
                            if (i3 > 0) {
                                i3--;
                            }
                            ArrayList arrayList2 = (ArrayList) m2;
                            int size = arrayList2.size();
                            while (i3 < size) {
                                BookChapter bookChapter = (BookChapter) arrayList2.get(i3);
                                int i4 = h2Var.f1687interface + 1;
                                h2Var.f1687interface = i4;
                                if (i4 != 0 && i4 % h2Var.f1701throw.f2178goto == 0) {
                                    arrayList2.add(i3, h2Var.k(bookChapter.getChapterId(), bookChapter.getChapterName()));
                                }
                                i3++;
                            }
                        }
                        ((ArrayList) m2).size();
                        arrayList.addAll(m2);
                        String nid = m1073import.getNid();
                        if (h2Var.m1071goto(nid)) {
                            List<BookChapter> m3 = h2Var.m(h2Var.m1073import(nid), true);
                            ((ArrayList) m3).size();
                            arrayList.addAll(m3);
                        }
                        int i5 = h2Var.f1683goto;
                        if (i5 > 0) {
                            i5--;
                        }
                        int i6 = i2 + i5;
                        if (i == 1) {
                            h2Var.f1675const.setNewData(arrayList);
                            if (z3) {
                                h2Var.f1674class.setAdapter(h2Var.f1675const);
                            }
                            h2Var.f1674class.scrollToPosition(i6);
                        } else {
                            h2Var.f1673catch.f5050try.clear();
                            h2Var.f1673catch.f5050try.addAll(arrayList);
                            h2Var.f1671break.setAdapter(h2Var.f1673catch);
                            h2Var.f1671break.setCurrentItem(i6);
                            if (h2Var.m1066default() == 2) {
                                ((l2) h2Var.f3970do).c();
                                h2Var.s(i6);
                            }
                        }
                    }
                }
            }
            mo1594finally();
        }
        k0(i);
    }

    @Override // com.apk.m1
    /* renamed from: synchronized */
    public void mo1686synchronized() {
        int width = this.mReadLayout.getWidth();
        int height = (this.mReadLayout.getHeight() - this.v) - (this.f6949while ? Cfinally.m793case() : 0);
        if (this.f6921catch != null) {
            if (!da.m430public() && u0.m2663do().f4814for) {
                width -= u0.m2663do().f4813do;
            }
            this.f6921catch.J(width, height);
            h2 h2Var = this.f6921catch;
            ComicReaderViewpager comicReaderViewpager = this.mViewPager;
            PageRecyclerView pageRecyclerView = this.mRecyclerView;
            BookTitleTextView bookTitleTextView = this.mBookTitleTextView;
            BookPageTextView bookPageTextView = this.mBookPageTextView;
            Book book = this.f6922class;
            CollectBook collectBook = this.f6923const;
            WebSiteBean webSiteBean = this.f6946throws;
            String str = this.f6927final;
            h2Var.f1671break = comicReaderViewpager;
            h2Var.f1674class = pageRecyclerView;
            h2Var.f1682for = book;
            h2Var.f1689new = collectBook;
            h2Var.f1704try = webSiteBean;
            v9 v9Var = new v9(h2Var.f3971if, h2Var.m1066default(), h2Var.f1701throw);
            h2Var.f1673catch = v9Var;
            v9Var.f5044import = h2Var.c;
            v9Var.f5051while = h2Var.m;
            h2Var.f1671break.setAdapter(v9Var);
            BookRecyclerViewAdapter bookRecyclerViewAdapter = new BookRecyclerViewAdapter(h2Var.f3971if, h2Var.m1066default(), h2Var.f1701throw);
            h2Var.f1675const = bookRecyclerViewAdapter;
            bookRecyclerViewAdapter.f7161this = h2Var.c;
            bookRecyclerViewAdapter.f7158goto = h2Var.m;
            h2Var.f1674class.setAdapter(bookRecyclerViewAdapter);
            h2Var.f1680final = bookTitleTextView;
            h2Var.f1697super = bookPageTextView;
            h2Var.I();
            h2Var.f1674class.setScrollDirectionChangedListener(h2Var);
            v9 v9Var2 = h2Var.f1673catch;
            if (v9Var2 != null) {
                v9Var2.f5039else = da.m430public();
            }
            BookRecyclerViewAdapter bookRecyclerViewAdapter2 = h2Var.f1675const;
            if (bookRecyclerViewAdapter2 != null) {
                bookRecyclerViewAdapter2.f7157for = da.m430public();
            }
            h2Var.f1674class.setOnScrollStateListener(h2Var);
            if (h2Var.m1081strictfp()) {
                BarrageDataUtils.getInstance().setOnBarrageListener(h2Var.j);
            }
            new b1().m141do(new i2(h2Var, str));
            return;
        }
        throw null;
    }

    @Override // com.apk.l2
    /* renamed from: this */
    public void mo1606this() {
        if (r0.m2199catch().f3156extends) {
            F(true, false);
            return;
        }
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (newBookReadMenuView != null && newBookReadMenuView.m3342native()) {
            this.mMenuView.m3332const();
        } else if (this.f6921catch.m1066default() == 1) {
        } else {
            this.f6921catch.p(false);
        }
    }

    @Override // com.apk.l2
    /* renamed from: throw */
    public void mo1607throw() {
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (newBookReadMenuView != null) {
            if (newBookReadMenuView.m3342native()) {
                this.mMenuView.m3332const();
            } else {
                this.mMenuView.m3344private();
            }
        }
    }

    @Override // com.apk.l2
    /* renamed from: transient */
    public boolean mo1608transient() {
        return this.f6949while;
    }

    @Override // com.apk.l2
    /* renamed from: try */
    public void mo1609try(String str) {
        h2 h2Var = this.f6921catch;
        if (h2Var != null) {
            h2Var.f1672case = str;
            h2Var.f1683goto = 0;
            h2Var.w();
            h2Var.z();
        }
        NewBookReadMenuView newBookReadMenuView = this.mMenuView;
        if (newBookReadMenuView != null && newBookReadMenuView.m3342native()) {
            this.mMenuView.m3332const();
        }
        I();
    }

    @Override // com.apk.l2
    /* renamed from: volatile */
    public boolean mo1610volatile() {
        g0 g0Var = this.f6930import;
        if (g0Var != null) {
            return g0Var.m900do();
        }
        return false;
    }

    @Override // com.apk.l2
    /* renamed from: while */
    public void mo1611while(boolean z) {
    }
}
