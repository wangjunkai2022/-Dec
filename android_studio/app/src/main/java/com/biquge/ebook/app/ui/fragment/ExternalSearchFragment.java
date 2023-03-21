package com.biquge.ebook.app.ui.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cfinal;
import com.apk.Cfinally;
import com.apk.Cgoto;
import com.apk.a4;
import com.apk.b1;
import com.apk.b4;
import com.apk.e40;
import com.apk.g6;
import com.apk.kb;
import com.apk.lb;
import com.apk.mb;
import com.apk.nb;
import com.apk.nz;
import com.apk.ow;
import com.apk.tt;
import com.apk.u5;
import com.apk.v3;
import com.apk.x4;
import com.apk.xw;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.adapter.SearchFastResultAdapter;
import com.biquge.ebook.app.bean.ExternalWebSite;
import com.biquge.ebook.app.bean.FastSearchWord;
import com.biquge.ebook.app.ui.webread.ui.WebSiteSearchFragment;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
import com.biquge.ebook.app.widget.ClearEditText;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.flexbox.FlexboxLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ExternalSearchFragment extends g6 implements TextWatcher, TextView.OnEditorActionListener {

    /* renamed from: do  reason: not valid java name */
    public SearchFastResultAdapter f7443do;
    @BindView(R.id.search_fast_result_layout)
    public FrameLayout fastLayout;
    @BindView(R.id.search_fast_result_rv)
    public RecyclerView fastRecyclerView;

    /* renamed from: for  reason: not valid java name */
    public final u5 f7444for = new Cdo();

    /* renamed from: if  reason: not valid java name */
    public v3 f7445if;
    @BindView(R.id.adview_rectangle)
    public AdViewRectangle mAdViewRectangle;
    @BindView(R.id.search_history_flexbox_layout)
    public FlexboxLayout mHistoryFlexboxLayout;
    @BindView(R.id.search_input_et)
    public ClearEditText mSearchET;
    @BindView(R.id.web_search_result_layout)
    public WebSearchResultLayout mWebResultLayout;
    @BindView(R.id.fragment_web_search_flexbox_layout)
    public FlexboxLayout mWebSiteFlexLayout;

    /* renamed from: new  reason: not valid java name */
    public Cfinal f7446new;

    /* renamed from: com.biquge.ebook.app.ui.fragment.ExternalSearchFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: const */
        public void mo2673const(ExternalWebSite externalWebSite) {
            if (externalWebSite.getItems() != null) {
                ExternalSearchFragment externalSearchFragment = ExternalSearchFragment.this;
                List<ExternalWebSite.WebSiteBean> items = externalWebSite.getItems();
                externalSearchFragment.mWebSiteFlexLayout.removeAllViews();
                LayoutInflater from = LayoutInflater.from(externalSearchFragment.getSupportActivity());
                for (ExternalWebSite.WebSiteBean webSiteBean : items) {
                    try {
                        View inflate = from.inflate(R.layout.item_search_recommend_view, (ViewGroup) null);
                        TextView textView = (TextView) inflate.findViewById(R.id.item_search_recommend_name_txt);
                        textView.setOnClickListener(new kb(externalSearchFragment, webSiteBean));
                        textView.setText(webSiteBean.getName());
                        textView.setBackgroundColor(Color.parseColor("#10000000"));
                        textView.setTextColor(Color.parseColor("#191817"));
                        externalSearchFragment.mWebSiteFlexLayout.addView(inflate);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ExternalSearchFragment.this.mWebSiteFlexLayout.setVisibility(0);
            }
        }

        @Override // com.apk.u5
        /* renamed from: final */
        public void mo2676final(List<FastSearchWord> list) {
            SearchFastResultAdapter searchFastResultAdapter = ExternalSearchFragment.this.f7443do;
            if (searchFastResultAdapter != null) {
                searchFastResultAdapter.setNewData(list);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.ExternalSearchFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.OnItemClickListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            FastSearchWord item;
            SearchFastResultAdapter searchFastResultAdapter = ExternalSearchFragment.this.f7443do;
            if (searchFastResultAdapter == null || (item = searchFastResultAdapter.getItem(i)) == null) {
                return;
            }
            ExternalSearchFragment.this.mSearchET.setText(item.getWord());
            ClearEditText clearEditText = ExternalSearchFragment.this.mSearchET;
            clearEditText.setSelection(clearEditText.length());
            ExternalSearchFragment.this.h();
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3376synchronized(ExternalSearchFragment externalSearchFragment, List list) {
        if (externalSearchFragment != null) {
            try {
                if (externalSearchFragment.mHistoryFlexboxLayout != null) {
                    externalSearchFragment.mHistoryFlexboxLayout.removeAllViews();
                }
                LayoutInflater from = LayoutInflater.from(externalSearchFragment.getSupportActivity());
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    View inflate = from.inflate(R.layout.item_search_recommend_view, (ViewGroup) null);
                    TextView textView = (TextView) inflate.findViewById(R.id.item_search_recommend_name_txt);
                    textView.setText(str);
                    textView.setOnClickListener(new mb(externalSearchFragment, str));
                    externalSearchFragment.mHistoryFlexboxLayout.addView(inflate);
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public boolean a() {
        try {
            if (this.mWebResultLayout != null && this.mWebResultLayout.getVisibility() == 0) {
                if (this.mSearchET != null) {
                    this.mSearchET.setText("");
                }
                return true;
            } else if (this.fastLayout != null && this.fastLayout.getVisibility() == 0) {
                this.fastLayout.setVisibility(8);
                return true;
            } else {
                getSupportActivity().finish();
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String trim = editable.toString().trim();
        if (trim.length() == 0) {
            this.mWebResultLayout.m3454do(true);
            if (this.fastLayout.getVisibility() != 8) {
                this.fastLayout.setVisibility(8);
                SearchFastResultAdapter searchFastResultAdapter = this.f7443do;
                if (searchFastResultAdapter == null || searchFastResultAdapter.getItemCount() <= 0) {
                    return;
                }
                this.f7443do.setNewData(null);
                return;
            }
            return;
        }
        if (this.f7443do == null) {
            SearchFastResultAdapter searchFastResultAdapter2 = new SearchFastResultAdapter();
            this.f7443do = searchFastResultAdapter2;
            this.fastRecyclerView.setAdapter(searchFastResultAdapter2);
            this.f7443do.setOnItemClickListener(new Cif());
        }
        SearchFastResultAdapter searchFastResultAdapter3 = this.f7443do;
        if (searchFastResultAdapter3 != null) {
            searchFastResultAdapter3.f6372do = trim;
        }
        if (ze.m3179private("SP_WEB_SEARCH_FAST_OPEN_KEY", false)) {
            if (this.fastLayout.getVisibility() != 8) {
                this.fastLayout.setVisibility(8);
                SearchFastResultAdapter searchFastResultAdapter4 = this.f7443do;
                if (searchFastResultAdapter4 == null || searchFastResultAdapter4.getItemCount() <= 0) {
                    return;
                }
                this.f7443do.setNewData(null);
                return;
            }
            return;
        }
        if (this.f7445if != null) {
            String m2620do = tt.m2620do("SP_WEB_SEARCH_FAST_URL_KEY", "");
            if (TextUtils.isEmpty(m2620do)) {
                String m2620do2 = tt.m2620do("SP_WEB_FAST_SEARCH_HOST_KEY", "");
                if (TextUtils.isEmpty(m2620do2)) {
                    m2620do2 = "https://souxs.leeyegy.com";
                }
                m2620do = Cgoto.m989case(m2620do2, "/search.aspx?key={keywords}&page={page}&siteid=app3&lx=1");
            }
            String replace = m2620do.replace("{keywords}", trim).replace("{page}", String.valueOf(1));
            v3 v3Var = this.f7445if;
            if (v3Var != null && !TextUtils.isEmpty(trim)) {
                x4.m2957import(replace, 1800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new a4(v3Var));
            }
        }
        if (this.fastLayout.getVisibility() != 0) {
            this.fastLayout.setVisibility(0);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final void f(boolean z) {
        if (z) {
            Cfinal cfinal = this.f7446new;
            if (cfinal != null) {
                cfinal.f1321if = false;
            }
            AdViewRectangle adViewRectangle = this.mAdViewRectangle;
            if (adViewRectangle != null) {
                adViewRectangle.f6316break = false;
                return;
            }
            return;
        }
        Cfinal cfinal2 = this.f7446new;
        if (cfinal2 != null) {
            cfinal2.f1321if = true;
        }
        AdViewRectangle adViewRectangle2 = this.mAdViewRectangle;
        if (adViewRectangle2 != null) {
            adViewRectangle2.f6316break = true;
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_external_search;
    }

    public final void h() {
        String m1022transient = Cgoto.m1022transient(this.mSearchET);
        if (TextUtils.isEmpty(m1022transient)) {
            return;
        }
        this.mSearchET.clearFocus();
        ow.m1984if(this.mSearchET);
        if (this.fastLayout.getVisibility() != 8) {
            this.fastLayout.setVisibility(8);
        }
        SearchFastResultAdapter searchFastResultAdapter = this.f7443do;
        if (searchFastResultAdapter != null && searchFastResultAdapter.getItemCount() > 0) {
            this.f7443do.setNewData(null);
        }
        WebSearchResultLayout webSearchResultLayout = this.mWebResultLayout;
        FragmentManager fragmentManager = getFragmentManager();
        webSearchResultLayout.m3454do(false);
        webSearchResultLayout.f7958for = m1022transient;
        webSearchResultLayout.f7964try = new ArrayList();
        int i = 0;
        while (true) {
            String[] strArr = webSearchResultLayout.f7960if;
            if (i >= strArr.length) {
                break;
            }
            int i2 = i + 1;
            String str = webSearchResultLayout.f7955do[i];
            String replace = strArr[i].replace("{keywords}", webSearchResultLayout.f7958for);
            String str2 = webSearchResultLayout.f7958for;
            WebSiteSearchFragment webSiteSearchFragment = new WebSiteSearchFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("WEBVIEW_INDEX_KEY", i);
            bundle.putInt("WEBVIEW_SOURCE_KEY", i2);
            bundle.putString("WEBVIEW_NAME_KEY", str);
            bundle.putString("WEBVIEW_URL_KEY", replace);
            bundle.putString("WEBVIEW_SEARCH_KEY_KEY", str2);
            webSiteSearchFragment.setArguments(bundle);
            webSiteSearchFragment.f7839case = webSearchResultLayout.f7962super;
            webSearchResultLayout.f7964try.add(webSiteSearchFragment);
            i = i2;
        }
        webSearchResultLayout.mIndicator.setAdapter(new nz(webSearchResultLayout.getContext(), webSearchResultLayout.f7955do, 0));
        new e40(webSearchResultLayout.mIndicator, webSearchResultLayout.mViewPager).m536do(new y30(fragmentManager, webSearchResultLayout.f7955do, webSearchResultLayout.f7964try));
        webSearchResultLayout.mIndicator.mo145if(0, false);
        webSearchResultLayout.mViewPager.setCurrentItem(0, false);
        webSearchResultLayout.setVisibility(0);
        if (Pattern.compile(".php|.aspx|.asp|.jsp|.htm|.html|.com|.com.cn|.edu|.gov|.net|.org|.info|.pro|.biz|.top|.cn|.vip|.cc|.wang|.me|.tv|.tw|.net.cn|.org.cn|.la|.xin|.xyz|.shop|.site|.club|.fun|.online|.link|.wiki|.store|.tech|.pub|.live|.name|.ltd|.gov.cn                    .PHP|.ASPX|.ASP|.JSP|.HTM|.HTML|.COM|.COM.CN|.EDU|.GOV|.NET|.ORG|.INFO|.PRO|.BIZ|.TOP|.CN|.VIP|.CC|.WANG|.ME|.TV|.TW|.NET.CN|.ORG.CN|.LA|.XIN|.XYZ|.SHOP|.SITE|.CLUB|.FUN|.ONLINE|.LINK|.WIKI|.STORE|.TECH|.PUB|.LIVE|.NAME|.LTD|.GOV.CN").matcher(m1022transient).find()) {
            return;
        }
        new b1().m141do(new lb(this, m1022transient));
    }

    @Override // com.apk.g6
    public void initData() {
        v3 v3Var = new v3(getSupportActivity(), this.f7444for);
        this.f7445if = v3Var;
        if (v3Var != null) {
            StringBuilder sb = new StringBuilder();
            String m2620do = tt.m2620do("SP_WEB_SEARCH_HOST_KEY", "");
            if (TextUtils.isEmpty(m2620do)) {
                m2620do = "https://searchapi.apptianwangxing.com";
            }
            x4.m2957import(Cgoto.m991class(sb, m2620do, "/api/v1/Rule/GetSites?siteType=2"), 604800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new b4(v3Var));
        }
        new b1().m141do(new lb(this, null));
        if (Cfinally.m797else().m830while()) {
            Cfinal cfinal = new Cfinal();
            this.f7446new = cfinal;
            cfinal.m789if(getSupportActivity(), (ViewStub) findViewById(R.id.native_list_adview_layout));
        }
        try {
            Cfinally m797else = Cfinally.m797else();
            boolean z = false;
            if (m797else.f1363public != null && m797else.m808final() && Cfinally.m796do(m797else.f1363public, "rectzwsearch") != null) {
                z = true;
            }
            if (z) {
                this.mAdViewRectangle.m3274for(getSupportActivity(), new nb(this), "rectzwsearch");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.fastRecyclerView.setHasFixedSize(true);
        this.fastRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.fastRecyclerView);
        ze.m3177new(getSupportActivity(), this.fastRecyclerView);
    }

    @Override // com.apk.g6
    public void initView() {
        this.mSearchET.addTextChangedListener(this);
        this.mSearchET.setOnEditorActionListener(this);
        this.mWebResultLayout.setSearchEt(this.mSearchET);
    }

    @OnClick({R.id.txt_download_back_view, R.id.search_gosearch_txt, R.id.fragment_txt_search_clear_history})
    public void menuClick(View view) {
        int id = view.getId();
        if (id != R.id.fragment_txt_search_clear_history) {
            if (id == R.id.search_gosearch_txt) {
                h();
                return;
            } else if (id != R.id.txt_download_back_view) {
                return;
            } else {
                a();
                return;
            }
        }
        try {
            tt.f4763do.putString("txt_download_search_history_key", "");
            if (this.mHistoryFlexboxLayout != null) {
                this.mHistoryFlexboxLayout.removeAllViews();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Cfinal cfinal = this.f7446new;
        if (cfinal != null) {
            cfinal.m790new();
            this.f7446new = null;
        }
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
            this.mAdViewRectangle = null;
        }
        ClearEditText clearEditText = this.mSearchET;
        if (clearEditText != null) {
            clearEditText.removeTextChangedListener(this);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        h();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        f(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        f(true);
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        f(z);
    }
}
