package com.biquge.ebook.app.ui.webread.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.dg;
import com.apk.eg;
import com.apk.g1;
import com.apk.h40;
import com.apk.i40;
import com.apk.kd;
import com.apk.lv;
import com.apk.ov;
import com.apk.ow;
import com.apk.se;
import com.apk.te;
import com.apk.tt;
import com.apk.ue;
import com.apk.ve;
import com.apk.we;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ui.view.ReadLinearLayoutManager;
import com.biquge.ebook.app.ui.view.SlideRecyclerView;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.ui.WebSiteSearchFragment;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
import com.biquge.ebook.app.widget.browse.IndeterminateProgressBar;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class WebSearchResultLayout extends FrameLayout implements ViewPager.OnPageChangeListener {

    /* renamed from: break  reason: not valid java name */
    public int f7950break;

    /* renamed from: case  reason: not valid java name */
    public Ctry f7951case;

    /* renamed from: catch  reason: not valid java name */
    public final List<WebBook> f7952catch;

    /* renamed from: class  reason: not valid java name */
    public int f7953class;

    /* renamed from: const  reason: not valid java name */
    public FrameLayout.LayoutParams f7954const;

    /* renamed from: do  reason: not valid java name */
    public String[] f7955do;

    /* renamed from: else  reason: not valid java name */
    public EditText f7956else;

    /* renamed from: final  reason: not valid java name */
    public boolean f7957final;

    /* renamed from: for  reason: not valid java name */
    public String f7958for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f7959goto;

    /* renamed from: if  reason: not valid java name */
    public String[] f7960if;
    @BindView(R.id.dialog_website_bg)
    public View mBgView;
    @BindView(R.id.bottom_website_dialog_hide)
    public TextView mHideBtn;
    @BindView(R.id.bottom_website_dialog_hide_layout)
    public FrameLayout mHideLayout;
    @BindView(R.id.bottom_website_jiexi_loading)
    public TextView mHideTipView;
    @BindView(R.id.webread_indicator)
    public ScrollIndicatorView mIndicator;
    @BindView(R.id.web_search_platfrom_icon)
    public ImageView mPlatformIcon;
    @BindView(R.id.web_search_platfrom_name)
    public TextView mPlatformName;
    @BindView(R.id.view_webread_site_rv)
    public SlideRecyclerView mRecyclerView;
    @BindView(R.id.web_search_result_num)
    public TextView mSearchResultTv;
    @BindView(R.id.bottom_website_dialog_show)
    public TextView mShowBtn;
    @BindView(R.id.webread_viewpager)
    public SViewPager mViewPager;
    @BindView(R.id.view_webread_site_layout)
    public LinearLayout mWebSiteLayout;

    /* renamed from: new  reason: not valid java name */
    public int f7961new;

    /* renamed from: super  reason: not valid java name */
    public final kd f7962super;

    /* renamed from: this  reason: not valid java name */
    public int f7963this;

    /* renamed from: try  reason: not valid java name */
    public List<Fragment> f7964try;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Animator.AnimatorListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f7965do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f7967if;

        public Cdo(boolean z, boolean z2) {
            this.f7965do = z;
            this.f7967if = z2;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f7965do && !this.f7967if) {
                WebSearchResultLayout.this.mRecyclerView.setVisibility(0);
            }
            if (this.f7965do) {
                WebSearchResultLayout.this.mRecyclerView.setCallScrollDown(true);
            }
            if (this.f7967if) {
                WebSearchResultLayout.this.mRecyclerView.setCallScrollUp(true);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f7965do || this.f7967if) {
                return;
            }
            WebSearchResultLayout.this.mRecyclerView.setVisibility(4);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements kd {
        public Cfor() {
        }

        /* renamed from: do  reason: not valid java name */
        public void m3461do(int i, List<WebBook> list, int i2) {
            WebSearchResultLayout webSearchResultLayout = WebSearchResultLayout.this;
            if (webSearchResultLayout.f7951case != null) {
                if (list != null) {
                    webSearchResultLayout.f7952catch.addAll(list);
                    WebSearchResultLayout.this.f7951case.notifyDataSetChanged();
                    try {
                        if (WebSearchResultLayout.this.f7964try != null && WebSearchResultLayout.this.f7964try.size() > i) {
                            WebSearchResultLayout.this.mSearchResultTv.setText(ze.r(R.string.web_search_result_txt, Integer.valueOf(((WebSiteSearchFragment) WebSearchResultLayout.this.f7964try.get(i)).f7850this)));
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (i2 == 1) {
                    WebSearchResultLayout.this.f7951case.loadMoreComplete();
                } else if (i2 == 2) {
                    WebSearchResultLayout.this.f7951case.loadMoreEnd();
                }
            }
        }

        /* renamed from: if  reason: not valid java name */
        public void m3462if(int i, List<WebBook> list, boolean z) {
            if (WebSearchResultLayout.this.getVisibility() == 0 && i == WebSearchResultLayout.this.mViewPager.getCurrentItem()) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(list);
                WebSearchResultLayout.this.m3460try(i, arrayList);
            }
            if (list == null || list.size() <= 0) {
                return;
            }
            if (z || list.size() >= 4) {
                WebSearchResultLayout webSearchResultLayout = WebSearchResultLayout.this;
                if (!webSearchResultLayout.f7957final || webSearchResultLayout.f7963this == 0) {
                    return;
                }
                webSearchResultLayout.f7957final = false;
                if (ze.m3179private("SP_SHOW_WEB_SEARCH_POPUP_KEY", true)) {
                    tt.f4763do.putBoolean("SP_SHOW_WEB_SEARCH_POPUP_KEY", false);
                    List<WebBook> list2 = WebSearchResultLayout.this.f7952catch;
                    WebBook webBook = (list2 == null || list2.size() <= 0) ? null : WebSearchResultLayout.this.f7952catch.get(0);
                    WebSearchResultLayout.this.getContext();
                    lv lvVar = new lv();
                    lvVar.f2940this = ov.NoAnimation;
                    WebSearchGuidePopupView webSearchGuidePopupView = new WebSearchGuidePopupView(WebSearchResultLayout.this.getContext(), webBook);
                    if (webSearchGuidePopupView instanceof CenterPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (webSearchGuidePopupView instanceof BottomPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (webSearchGuidePopupView instanceof AttachPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (webSearchGuidePopupView instanceof ImageViewerPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else {
                        lvVar.f2917continue = zu.f6266try;
                    }
                    webSearchGuidePopupView.popupInfo = lvVar;
                    webSearchGuidePopupView.show();
                }
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends AnimatorListenerAdapter {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f7969do;

        public Cif(boolean z) {
            this.f7969do = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            SlideRecyclerView slideRecyclerView = WebSearchResultLayout.this.mRecyclerView;
            if (slideRecyclerView != null) {
                slideRecyclerView.setVisibility(0);
            }
            if (this.f7969do || WebSearchResultLayout.this.mBgView.getVisibility() == 8) {
                return;
            }
            WebSearchResultLayout.this.mBgView.setVisibility(8);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            SlideRecyclerView slideRecyclerView = WebSearchResultLayout.this.mRecyclerView;
            if (slideRecyclerView != null) {
                slideRecyclerView.setVisibility(4);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements g1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f7971do;

        public Cnew(int i) {
            this.f7971do = i;
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            int currentItem = WebSearchResultLayout.this.mViewPager.getCurrentItem();
            int i = this.f7971do;
            if (currentItem == i) {
                WebSearchResultLayout.this.m3460try(i, null);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry extends BaseQuickAdapter<WebBook, BaseViewHolder> {
        public Ctry(List<WebBook> list) {
            super(R.layout.view_webread_sites_item_layout, list);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, WebBook webBook) {
            WebBook webBook2 = webBook;
            try {
                TextView textView = (TextView) baseViewHolder.getView(R.id.webread_item_title_tv);
                textView.setText(webBook2.getName());
                textView.setMaxWidth((int) (eg.m614switch() * 0.55d));
                baseViewHolder.setText(R.id.webread_item_author_tv, ze.r(R.string.author_placeholder_txt, webBook2.getAuthor()));
                baseViewHolder.setText(R.id.webread_item_url_tv, webBook2.getUrl());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public WebSearchResultLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7952catch = new ArrayList();
        this.f7957final = true;
        this.f7962super = new Cfor();
        LayoutInflater.from(getContext()).inflate(R.layout.view_web_search_result_layout, this);
        ButterKnife.bind(this);
        try {
            String m2620do = tt.m2620do("SP_EXTERNAL_SITES_KEY", "[{\"srh_name\":\"搜狗\",\"srh_url\":\"https://wap.sogou.com/web/searchList.jsp?keyword={keywords}&prs=8&rfh=1\"},{\"srh_name\":\"百度\",\"srh_url\":\"https://m.baidu.com/s?word={keywords}\"},{\"srh_name\":\"必应\",\"srh_url\":\"https://www.bing.com/search?q={keywords}\"},{\"srh_name\":\"头条\",\"srh_url\":\"https://m.toutiao.com/search?keyword={keywords}&source=input&pd=synthesis&original_source=\"}]");
            if (!TextUtils.isEmpty(m2620do)) {
                JSONArray jSONArray = new JSONArray(m2620do);
                this.f7955do = new String[jSONArray.length()];
                this.f7960if = new String[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    this.f7955do[i] = optJSONObject.optString("srh_name");
                    this.f7960if[i] = optJSONObject.optString("srh_url");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mViewPager.setCanScroll(true);
        this.mViewPager.addOnPageChangeListener(this);
        this.mViewPager.setOffscreenPageLimit(this.f7960if.length);
        this.mIndicator.setScrollBar(new se(this, getContext(), R.drawable.shape_indicator_tab_bg_bt, h40.Cdo.CENTENT_BACKGROUND));
        ScrollIndicatorView scrollIndicatorView = this.mIndicator;
        i40 i40Var = new i40();
        i40Var.m1181for(R.color.color_ffffff, R.color.color_ffffff);
        i40Var.m1183new(12.5f, 12.5f);
        scrollIndicatorView.setOnTransitionListener(i40Var);
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new ReadLinearLayoutManager(getContext()));
        ze.m3165else(this.mRecyclerView);
        this.mWebSiteLayout.getViewTreeObserver().addOnGlobalLayoutListener(new te(this));
        this.mViewPager.post(new Runnable() { // from class: com.apk.ee
            @Override // java.lang.Runnable
            public final void run() {
                WebSearchResultLayout.this.m3456for();
            }
        });
        this.mSearchResultTv.setText(ze.r(R.string.web_search_result_txt, 0));
        this.mRecyclerView.setSlideCallback(new ue(this));
        Ctry ctry = new Ctry(this.f7952catch);
        this.f7951case = ctry;
        this.mRecyclerView.setAdapter(ctry);
        this.f7951case.setOnItemClickListener(new ve(this));
        this.f7951case.setOnLoadMoreListener(new we(this), this.mRecyclerView);
    }

    private int getIndexSize() {
        int i = 0;
        try {
            int currentItem = this.mViewPager.getCurrentItem();
            if (this.f7964try != null && this.f7964try.size() > currentItem) {
                i = ((WebSiteSearchFragment) this.f7964try.get(currentItem)).f7850this;
            }
        } catch (Exception e) {
            try {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        }
        if (i > 4) {
            return 4;
        }
        return i;
    }

    private void setDialogBgAlpha(boolean z) {
        float f = 0.0f;
        float f2 = 1.0f;
        if (!z) {
            f = 1.0f;
            f2 = 0.0f;
        } else if (this.mBgView.getVisibility() == 0) {
            return;
        } else {
            this.mBgView.setVisibility(0);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mBgView, "alpha", f, f2);
        ofFloat.setDuration(200L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addListener(new Cif(z));
        ofFloat.start();
    }

    private void setSiteDialog(boolean z) {
        List<Fragment> list = this.f7964try;
        if (list != null) {
            Iterator<Fragment> it = list.iterator();
            while (it.hasNext()) {
                View view = ((WebSiteSearchFragment) it.next()).mBgView;
                if (view != null) {
                    view.setVisibility(z ? 0 : 8);
                }
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final void m3453case(int i, int i2, boolean z, boolean z2) {
        LinearLayout linearLayout = this.mWebSiteLayout;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(linearLayout, "height", linearLayout.getHeight(), i);
        ofInt.setRepeatCount(0);
        ofInt.setDuration(i2);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.apk.de
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebSearchResultLayout.this.m3459new(valueAnimator);
            }
        });
        ofInt.addListener(new Cdo(z, z2));
        ofInt.start();
    }

    /* renamed from: do  reason: not valid java name */
    public void m3454do(boolean z) {
        if (z) {
            try {
                setVisibility(8);
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        try {
            if (this.f7964try != null && this.f7964try.size() > 0) {
                Iterator<Fragment> it = this.f7964try.iterator();
                while (it.hasNext()) {
                    WebSiteSearchFragment webSiteSearchFragment = (WebSiteSearchFragment) it.next();
                    if (webSiteSearchFragment != null) {
                        ze.m3181public(webSiteSearchFragment.mWebView.getWebView());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.f7964try != null) {
            this.f7964try.clear();
        }
        if (this.f7952catch != null) {
            this.f7952catch.clear();
        }
        if (this.f7951case != null) {
            this.f7951case.notifyDataSetChanged();
        }
        this.f7959goto = false;
        this.f7950break = 0;
        m3457goto(0, 0, false, false);
        m3460try(0, null);
    }

    /* renamed from: else  reason: not valid java name */
    public final void m3455else() {
        int indexSize = getIndexSize();
        m3457goto(indexSize, Math.abs(indexSize - this.f7963this) * 65, false, false);
    }

    /* renamed from: for  reason: not valid java name */
    public /* synthetic */ void m3456for() {
        int height = (this.mViewPager.getHeight() - this.f7961new) / eg.m587catch(70.0f);
        this.f7953class = height;
        if (height > 10) {
            this.f7953class = 10;
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m3457goto(int i, int i2, boolean z, boolean z2) {
        int i3 = this.f7950break;
        if (i3 == 0 || i >= i3) {
            this.f7950break = i;
            m3453case(this.f7961new + (eg.m587catch(70.0f) * i), i2, z, z2);
            this.f7963this = i;
            setDialogBgAlpha(true);
            this.mHideLayout.setVisibility(0);
            this.mShowBtn.setVisibility(4);
            setSiteDialog(true);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3458if() {
        m3453case(this.f7961new - eg.m587catch(40.0f), this.f7963this * 60, false, false);
        setDialogBgAlpha(false);
        this.f7963this = 0;
        this.mHideLayout.setVisibility(8);
        this.mShowBtn.setVisibility(0);
        setSiteDialog(false);
        this.mRecyclerView.scrollToPosition(0);
        this.mRecyclerView.setCallScrollUp(true);
        this.f7950break = 0;
        if (ze.m3179private("SP_SHOW_WEB_SCALING_POPUP_KEY", true)) {
            tt.f4763do.putBoolean("SP_SHOW_WEB_SCALING_POPUP_KEY", false);
            getContext();
            lv lvVar = new lv();
            lvVar.f2940this = ov.NoAnimation;
            WebSearchScalingGuidePopupView webSearchScalingGuidePopupView = new WebSearchScalingGuidePopupView(getContext());
            if (webSearchScalingGuidePopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webSearchScalingGuidePopupView instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webSearchScalingGuidePopupView instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (webSearchScalingGuidePopupView instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else {
                lvVar.f2917continue = zu.f6266try;
            }
            webSearchScalingGuidePopupView.popupInfo = lvVar;
            webSearchScalingGuidePopupView.show();
        }
    }

    @OnClick({R.id.bottom_website_dialog_show_layout, R.id.bottom_website_dialog_hide})
    public void menuClick(View view) {
        if (view.getId() == R.id.bottom_website_dialog_show_layout) {
            if (this.mShowBtn.getVisibility() == 0) {
                this.f7959goto = false;
                m3455else();
            }
        } else if (view.getId() == R.id.bottom_website_dialog_hide) {
            this.f7959goto = true;
            m3458if();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public /* synthetic */ void m3459new(ValueAnimator valueAnimator) {
        try {
            if (this.f7954const == null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mWebSiteLayout.getLayoutParams();
                this.f7954const = layoutParams;
                layoutParams.width = -1;
            }
            this.f7954const.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            this.mWebSiteLayout.setLayoutParams(this.f7954const);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.f7950break = 0;
        Ctry ctry = this.f7951case;
        if (ctry != null) {
            ctry.closeLoadAnimation();
            List<WebBook> list = this.f7952catch;
            if (list != null) {
                list.clear();
            }
            Ctry ctry2 = this.f7951case;
            if (ctry2 != null) {
                ctry2.notifyDataSetChanged();
            }
        }
        this.mRecyclerView.setCallScrollUp(true);
        if (m3460try(i, null)) {
            try {
                this.mHideBtn.setVisibility(0);
                this.mHideTipView.setVisibility(4);
                if (this.f7964try != null && this.f7964try.size() > i) {
                    final WebSiteSearchFragment webSiteSearchFragment = (WebSiteSearchFragment) this.f7964try.get(i);
                    final Cnew cnew = new Cnew(i);
                    IndeterminateProgressBar indeterminateProgressBar = webSiteSearchFragment.mIndeterminateView;
                    if (indeterminateProgressBar != null) {
                        Message obtainMessage = indeterminateProgressBar.f8298continue.obtainMessage();
                        obtainMessage.what = 101;
                        indeterminateProgressBar.f8298continue.sendMessage(obtainMessage);
                        indeterminateProgressBar.setVisibility(0);
                        webSiteSearchFragment.getSupportActivity().postDelayed(new Runnable() { // from class: com.apk.ud
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSiteSearchFragment.this.m3427synchronized(cnew);
                            }
                        }, dg.f857do.nextInt(500) + 500);
                    }
                }
                this.mSearchResultTv.setText(ze.q(R.string.web_search_load_refresh_txt));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f7951case.loadMoreComplete();
        try {
            if (this.f7956else != null) {
                this.f7956else.clearFocus();
            }
            ow.m1984if(this.f7956else);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setSearchEt(EditText editText) {
        if (editText != null) {
            this.f7956else = editText;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: try  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3460try(int r8, java.util.List<com.biquge.ebook.app.ui.webread.entity.WebBook> r9) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout.m3460try(int, java.util.List):boolean");
    }
}
