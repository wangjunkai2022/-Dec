package com.apk;

import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.biquge.ebook.app.ui.activity.RewardVideoActivity;
import com.biquge.ebook.app.widget.RewardVideoAdView;
import com.manhua.ui.activity.ComicReadActivity;
import com.manhua.ui.widget.ComicReaderViewpager;
import com.manhua.ui.widget.ZoomRecyclerView;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicReadActivity.java */
/* loaded from: classes8.dex */
public class g10 implements RewardVideoAdView.Cif {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f1493do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicReadActivity f1494if;

    /* compiled from: ComicReadActivity.java */
    /* renamed from: com.apk.g10$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g10.this.f1494if.isFinishing()) {
                return;
            }
            g10 g10Var = g10.this;
            RewardVideoActivity.o(g10Var.f1494if, hf.COMIC, g10Var.f1493do ? 10215 : 10213);
        }
    }

    public g10(ComicReadActivity comicReadActivity, boolean z) {
        this.f1494if = comicReadActivity;
        this.f1493do = z;
    }

    @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
    /* renamed from: do  reason: not valid java name */
    public void mo905do() {
        f00 f00Var;
        if (f.m683catch()) {
            int i = 0;
            this.f1494if.s(false, this.f1493do);
            int m3174instanceof = ze.m3174instanceof("SP_VIDEO_AD_PRELOAD_MOODULE_B_COUNTDOWN_KEY", 5000);
            if (m3174instanceof <= 0 || (f00Var = this.f1494if.f9782const) == null || !f00Var.f()) {
                i = m3174instanceof;
            }
            this.f1494if.postDelayed(new Cdo(), i);
            return;
        }
        RewardVideoActivity.o(this.f1494if, hf.COMIC, this.f1493do ? 10215 : 10213);
    }

    @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
    /* renamed from: if  reason: not valid java name */
    public void mo906if() {
        FragmentManagerActivity.i(this.f1494if, ze.q(R.string.new_share_lb_title), "9");
    }

    @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
    public void onClose() {
        RewardVideoAdView rewardVideoAdView = this.f1494if.f9792private;
        if (rewardVideoAdView != null) {
            rewardVideoAdView.setVisibility(8);
        }
        k30.m1427catch().f3156extends = true;
        ComicReaderViewpager comicReaderViewpager = this.f1494if.mViewPager;
        if (comicReaderViewpager != null) {
            comicReaderViewpager.setCanScroll(false);
        }
        ZoomRecyclerView zoomRecyclerView = this.f1494if.mRecyclerView;
        if (zoomRecyclerView != null) {
            zoomRecyclerView.setScrollEnabled(false);
        }
    }
}
