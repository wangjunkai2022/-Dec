package com.manhua.ui.activity;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.Cimport;
import com.apk.b1;
import com.apk.b7;
import com.apk.bs;
import com.apk.c1;
import com.apk.ca;
import com.apk.cj;
import com.apk.d;
import com.apk.da;
import com.apk.dt;
import com.apk.e00;
import com.apk.eg;
import com.apk.f00;
import com.apk.f1;
import com.apk.ft;
import com.apk.g00;
import com.apk.g1;
import com.apk.g10;
import com.apk.h00;
import com.apk.h10;
import com.apk.hf;
import com.apk.hg;
import com.apk.ii;
import com.apk.iu;
import com.apk.j00;
import com.apk.j20;
import com.apk.jf;
import com.apk.k00;
import com.apk.k20;
import com.apk.k30;
import com.apk.l20;
import com.apk.l30;
import com.apk.lv;
import com.apk.lz;
import com.apk.m1;
import com.apk.m20;
import com.apk.mf;
import com.apk.mu;
import com.apk.o;
import com.apk.og;
import com.apk.ov;
import com.apk.p0;
import com.apk.qi;
import com.apk.tt;
import com.apk.u0;
import com.apk.v;
import com.apk.v20;
import com.apk.w0;
import com.apk.yv;
import com.apk.z2;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.receiver.BatteryReceiver;
import com.biquge.ebook.app.ui.book.view.ReadBookLayout;
import com.biquge.ebook.app.ui.view.MhtgDownloadLayout;
import com.biquge.ebook.app.widget.RewardVideoAdView;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.manhua.adapter.ComicRecyclerViewAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicReadActivity;
import com.manhua.ui.view.ComicReadDirPopView;
import com.manhua.ui.widget.ComicPageTitleView;
import com.manhua.ui.widget.ComicReadGuidePopupView;
import com.manhua.ui.widget.ComicReadMenuView;
import com.manhua.ui.widget.ComicReaderViewpager;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.PublicLoadingView;
import com.manhua.ui.widget.ScrollSpeedLinearLayoutManger;
import com.manhua.ui.widget.ZoomRecyclerView;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import com.ss.android.download.api.constant.BaseConstants;
import java.util.HashMap;
import java.util.Timer;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class ComicReadActivity extends b7 implements k00, m1, f1 {

    /* renamed from: protected  reason: not valid java name */
    public static final Handler f9777protected = new Handler(Looper.getMainLooper());

    /* renamed from: abstract  reason: not valid java name */
    public boolean f9778abstract;

    /* renamed from: break  reason: not valid java name */
    public BatteryReceiver f9779break;

    /* renamed from: catch  reason: not valid java name */
    public ScrollSpeedLinearLayoutManger f9780catch;

    /* renamed from: class  reason: not valid java name */
    public LinearSmoothScroller f9781class;

    /* renamed from: const  reason: not valid java name */
    public f00 f9782const;

    /* renamed from: continue  reason: not valid java name */
    public View f9783continue;

    /* renamed from: final  reason: not valid java name */
    public ComicBean f9786final;

    /* renamed from: import  reason: not valid java name */
    public boolean f9788import;

    /* renamed from: interface  reason: not valid java name */
    public jf f9789interface;
    @BindView(R.id.adview_banner)
    public AdViewBanner mAdViewBanner;
    @BindView(R.id.loading_layout)
    public PublicLoadingView mLoadingView;
    @BindView(R.id.read_book_menu_view)
    public ComicReadMenuView mMenuView;
    @BindView(R.id.comic_night_view)
    public View mNightView;
    @BindView(R.id.read_content_recyclerview)
    public ZoomRecyclerView mRecyclerView;
    @BindView(R.id.read_bottom_title)
    public ComicPageTitleView mTitleTView;
    @BindView(R.id.read_content_viewpager)
    public ComicReaderViewpager mViewPager;

    /* renamed from: native  reason: not valid java name */
    public ComicReadDirPopView f9790native;

    /* renamed from: private  reason: not valid java name */
    public RewardVideoAdView f9792private;

    /* renamed from: public  reason: not valid java name */
    public og f9793public;

    /* renamed from: strictfp  reason: not valid java name */
    public TextView f9796strictfp;

    /* renamed from: super  reason: not valid java name */
    public ComicCollectBean f9797super;

    /* renamed from: this  reason: not valid java name */
    public l30 f9799this;

    /* renamed from: while  reason: not valid java name */
    public long f9803while;

    /* renamed from: throw  reason: not valid java name */
    public boolean f9800throw = true;

    /* renamed from: return  reason: not valid java name */
    public final Runnable f9794return = new Cconst();

    /* renamed from: static  reason: not valid java name */
    public final PageRecyclerView.Cdo f9795static = new Cdo();

    /* renamed from: switch  reason: not valid java name */
    public boolean f9798switch = false;

    /* renamed from: throws  reason: not valid java name */
    public boolean f9801throws = false;

    /* renamed from: default  reason: not valid java name */
    public boolean f9784default = false;

    /* renamed from: extends  reason: not valid java name */
    public boolean f9785extends = true;

    /* renamed from: finally  reason: not valid java name */
    public final ViewPager.OnPageChangeListener f9787finally = new Cif();

    /* renamed from: package  reason: not valid java name */
    public final View.OnTouchListener f9791package = new Cfor();

    /* renamed from: volatile  reason: not valid java name */
    public boolean f9802volatile = true;

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cbreak extends c1<Object> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f9804do;

        public Cbreak(String str) {
            this.f9804do = str;
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            ComicBean comicBean = ComicReadActivity.this.f9786final;
            if (comicBean != null && TextUtils.isEmpty(comicBean.getFirstChapterId())) {
                String id = ComicReadActivity.this.f9786final.getId();
                ComicCollectBean m1766finally = mu.m1766finally(id);
                if (m1766finally == null) {
                    ComicBean m3134super = z2.m3134super(id, true);
                    if (m3134super != null) {
                        ComicReadActivity.this.f9786final = m3134super;
                    }
                } else {
                    if (TextUtils.isEmpty(m1766finally.getReadChapterId())) {
                        ComicBean m3134super2 = z2.m3134super(id, true);
                        if (m3134super2 != null) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("firstChapterId", m3134super2.getFirstChapterId());
                            LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", id);
                        }
                        m1766finally = mu.m1766finally(id);
                    }
                    ComicReadActivity.this.f9797super = m1766finally;
                }
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            f00 f00Var = comicReadActivity.f9782const;
            ComicReaderViewpager comicReaderViewpager = comicReadActivity.mViewPager;
            ZoomRecyclerView zoomRecyclerView = comicReadActivity.mRecyclerView;
            l30 l30Var = comicReadActivity.f9799this;
            ComicBean comicBean = comicReadActivity.f9786final;
            ComicCollectBean comicCollectBean = comicReadActivity.f9797super;
            String str = this.f9804do;
            f00Var.f1170catch = comicReaderViewpager;
            f00Var.f1172const = zoomRecyclerView;
            f00Var.f1179for = comicBean;
            f00Var.f1183new = comicCollectBean;
            lz lzVar = new lz(f00Var.f3971if, f00Var.m715import(), l30Var, f00Var.f1190super);
            f00Var.f1171class = lzVar;
            lzVar.f2955this = f00Var.f1178finally;
            f00Var.f1170catch.setAdapter(lzVar);
            ComicRecyclerViewAdapter comicRecyclerViewAdapter = new ComicRecyclerViewAdapter(f00Var.f3971if, f00Var.f1190super);
            f00Var.f1177final = comicRecyclerViewAdapter;
            comicRecyclerViewAdapter.f9634for = f00Var.f1178finally;
            f00Var.f1172const.setAdapter(comicRecyclerViewAdapter);
            f00Var.f1172const.setOnScrollStateListener(f00Var);
            BarrageDataUtils.getInstance().setOnBarrageListener(f00Var.f1167abstract);
            bs bsVar = new bs(Integer.MIN_VALUE, Integer.MIN_VALUE);
            f00.Cthis cthis = new f00.Cthis(null);
            Activity activity = f00Var.f3971if;
            eg.m593else(activity, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
            qi m1160if = ii.m1220new(activity).f2116else.m1160if(activity);
            if (f00Var.f1180goto == 0) {
                f00Var.f1180goto = ze.m3174instanceof("SP_PRELOAD_COMIC_IMAGE_SIZE_KEY", 6);
            }
            f00Var.f1172const.addOnScrollListener(new cj(m1160if, cthis, bsVar, f00Var.f1180goto));
            new b1().m141do(new g00(f00Var, str));
            ComicReadActivity comicReadActivity2 = ComicReadActivity.this;
            comicReadActivity2.mMenuView.m3656return(comicReadActivity2.f9786final, comicReadActivity2.f9797super);
            ComicReadActivity.this.mMenuView.m3661throw();
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ccase implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f9806do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f9807for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ComicBean f9808if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f9809new;

        public Ccase(Activity activity, ComicBean comicBean, String str, String str2) {
            this.f9806do = activity;
            this.f9808if = comicBean;
            this.f9807for = str;
            this.f9809new = str2;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            Intent intent = new Intent(this.f9806do, ComicReadActivity.class);
            intent.putExtra("book", this.f9808if);
            intent.putExtra("chapterId", this.f9807for);
            this.f9806do.startActivity(intent);
            if (this.f9808if != null) {
                if (TextUtils.isEmpty(this.f9807for)) {
                    v m2734do = v.m2734do();
                    this.f9808if.getId();
                    this.f9808if.getName();
                    if (m2734do == null) {
                        throw null;
                    }
                    return;
                }
                v m2734do2 = v.m2734do();
                this.f9808if.getId();
                this.f9808if.getName();
                if (m2734do2 == null) {
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$catch  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccatch extends yv {
        public Ccatch(ComicReadActivity comicReadActivity) {
        }

        @Override // com.apk.yv
        /* renamed from: new */
        public void mo398new(BasePopupView basePopupView) {
            tt.f4763do.putBoolean("SP_READ_FIRST_GUIDE_KEY", true);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$class  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cclass implements Runnable {
        public Cclass() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f00 f00Var = ComicReadActivity.this.f9782const;
            if (f00Var != null) {
                f00Var.n();
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$const  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cconst implements Runnable {
        public Cconst() {
        }

        @Override // java.lang.Runnable
        public void run() {
            og ogVar = ComicReadActivity.this.f9793public;
            if (ogVar == null || !ogVar.isShowing()) {
                return;
            }
            ComicReadActivity.this.f9793public.dismiss();
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PageRecyclerView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: case */
        public void mo3317case() {
            ComicReadActivity.r(ComicReadActivity.this);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: do */
        public void mo3318do(int i) {
            ComicReadActivity.this.f9782const.k(i);
            ComicReadActivity.this.f9782const.m712goto();
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: for */
        public void mo3319for(int i) {
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: if */
        public void mo3320if() {
            ComicReadActivity.this.f9782const.a(false);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: new */
        public void mo3321new() {
            ComicReadActivity.this.f9782const.b(false);
        }

        @Override // com.manhua.ui.widget.PageRecyclerView.Cdo
        /* renamed from: try */
        public void mo3322try() {
            if (ComicReadActivity.this.f9782const.m723static(false)) {
                ComicReadActivity.this.mo1413import();
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Celse implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f9813do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f9814for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ComicCollectBean f9815if;

        public Celse(Activity activity, ComicCollectBean comicCollectBean, String str) {
            this.f9813do = activity;
            this.f9815if = comicCollectBean;
            this.f9814for = str;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            Intent intent = new Intent(this.f9813do, ComicReadActivity.class);
            intent.putExtra("collectBook", this.f9815if);
            intent.putExtra("chapterId", this.f9814for);
            this.f9813do.startActivity(intent);
            if (this.f9815if != null) {
                v m2734do = v.m2734do();
                this.f9815if.getCollectId();
                this.f9815if.getName();
                if (m2734do == null) {
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements View.OnTouchListener {
        public Cfor() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return ComicReadActivity.this.f9799this.f2740do.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cgoto implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f9817do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f9818if;

        public Cgoto(Activity activity, String str) {
            this.f9817do = activity;
            this.f9818if = str;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            Intent intent = new Intent(this.f9817do, ComicReadActivity.class);
            ComicBean comicBean = new ComicBean();
            comicBean.setId(this.f9818if);
            intent.putExtra("book", comicBean);
            this.f9817do.startActivity(intent);
            if (v.m2734do() == null) {
                throw null;
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ViewPager.OnPageChangeListener {
        public Cif() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                ComicReadActivity comicReadActivity = ComicReadActivity.this;
                comicReadActivity.f9801throws = false;
                comicReadActivity.f9785extends = true;
                comicReadActivity.f9784default = false;
                f00 f00Var = comicReadActivity.f9782const;
                if (f00Var != null) {
                    o.m1921for().m1924new().execute(new h00(f00Var));
                } else {
                    throw null;
                }
            } else if (i == 1) {
                ComicReadActivity comicReadActivity2 = ComicReadActivity.this;
                comicReadActivity2.f9801throws = true;
                comicReadActivity2.f9784default = true;
                if (comicReadActivity2.mMenuView.m3654native()) {
                    comicReadActivity2.mMenuView.m3651const();
                }
            } else if (i == 2) {
                ComicReadActivity comicReadActivity3 = ComicReadActivity.this;
                comicReadActivity3.f9801throws = false;
                if (comicReadActivity3.mMenuView.m3654native()) {
                    comicReadActivity3.mMenuView.m3651const();
                }
            }
            ComicReadActivity comicReadActivity4 = ComicReadActivity.this;
            f00 f00Var2 = comicReadActivity4.f9782const;
            if (f00Var2 != null) {
                if (comicReadActivity4.f9784default) {
                    f00Var2.f1189strictfp = true;
                    if (f00Var2.m706default()) {
                        BarrageDataUtils.getInstance().setScrollState(false);
                        return;
                    }
                    return;
                }
                f00Var2.mo713if();
                f00 f00Var3 = ComicReadActivity.this.f9782const;
                if (f00Var3 != null) {
                    f00Var3.n();
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            if (comicReadActivity.f9798switch && comicReadActivity.f9801throws && i2 == 0 && comicReadActivity.f9785extends) {
                comicReadActivity.f9785extends = false;
                comicReadActivity.mo1413import();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
            if (r6 == ((r1 != null ? r1.getCount() : 0) - 1)) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
            if (r6 == 0) goto L8;
         */
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onPageSelected(int r6) {
            /*
                r5 = this;
                com.manhua.ui.activity.ComicReadActivity r0 = com.manhua.ui.activity.ComicReadActivity.this
                com.apk.f00 r0 = r0.f9782const
                r0.k(r6)
                com.manhua.ui.activity.ComicReadActivity r0 = com.manhua.ui.activity.ComicReadActivity.this
                com.apk.f00 r1 = r0.f9782const
                r2 = 0
                boolean r3 = r1.m723static(r2)
                r4 = 1
                if (r3 == 0) goto L38
                boolean r3 = r1.m709extends()
                if (r3 == 0) goto L1a
                goto L38
            L1a:
                int r3 = r1.m715import()
                if (r3 != 0) goto L24
                if (r6 != 0) goto L38
            L22:
                r2 = 1
                goto L38
            L24:
                int r3 = r1.m715import()
                if (r3 != r4) goto L38
                com.apk.lz r1 = r1.f1171class
                if (r1 == 0) goto L33
                int r1 = r1.getCount()
                goto L34
            L33:
                r1 = 0
            L34:
                int r1 = r1 - r4
                if (r6 != r1) goto L38
                goto L22
            L38:
                r0.f9798switch = r2
                com.manhua.ui.activity.ComicReadActivity r6 = com.manhua.ui.activity.ComicReadActivity.this
                com.apk.f00 r6 = r6.f9782const
                r6.m712goto()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.manhua.ui.activity.ComicReadActivity.Cif.onPageSelected(int):void");
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ long f9820do;

        /* renamed from: com.manhua.ui.activity.ComicReadActivity$new$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements g1 {
            public Cdo() {
            }

            @Override // com.apk.g1
            public void onData(Object obj) {
                ComicReadActivity.this.f9782const.i();
                Cnew cnew = Cnew.this;
                ComicReadActivity.this.v(cnew.f9820do);
            }
        }

        public Cnew(long j) {
            this.f9820do = j;
        }

        @Override // com.apk.ft
        public void onClick() {
            if (mu.m1763else(ComicReadActivity.this, true, true, new Cdo())) {
                return;
            }
            ComicReadActivity.this.f9782const.i();
            ComicReadActivity.this.v(this.f9820do);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis implements PublicLoadingView.Cdo {
        public Cthis() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            f00 f00Var = ComicReadActivity.this.f9782const;
            if (f00Var != null) {
                f00Var.h();
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements dt {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ long f9824do;

        public Ctry(long j) {
            this.f9824do = j;
        }

        @Override // com.apk.dt
        public void onClick() {
            ComicReadActivity.this.v(this.f9824do);
        }
    }

    public static void E(String str) {
        ToastUtils.show((CharSequence) str);
    }

    public static void G(Activity activity, ComicBean comicBean, String str) {
        w0.m2875extends(activity, new Ccase(activity, comicBean, str, null), true);
    }

    public static void H(Activity activity, ComicBean comicBean, String str, String str2) {
        w0.m2875extends(activity, new Ccase(activity, comicBean, str, null), true);
    }

    public static void I(Activity activity, ComicCollectBean comicCollectBean, String str) {
        w0.m2875extends(activity, new Celse(activity, comicCollectBean, str), true);
    }

    public static void J(Activity activity, String str) {
        w0.m2875extends(activity, new Cgoto(activity, str), true);
    }

    public static void r(ComicReadActivity comicReadActivity) {
        if (comicReadActivity.mMenuView.m3654native()) {
            comicReadActivity.mMenuView.m3651const();
        }
    }

    public /* synthetic */ void A() {
        finish();
    }

    public /* synthetic */ void B() {
        try {
            mo1419super(this.f9782const.m715import(), true, false, true);
            this.mMenuView.setBarrageSendViewVisible(this.f9782const.m726switch());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void C(boolean z, boolean z2) {
        try {
            if (this.mLoadingView != null) {
                if (z) {
                    this.mLoadingView.setError(null);
                } else if (z2) {
                    this.mLoadingView.m3667if();
                } else {
                    this.mLoadingView.m3666for();
                }
            }
            if (!z2 && this.f9800throw) {
                this.f9800throw = false;
                ze.V();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (z2 || z) {
            return;
        }
        t();
    }

    public /* synthetic */ void D(String str, int i, int i2) {
        this.mTitleTView.m3638for(str, i, i2);
    }

    public /* synthetic */ void F(boolean z) {
        if (z) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(0);
        }
    }

    public final void K(String str, String str2) {
        ComicReadDirPopView comicReadDirPopView = this.f9790native;
        if (comicReadDirPopView == null) {
            this.f9790native = new ComicReadDirPopView(this, x(), str, str2, new h10(this));
        } else {
            f00 f00Var = this.f9782const;
            comicReadDirPopView.setReadChapterId(f00Var != null ? f00Var.f1195try : "");
        }
        lv lvVar = new lv();
        ComicReadDirPopView comicReadDirPopView2 = this.f9790native;
        if (comicReadDirPopView2 instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicReadDirPopView2 instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicReadDirPopView2 instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicReadDirPopView2 instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicReadDirPopView2 instanceof PositionPopupView) {
            lvVar.f2917continue = zu.f6266try;
        }
        comicReadDirPopView2.popupInfo = lvVar;
        comicReadDirPopView2.show();
    }

    @Override // com.apk.k00
    /* renamed from: abstract */
    public void mo1403abstract() {
        s(true, this.f9778abstract);
    }

    @Override // com.apk.k00
    /* renamed from: break */
    public void mo1404break() {
        if (k30.m1427catch().f3156extends) {
            mo1403abstract();
        } else if (this.f9782const.m715import() == 2) {
        } else {
            if (this.mMenuView.m3654native()) {
                this.mMenuView.m3651const();
            } else {
                this.f9782const.g();
            }
        }
    }

    @Override // com.apk.k00
    /* renamed from: case */
    public void mo1405case(boolean z) {
        if (this.f9783continue == null) {
            View inflate = ((ViewStub) findViewById(R.id.read_chapter_video_ad_view)).inflate();
            this.f9783continue = inflate;
            inflate.setBackgroundColor(ze.p(R.color.main_bg_color));
            this.f9796strictfp = (TextView) this.f9783continue.findViewById(R.id.item_read_ad_continue_view);
            try {
                LinearLayout linearLayout = (LinearLayout) this.f9783continue.findViewById(R.id.item_read_ad_layout);
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
        View view = this.f9783continue;
        if (view != null) {
            if (z) {
                view.setVisibility(0);
                this.f9782const.m728this(this.f9796strictfp);
                return;
            }
            view.setVisibility(8);
        }
    }

    @Override // com.apk.k00
    /* renamed from: catch */
    public void mo1406catch() {
        String w = w();
        f00 f00Var = this.f9782const;
        K(w, f00Var != null ? f00Var.f1195try : "");
    }

    @Override // com.apk.k00
    /* renamed from: class */
    public void mo1407class() {
        ComicChapterBean m704const;
        f00 f00Var = this.f9782const;
        if (f00Var.f1185private || (m704const = f00Var.m704const(f00Var.f1195try)) == null) {
            return;
        }
        String pid = m704const.getPid();
        if (f00.m693case(pid)) {
            f00Var.f1195try = pid;
            f00Var.f1175else = 0;
            f00Var.h();
        }
    }

    @Override // com.apk.k00
    /* renamed from: const */
    public void mo1408const(final String str) {
        Handler handler = f9777protected;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.apk.r00
                @Override // java.lang.Runnable
                public final void run() {
                    ComicReadActivity.E(str);
                }
            });
        }
    }

    @Override // com.apk.k00
    /* renamed from: do */
    public void mo1409do(final boolean z, final boolean z2) {
        Handler handler = f9777protected;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.apk.w00
                @Override // java.lang.Runnable
                public final void run() {
                    ComicReadActivity.this.C(z2, z);
                }
            });
        }
    }

    @Override // com.apk.k00
    /* renamed from: else */
    public void mo1410else(boolean z) {
        this.mNightView.setVisibility(z ? 0 : 8);
    }

    @Override // com.apk.m1
    public void f(int i, int i2) {
        f00 f00Var;
        l30 l30Var = this.f9799this;
        if (l30Var != null) {
            l30Var.f2741for = i;
            l30Var.f2743new = i2;
        }
        if (this.f9788import || (f00Var = this.f9782const) == null) {
            return;
        }
        if (f00Var.f1170catch != null) {
            f00 f00Var2 = this.f9782const;
            f00Var2.o(f00Var2.m715import(), false, false);
        }
    }

    @Override // com.apk.k00
    /* renamed from: final */
    public void mo1411final() {
        f00 f00Var = this.f9782const;
        if (f00Var.f1185private) {
            return;
        }
        if (f00Var.m723static(false)) {
            ((k00) f00Var.f3970do).mo1413import();
        }
        ComicChapterBean m704const = f00Var.m704const(f00Var.f1195try);
        if (m704const != null) {
            String nid = m704const.getNid();
            if (f00.m693case(nid)) {
                f00Var.f1195try = nid;
                f00Var.f1175else = 0;
                f00Var.h();
            }
        }
    }

    @Override // com.apk.k00
    public void g(int i) {
        if (this.f9781class == null) {
            this.f9781class = new v20(this);
        }
        this.f9781class.setTargetPosition(i);
        this.f9780catch.startSmoothScroll(this.f9781class);
    }

    @Override // com.apk.b7, com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_activity_read;
    }

    @Override // com.apk.k00
    /* renamed from: if */
    public void mo1412if(boolean z) {
        s(z, false);
    }

    @Override // com.apk.k00
    /* renamed from: import */
    public void mo1413import() {
        startActivity(new Intent(this, ComicReadEndActivity.class));
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        f00 f00Var = new f00(this, f9777protected, this);
        this.f9782const = f00Var;
        if (f00Var != null) {
            if (!da.m430public()) {
                setRequestedOrientation(0);
            }
            z();
            return;
        }
        throw null;
    }

    @Override // com.apk.b7, com.apk.f6
    public void initData() {
        super.initData();
        y(getIntent());
        mo1419super(this.f9782const.m715import(), false, false, false);
        try {
            if (w0.m2883native(w())) {
                ((TextView) ((ViewStub) findViewById(R.id.copyright_tips_layout)).inflate().findViewById(R.id.view_copyright_title_tv)).setText("《" + x() + "》");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.f9779break == null) {
            this.f9779break = new BatteryReceiver(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            registerReceiver(this.f9779break, intentFilter);
        }
        Cfinally m797else = Cfinally.m797else();
        if ((m797else.f1357interface == null || !m797else.m808final() || Cfinally.m796do(m797else.f1357interface, "bannerbottom_mh2") == null) ? false : true) {
            try {
                this.mAdViewBanner.m3271for(this, "bannerbottom_mh2");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        k(w(), false);
        long currentTimeMillis = System.currentTimeMillis();
        this.f9803while = currentTimeMillis;
        mf.m1712do("SP_READ_CLOSE_REPEAT_COMIC", Long.valueOf(currentTimeMillis));
    }

    @Override // com.apk.f6
    public void initView() {
        super.initView();
        registerEventBus(this);
        ComicReadMenuView comicReadMenuView = this.mMenuView;
        comicReadMenuView.f10156do = this;
        comicReadMenuView.f10164new = AnimationUtils.loadAnimation(this, R.anim.book_menu_top_in);
        comicReadMenuView.f10171try = AnimationUtils.loadAnimation(comicReadMenuView.f10156do, R.anim.book_menu_top_out);
        comicReadMenuView.f10152case = AnimationUtils.loadAnimation(comicReadMenuView.f10156do, R.anim.book_menu_bottom_in);
        comicReadMenuView.f10157else = AnimationUtils.loadAnimation(comicReadMenuView.f10156do, R.anim.book_menu_bottom_out);
        comicReadMenuView.f10160goto = AnimationUtils.loadAnimation(comicReadMenuView.f10156do, R.anim.book_menu_bottom_in);
        comicReadMenuView.f10169this = AnimationUtils.loadAnimation(comicReadMenuView.f10156do, R.anim.book_menu_bottom_out);
        if (!w0.m2896throws()) {
            comicReadMenuView.findViewById(R.id.read_menu_comment_bt).setVisibility(8);
        }
        comicReadMenuView.f10164new.setAnimationListener(new j20(comicReadMenuView));
        comicReadMenuView.f10152case.setAnimationListener(new k20(comicReadMenuView));
        comicReadMenuView.f10171try.setAnimationListener(new l20(comicReadMenuView));
        comicReadMenuView.f10157else.setAnimationListener(new m20(comicReadMenuView));
        String m2620do = tt.m2620do("SP_READ_SOURCE_TIPS_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            m2620do = ze.q(R.string.book_read_source_tips_txt);
        }
        ((TextView) comicReadMenuView.findViewById(R.id.read_source_tips_tv)).setText(Html.fromHtml(m2620do));
        ComicReadMenuView comicReadMenuView2 = this.mMenuView;
        comicReadMenuView2.f10153catch = this.f9782const;
        comicReadMenuView2.f10151break = this;
        ((ReadBookLayout) findViewById(R.id.read_content_layout)).setOnSizeChangedListener(this);
        this.mViewPager.addOnPageChangeListener(this.f9787finally);
        this.mRecyclerView.setEnableScale(true);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        ScrollSpeedLinearLayoutManger scrollSpeedLinearLayoutManger = new ScrollSpeedLinearLayoutManger(this);
        this.f9780catch = scrollSpeedLinearLayoutManger;
        this.mRecyclerView.setLayoutManager(scrollSpeedLinearLayoutManger);
        this.mRecyclerView.f10219for = this.f9795static;
        this.f9799this = new l30(this, this.f9782const.f1196volatile);
        this.mViewPager.setOnTouchListener(this.f9791package);
        this.mRecyclerView.setOnTouchListener(this.f9791package);
        this.mLoadingView.setReloadListener(new Cthis());
    }

    @Override // com.apk.f1
    /* renamed from: interface */
    public void mo746interface() {
        ComicPageTitleView comicPageTitleView = this.mTitleTView;
        if (comicPageTitleView != null) {
            comicPageTitleView.m3639if();
        }
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    @Override // com.apk.b7
    public String m() {
        return "SOURCE_CARTTON_VALUE";
    }

    @Override // com.apk.k00
    /* renamed from: native */
    public void mo1414native(int i) {
        TextView textView;
        ComicReadMenuView comicReadMenuView = this.mMenuView;
        if (comicReadMenuView == null || (textView = comicReadMenuView.mBarrageSwitchView) == null) {
            return;
        }
        textView.setText(ze.r(R.string.comic_barrage_count_txt, Integer.valueOf(i)));
    }

    @Override // com.apk.k00
    /* renamed from: new */
    public void mo1415new(boolean z) {
        s(z, true);
    }

    @Override // com.apk.b7
    public void o(boolean z, boolean z2) {
        mo1417return(z, z2);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10213) {
            try {
                if (i2 == -1) {
                    s(false, false);
                    eg.h(this, k30.m1427catch().m1430class(), null);
                    k30.m1427catch().m1434throw(this.f9782const.f1195try, false);
                } else {
                    s(true, false);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (i == 10215) {
            try {
                if (i2 == -1) {
                    s(false, false);
                    eg.h(this, k30.m1427catch().m1430class(), null);
                    k30.m1427catch().m1434throw(this.f9782const.f1195try, true);
                    String str = this.f9782const != null ? this.f9782const.f1195try : "";
                    if (tt.m2620do("SP_LIMIT_CHAPTER_KEY_COMIC", "").contains("&" + str + "&")) {
                        e00.m530try(w(), str);
                        return;
                    }
                    return;
                }
                s(true, false);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        mo1417return(false, true);
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f9788import) {
            f00 f00Var = this.f9782const;
            if (f00Var != null) {
                f00Var.f1173continue = true;
            }
            Handler handler = f9777protected;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.u00
                    @Override // java.lang.Runnable
                    public final void run() {
                        ComicReadActivity.this.B();
                    }
                });
            }
        }
        this.f9788import = false;
    }

    @Override // com.apk.b7, com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            u();
            unRegisterEventBus(this);
            this.mViewPager.removeOnPageChangeListener(this.f9787finally);
            if (this.f9779break != null) {
                unregisterReceiver(this.f9779break);
            }
            if (this.mMenuView != null) {
                ComicReadMenuView comicReadMenuView = this.mMenuView;
                LinearLayout linearLayout = comicReadMenuView.mTopLayout;
                if (linearLayout != null) {
                    linearLayout.clearAnimation();
                }
                LinearLayout linearLayout2 = comicReadMenuView.mDefuaultLayout;
                if (linearLayout2 != null) {
                    linearLayout2.clearAnimation();
                }
                LinearLayout linearLayout3 = comicReadMenuView.mSetLayout;
                if (linearLayout3 != null) {
                    linearLayout3.clearAnimation();
                }
            }
            if (f9777protected != null) {
                f9777protected.removeCallbacksAndMessages(null);
            }
            if (this.f9782const != null) {
                this.f9782const.e();
            }
            if (this.mAdViewBanner != null) {
                this.mAdViewBanner.m3272new();
                this.mAdViewBanner = null;
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
            k30 m1427catch = k30.m1427catch();
            m1427catch.f2452abstract = false;
            m1427catch.f3148break = false;
            Timer timer = m1427catch.f3153default;
            if (timer != null) {
                timer.cancel();
            }
            k30.f2451continue = null;
            p0.m2011super("CACHE_COMIC_AD_KEY", Integer.valueOf(m1427catch.f3165return));
            d.Cdo.f803do.m403try();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        String str = mfVar.f3028do;
        if ("BOOKRE_CHAPTER_PAGE_AD_TYPE".equals(str)) {
            try {
                int intValue = ((Integer) mfVar.f3030if).intValue();
                if (intValue == 1) {
                    this.mViewPager.setCanScroll(false);
                    this.mRecyclerView.setScrollEnabled(false);
                } else if (intValue == 2) {
                    this.f9782const.f1185private = false;
                    this.mViewPager.setCanScroll(true);
                    this.mRecyclerView.setScrollEnabled(true);
                } else if (intValue == 3) {
                    this.f9782const.d();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if ("REFRESH_CARTOON_DOWNLOAD_KEY".equals(str)) {
            MhtgDownloadLayout mhtgDownloadLayout = this.f255if;
            if (mhtgDownloadLayout != null) {
                mhtgDownloadLayout.m3407do();
            }
        } else if ("login_action".equals(str)) {
            Object[] objArr = mfVar.f3029for;
            boolean booleanValue = ((Boolean) objArr[0]).booleanValue();
            String str2 = (String) objArr[1];
            boolean booleanValue2 = ((Boolean) objArr[2]).booleanValue();
            if (booleanValue && booleanValue2) {
                f00 f00Var = this.f9782const;
                if (f00Var == null) {
                    throw null;
                }
                b1 b1Var = new b1();
                b1Var.m143if(f00Var.f3971if);
                b1Var.m141do(new j00(f00Var, true, false));
            }
        } else if ("EVENT_PJB_SHOW_UPDATE_KEY".equals(str)) {
            f00 f00Var2 = this.f9782const;
            if (f00Var2 == null || !f00Var2.f1195try.equals(mfVar.f3030if)) {
                return;
            }
            l(true);
        } else if (!"SP_READ_CLOSE_REPEAT_COMIC".equals(str) || this.f9803while == ((Long) mfVar.f3030if).longValue()) {
        } else {
            finish();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 25) {
            if (k30.m1427catch().f3156extends) {
                return false;
            }
            RewardVideoAdView rewardVideoAdView = this.f9792private;
            if (rewardVideoAdView == null || rewardVideoAdView.getVisibility() != 0) {
                PublicLoadingView publicLoadingView = this.mLoadingView;
                if (publicLoadingView == null || publicLoadingView.getVisibility() != 0) {
                    Cimport cimport = this.f9782const.f1190super;
                    if (!((cimport == null || cimport.f2181native == null) ? false : true) && keyEvent.getRepeatCount() == 0) {
                        if (!da.m431return()) {
                            return false;
                        }
                        this.f9782const.d();
                        if (this.mMenuView.m3654native()) {
                            this.mMenuView.m3651const();
                        }
                    }
                    return true;
                }
                return true;
            }
            return false;
        } else if (i == 24) {
            if (k30.m1427catch().f3156extends) {
                return false;
            }
            RewardVideoAdView rewardVideoAdView2 = this.f9792private;
            if (rewardVideoAdView2 == null || rewardVideoAdView2.getVisibility() != 0) {
                PublicLoadingView publicLoadingView2 = this.mLoadingView;
                if (publicLoadingView2 == null || publicLoadingView2.getVisibility() != 0) {
                    Cimport cimport2 = this.f9782const.f1190super;
                    if (!((cimport2 == null || cimport2.f2181native == null) ? false : true) && keyEvent.getRepeatCount() == 0) {
                        if (!da.m431return()) {
                            return false;
                        }
                        this.f9782const.g();
                        if (this.mMenuView.m3654native()) {
                            this.mMenuView.m3651const();
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        y(intent);
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        final f00 f00Var = this.f9782const;
        if (f00Var != null) {
            Cimport cimport = f00Var.f1190super;
            if (f00Var.m706default()) {
                BarrageDataUtils.getInstance().setScrollState(false);
                f00Var.p(4);
            }
            k30 m1427catch = k30.m1427catch();
            if (!m1427catch.f3169this) {
                m1427catch.f2452abstract = false;
            }
            if (f00Var.f1192this) {
                return;
            }
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.b00
                @Override // java.lang.Runnable
                public final void run() {
                    f00.this.m724strictfp();
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
            }
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        f00 f00Var = this.f9782const;
        if (f00Var != null) {
            Cimport cimport = f00Var.f1190super;
            if (f00Var.m706default()) {
                BarrageDataUtils.getInstance().setScrollState(true);
                f00Var.p(5);
            }
            k30.m1427catch().f2452abstract = true;
        }
    }

    @Override // com.apk.b7, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        ComicReadMenuView comicReadMenuView = this.mMenuView;
        if (comicReadMenuView != null) {
            hg hgVar = comicReadMenuView.f10161if;
            if (hgVar != null) {
                hgVar.m1115new();
            }
            hg hgVar2 = this.mMenuView.f10161if;
            if (hgVar2 != null) {
                hgVar2.m1116try();
            }
        }
        AdViewBanner adViewBanner = this.mAdViewBanner;
        if (adViewBanner != null) {
            adViewBanner.f6314this = false;
        }
    }

    @Override // com.apk.b7, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        ComicReadMenuView comicReadMenuView = this.mMenuView;
        if (comicReadMenuView != null) {
            hg hgVar = comicReadMenuView.f10161if;
            if (hgVar != null) {
                hgVar.m1113goto();
            }
            hg hgVar2 = this.mMenuView.f10161if;
            if (hgVar2 != null) {
                hgVar2.m1112for();
            }
        }
        AdViewBanner adViewBanner = this.mAdViewBanner;
        if (adViewBanner != null) {
            adViewBanner.f6314this = true;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.f9802volatile != z) {
            if (!this.mMenuView.m3654native()) {
                z();
            }
            iu iuVar = this.mImmersionBar;
            if (iuVar != null) {
                super.setImmersionBar(iuVar.f2235class.f756catch);
            }
        }
        this.f9802volatile = z;
    }

    @Override // com.apk.k00
    /* renamed from: public */
    public void mo1416public(String str, String str2) {
        if (this.f9793public == null) {
            this.f9793public = new og(this);
        }
        if (!this.f9793public.isShowing()) {
            og ogVar = this.f9793public;
            ogVar.showAtLocation(this.mMenuView, 80, 0, ogVar.f3413for);
        }
        og ogVar2 = this.f9793public;
        ogVar2.f3412do.setText(str);
        ogVar2.f3414if.setText(str2);
    }

    @Override // com.apk.k00
    /* renamed from: return */
    public void mo1417return(boolean z, boolean z2) {
        MhtgTwoBean mhtgTwoBean;
        if (w0.m2883native(w())) {
            v(0L);
            return;
        }
        int i = 0;
        if (!z) {
            if (this.mMenuView.mSetLayout.getVisibility() == 0) {
                this.mMenuView.m3651const();
                return;
            }
        }
        if (z2 && this.f251do != 0) {
            try {
                if (!ze.m3179private("SP_MHTG2_SHELF_SHOW_DIALOG_KEY", false) && (mhtgTwoBean = Ccontinue.m379if().f725this) != null) {
                    long abs = Math.abs(System.currentTimeMillis() - this.f251do) + ze.a("SP_MHTG2_READ_TIME_KEY", 0L);
                    if (abs >= mhtgTwoBean.getRead() * BaseConstants.Time.MINUTE) {
                        tt.f4763do.putBoolean("SP_MHTG2_SHELF_SHOW_DIALOG_KEY", true);
                        tt.f4763do.putLong("SP_MHTG2_SHOW_DATE_KEY", System.currentTimeMillis());
                    } else {
                        tt.f4763do.putLong("SP_MHTG2_READ_TIME_KEY", abs);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (!z && !u0.m2663do().m2665if()) {
            if (this.mMenuView.m3654native()) {
                this.mMenuView.m3651const();
                return;
            }
        } else if (this.mMenuView.m3654native()) {
            this.mMenuView.m3651const();
            i = FragmentManagerImpl.ANIM_DUR;
        }
        long j = i;
        if (!mu.h(w())) {
            showTipDialog(this, ze.q(R.string.txt_is_add_bookshlef_txt), new Cnew(j), new Ctry(j), true);
        } else {
            v(j);
        }
    }

    public final void s(boolean z, boolean z2) {
        BookChapter m710final;
        try {
            this.f9778abstract = z2;
            if (this.f9792private != null && z && this.f9792private.getVisibility() == 0) {
                return;
            }
            if (this.f9782const == null || (m710final = this.f9782const.m710final()) == null || (!"MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY".equals(m710final.getImageUrl()) && !"MH_UNLOCK_CHAPTER_FALIED_TAG_KEY".equals(m710final.getImageUrl()))) {
                if (this.f9792private == null) {
                    RewardVideoAdView rewardVideoAdView = (RewardVideoAdView) ((ViewStub) findViewById(R.id.read_book_reward_view)).inflate();
                    this.f9792private = rewardVideoAdView;
                    rewardVideoAdView.m3483do(hf.COMIC);
                    this.f9792private.setOnRewardBtnCallback(new g10(this, z2));
                }
                if (z2) {
                    if (this.f9792private != null) {
                        this.f9792private.m3484if(false);
                    }
                } else {
                    NewShareDisBean m382for = Ccontinue.m379if().m382for();
                    if (m382for != null && !m382for.isOnlyCheckTime() && this.f9792private != null) {
                        this.f9792private.m3484if(true);
                    }
                }
                if (z) {
                    if (this.mMenuView.m3654native()) {
                        this.mMenuView.m3651const();
                    }
                    if (this.f9792private != null) {
                        this.f9792private.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (this.f9792private != null) {
                    this.f9792private.setVisibility(8);
                }
                if (k30.m1427catch().f3156extends) {
                    k30.m1427catch().f3156extends = false;
                    if (this.mViewPager != null) {
                        this.mViewPager.setCanScroll(true);
                    }
                    if (this.mRecyclerView != null) {
                        this.mRecyclerView.setScrollEnabled(true);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.k00
    /* renamed from: strictfp */
    public void mo1418strictfp(boolean z) {
        this.mTitleTView.setVisibility(z ? 0 : 8);
        if (this.f9782const == null) {
            throw null;
        }
        tt.f4763do.putBoolean("SP_COMIC_READ_SHOW_PAGE_TITLE_KEY", z);
    }

    @Override // com.apk.k00
    /* renamed from: super */
    public void mo1419super(int i, boolean z, boolean z2, boolean z3) {
        f00 f00Var;
        if (z && (f00Var = this.f9782const) != null) {
            f00Var.o(i, z2, z3);
        }
        if (i == 2) {
            ZoomRecyclerView zoomRecyclerView = this.mRecyclerView;
            if (zoomRecyclerView != null) {
                zoomRecyclerView.setVisibility(0);
            }
            ComicReaderViewpager comicReaderViewpager = this.mViewPager;
            if (comicReaderViewpager != null) {
                comicReaderViewpager.setVisibility(8);
            }
        } else {
            ComicReaderViewpager comicReaderViewpager2 = this.mViewPager;
            if (comicReaderViewpager2 != null) {
                comicReaderViewpager2.setVisibility(0);
            }
            ZoomRecyclerView zoomRecyclerView2 = this.mRecyclerView;
            if (zoomRecyclerView2 != null) {
                zoomRecyclerView2.setVisibility(8);
            }
        }
        if (z) {
            postDelayed(new Cclass(), 500L);
        }
    }

    @Override // com.apk.k00
    /* renamed from: switch */
    public void mo1420switch(final String str, final int i, final int i2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.mTitleTView.m3638for(str, i, i2);
            return;
        }
        Handler handler = f9777protected;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.apk.v00
                @Override // java.lang.Runnable
                public final void run() {
                    ComicReadActivity.this.D(str, i, i2);
                }
            });
        }
    }

    @Override // com.apk.m1
    /* renamed from: synchronized */
    public void mo1686synchronized() {
    }

    public final void t() {
        if (ze.m3179private("SP_READ_FIRST_GUIDE_KEY", false)) {
            return;
        }
        lv lvVar = new lv();
        lvVar.f2940this = ov.NoAnimation;
        lvVar.f2923finally = true;
        lvVar.f2941throw = new Ccatch(this);
        ComicReadGuidePopupView comicReadGuidePopupView = new ComicReadGuidePopupView(this);
        if (comicReadGuidePopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicReadGuidePopupView instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicReadGuidePopupView instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicReadGuidePopupView instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        comicReadGuidePopupView.popupInfo = lvVar;
        comicReadGuidePopupView.show();
    }

    @Override // com.apk.k00
    /* renamed from: this */
    public void mo1421this() {
        if (k30.m1427catch().f3156extends) {
            mo1403abstract();
        } else if (this.f9782const.m715import() == 2) {
        } else {
            if (this.mMenuView.m3654native()) {
                this.mMenuView.m3651const();
            } else {
                this.f9782const.d();
            }
        }
    }

    @Override // com.apk.k00
    /* renamed from: throw */
    public void mo1422throw() {
        try {
            if (this.mMenuView.m3654native()) {
                this.mMenuView.m3651const();
            } else {
                this.mMenuView.m3657static();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.k00
    /* renamed from: throws */
    public void mo1423throws(final boolean z, int i) {
        this.f9788import = true;
        ComicReadMenuView comicReadMenuView = this.mMenuView;
        if (comicReadMenuView != null) {
            if (comicReadMenuView.m3654native()) {
                this.mMenuView.m3651const();
            }
            this.mMenuView.m3653import();
        }
        Handler handler = f9777protected;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.apk.s00
                @Override // java.lang.Runnable
                public final void run() {
                    ComicReadActivity.this.F(z);
                }
            }, i);
        }
    }

    @Override // com.apk.k00
    /* renamed from: try */
    public void mo1424try(String str) {
        f00 f00Var = this.f9782const;
        f00Var.f1195try = str;
        f00Var.f1175else = 0;
        f00Var.h();
        if (this.mMenuView.m3654native()) {
            this.mMenuView.m3651const();
        }
        u();
    }

    public final void u() {
        Handler handler;
        og ogVar = this.f9793public;
        if (ogVar == null || !ogVar.isShowing() || (handler = f9777protected) == null) {
            return;
        }
        handler.postDelayed(this.f9794return, 800L);
    }

    public final void v(long j) {
        Handler handler = f9777protected;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.apk.t00
                @Override // java.lang.Runnable
                public final void run() {
                    ComicReadActivity.this.A();
                }
            }, j);
        }
    }

    public final String w() {
        ComicCollectBean comicCollectBean;
        ComicBean comicBean = this.f9786final;
        String id = comicBean != null ? comicBean.getId() : "";
        return (!TextUtils.isEmpty(id) || (comicCollectBean = this.f9797super) == null) ? id : comicCollectBean.getCollectId();
    }

    @Override // com.apk.k00
    /* renamed from: while */
    public void mo1425while(boolean z) {
    }

    public final String x() {
        ComicCollectBean comicCollectBean;
        ComicBean comicBean = this.f9786final;
        String name = comicBean != null ? comicBean.getName() : "";
        return (!TextUtils.isEmpty(name) || (comicCollectBean = this.f9797super) == null) ? name : comicCollectBean.getName();
    }

    public final void y(Intent intent) {
        this.f9786final = (ComicBean) intent.getSerializableExtra("book");
        this.f9797super = (ComicCollectBean) intent.getSerializableExtra("collectBook");
        new b1().m141do(new Cbreak(intent.getStringExtra("chapterId")));
    }

    public final void z() {
        if (this.f9789interface == null) {
            this.f9789interface = new jf(this);
        }
        Window window = getWindow();
        this.f9789interface.m1310do();
        window.setFlags(1024, 1024);
        u0.m2664for(this, false, false, true);
    }
}
