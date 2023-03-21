package com.swl.gg.ggs;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cclass;
import com.apk.b1;
import com.apk.bg;
import com.apk.c1;
import com.apk.eg;
import com.apk.k40;
import com.apk.n40;
import com.apk.r40;
import com.apk.y;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.swl.gg.bean.SwlAdView;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes7.dex */
public class SwlAdBesttopView extends FrameLayout {
    public n40 mAdViewListener;
    public BesttopAdapter mAdapter;
    public FrameLayout mCloseView;
    public RecyclerView mRecyclerView;
    public String mZoneid;
    public int persize;

    /* loaded from: classes7.dex */
    public static class BesttopAdapter extends BaseQuickAdapter<SwlAdView, BaseViewHolder> {
        public final int width;

        public BesttopAdapter(@Nullable List<SwlAdView> list, int i) {
            super(R.layout.view_xyz_item_besttop_ad, list);
            this.width = eg.m614switch() / (i < 3 ? 3 : i);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(BaseViewHolder baseViewHolder, SwlAdView swlAdView) {
            baseViewHolder.itemView.setLayoutParams(new ViewGroup.LayoutParams(this.width, -2));
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.xyz_item_besttop_img);
            r40 r40Var = k40.f2467do;
            if (r40Var != null) {
                ((y) r40Var).m3052do(k40.m1442continue(), swlAdView.getImgurl(), imageView, null);
            }
            baseViewHolder.setText(R.id.xyz_item_besttop_title, swlAdView.getAdtitle());
        }
    }

    public SwlAdBesttopView(@NonNull Context context) {
        this(context, null);
    }

    private void init() {
        LayoutInflater.from(getContext()).inflate(R.layout.view_xyz_besttop_ad, this);
        this.mCloseView = (FrameLayout) findViewById(R.id.ad_view_besttop_close);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.ad_view_besttop_recyclerview);
        this.mRecyclerView = recyclerView;
        ze.m3165else(recyclerView);
        this.mRecyclerView.setHasFixedSize(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAds(int i, List<SwlAdView> list) {
        if (this.mRecyclerView != null) {
            try {
                if (this.mAdapter == null) {
                    this.mRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), i));
                    BesttopAdapter besttopAdapter = new BesttopAdapter(list, i);
                    this.mAdapter = besttopAdapter;
                    this.mRecyclerView.setAdapter(besttopAdapter);
                    this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.swl.gg.ggs.SwlAdBesttopView.3
                        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
                        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                            SwlAdView item = SwlAdBesttopView.this.mAdapter.getItem(i2);
                            if (item != null) {
                                String pkg = item.getPkg();
                                if (ze.G(pkg)) {
                                    SwlAdBesttopView.this.getContext().startActivity(SwlAdBesttopView.this.getContext().getPackageManager().getLaunchIntentForPackage(pkg));
                                    return;
                                }
                                String opentype = item.getOpentype();
                                if ("apk".equals(opentype)) {
                                    SwlAdHelper.setAdClick(SwlAdBesttopView.this.getContext(), "2", item.getAdurl(), item.getAdtitle());
                                } else if ("inner_page".equals(opentype)) {
                                    SwlAdHelper.openBrowser(SwlAdBesttopView.this.getContext(), item.getAdurl(), true);
                                } else if ("browser_page".equals(opentype)) {
                                    SwlAdHelper.openBrowser(SwlAdBesttopView.this.getContext(), item.getAdurl(), false);
                                }
                            }
                        }
                    });
                } else if (this.mAdapter != null) {
                    this.mAdapter.setNewData(list);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        n40 n40Var = this.mAdViewListener;
        if (n40Var != null) {
            ((Cclass.Cdo) n40Var).m362for();
        }
    }

    public void destroy() {
    }

    public void loadAd(final String str) {
        this.mZoneid = str;
        if (TextUtils.isEmpty(str)) {
            n40 n40Var = this.mAdViewListener;
            if (n40Var != null && ((Cclass.Cdo) n40Var) == null) {
                throw null;
            }
            return;
        }
        new b1().m141do(new c1<List<SwlAdView>>() { // from class: com.swl.gg.ggs.SwlAdBesttopView.2
            @Override // com.apk.c1
            public List<SwlAdView> doInBackground() {
                try {
                    List<SwlAdView> swlAdViews = SwlAdHelper.getSwlAdViews(str);
                    if (swlAdViews != null && swlAdViews.size() > 0) {
                        return ze.m3167final(swlAdViews, SwlAdBesttopView.this.persize);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return (List) super.doInBackground();
            }

            @Override // com.apk.c1
            public void onPostExecute(List<SwlAdView> list) {
                super.onPostExecute((AnonymousClass2) list);
                if (list == null) {
                    if (SwlAdBesttopView.this.mAdViewListener != null && ((Cclass.Cdo) SwlAdBesttopView.this.mAdViewListener) == null) {
                        throw null;
                    }
                    return;
                }
                SwlAdBesttopView swlAdBesttopView = SwlAdBesttopView.this;
                swlAdBesttopView.initAds(swlAdBesttopView.persize, list);
            }
        });
    }

    public void setAdViewListener(n40 n40Var) {
        this.mAdViewListener = n40Var;
    }

    public void setClose(boolean z) {
        if (z) {
            this.mCloseView.setVisibility(0);
            this.mCloseView.setOnClickListener(new bg() { // from class: com.swl.gg.ggs.SwlAdBesttopView.1
                @Override // com.apk.bg
                public void onNoDoubleClick(View view) {
                    if (SwlAdBesttopView.this.mAdViewListener != null) {
                        ((Cclass.Cdo) SwlAdBesttopView.this.mAdViewListener).m363if();
                    }
                }
            });
        }
    }

    public SwlAdBesttopView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.persize = 3;
        init();
    }
}
