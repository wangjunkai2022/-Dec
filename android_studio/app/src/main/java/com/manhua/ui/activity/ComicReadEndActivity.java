package com.manhua.ui.activity;

import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cfinally;
import com.apk.Cswitch;
import com.apk.a3;
import com.apk.f6;
import com.apk.hf;
import com.apk.p0;
import com.apk.q0;
import com.apk.r5;
import com.apk.u;
import com.apk.w0;
import com.apk.x4;
import com.apk.xw;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.adapter.ComicReadEndAdapter;
import com.manhua.data.bean.ComicBean;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class ComicReadEndActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public JSONObject f9827do;

    /* renamed from: for  reason: not valid java name */
    public z2 f9828for;

    /* renamed from: if  reason: not valid java name */
    public ComicReadEndAdapter f9829if;
    @BindView(R.id.adview_rectangle)
    public AdViewRectangle mAdViewRectangle;
    @BindView(R.id.item_book_city_blist_desc)
    public TextView mBookListInfoTxt;
    @BindView(R.id.booklist_layout)
    public LinearLayout mBookListLayout;
    @BindView(R.id.item_book_city_blist_image)
    public ImageView mBooklistImage;
    @BindView(R.id.item_book_city_blist_name)
    public TextView mBooklistTitleTxt;
    @BindView(R.id.bookreadend_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public final r5 f9830new = new Cdo();

    /* renamed from: com.manhua.ui.activity.ComicReadEndActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends r5 {
        public Cdo() {
        }

        @Override // com.apk.r5
        /* renamed from: catch */
        public void mo2230catch(JSONObject jSONObject, List<ComicBean> list) {
            if (jSONObject != null) {
                ComicReadEndActivity comicReadEndActivity = ComicReadEndActivity.this;
                comicReadEndActivity.f9827do = jSONObject;
                try {
                    comicReadEndActivity.mBookListLayout.setVisibility(0);
                    ComicReadEndActivity.this.mBooklistTitleTxt.setText(jSONObject.optString("Title"));
                    u.m2651native(jSONObject.optString("ImgUrl"), ComicReadEndActivity.this.mBooklistImage, R.drawable.shape_default_head_bg, false);
                    if (ComicReadEndActivity.this.mBookListInfoTxt != null) {
                        ComicReadEndActivity.this.mBookListInfoTxt.setText(jSONObject.optString("Description"));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (list != null) {
                try {
                    if (ComicReadEndActivity.this.f9829if != null) {
                        ComicReadEndActivity.this.f9829if.setNewData(ze.m3167final(list, 9));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_book_readend;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f9828for = new z2(this, this.f9830new);
        ComicReadEndAdapter comicReadEndAdapter = new ComicReadEndAdapter();
        this.f9829if = comicReadEndAdapter;
        this.mRecyclerView.setAdapter(comicReadEndAdapter);
        try {
            if (Cfinally.m797else().m803abstract()) {
                this.mAdViewRectangle.m3274for(this, null, "rectbdetail");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        z2 z2Var = this.f9828for;
        if (z2Var != null) {
            if (z2Var != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(p0.m1998catch());
                sb.append("/");
                sb.append("ver9/base");
                sb.append(w0.m2881import() ? "/mantuijian.html" : "/ladytuijian.html");
                x4.m2957import(sb.toString(), 43200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new a3(z2Var, "SP_HOST_SHUC_MH_KEY"));
            } else {
                throw null;
            }
        }
        Cswitch.m2557for().m2561try(this);
        this.f9829if.setOnItemClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, 3));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @Override // com.apk.f6
    public boolean isDarkFont() {
        return true;
    }

    @OnClick({R.id.read_end_back, R.id.read_end_search, R.id.book_readend_to_bookshelf_bt, R.id.book_readend_to_bookcity_bt, R.id.read_end_recomment, R.id.item_book_city_blist_image})
    public void menuClick(View view) {
        hf hfVar = hf.COMIC;
        switch (view.getId()) {
            case R.id.book_readend_to_bookcity_bt /* 2131296529 */:
                Intent intent = new Intent(this, MainActivity.class);
                intent.putExtra("type", 1002);
                intent.putExtra("source", hfVar);
                startActivity(intent);
                finish();
                return;
            case R.id.book_readend_to_bookshelf_bt /* 2131296530 */:
                Intent intent2 = new Intent(this, MainActivity.class);
                intent2.putExtra("type", 1001);
                intent2.putExtra("source", hfVar);
                startActivity(intent2);
                finish();
                return;
            case R.id.item_book_city_blist_image /* 2131296953 */:
                JSONObject jSONObject = this.f9827do;
                if (jSONObject != null) {
                    ComicListDetailActivity.k(this, jSONObject.optString("ListId"), this.f9827do.optString("Title"));
                    return;
                }
                return;
            case R.id.read_end_back /* 2131297358 */:
                finish();
                return;
            case R.id.read_end_recomment /* 2131297359 */:
                ComicRankListWeekActivity.i(this, ze.q(R.string.rank_category_recommend), q0.f3779this[!w0.m2881import() ? 1 : 0], "commend");
                return;
            case R.id.read_end_search /* 2131297360 */:
                BookSearchActivity.i(this, hfVar);
                return;
            default:
                return;
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Cswitch.m2557for().m2559if();
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
            this.mAdViewRectangle = null;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicBean item = this.f9829if.getItem(i);
        if (item == null || item.getItemType() != 1) {
            return;
        }
        ComicDetailActivity.n(this, item);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 25) {
            keyEvent.getRepeatCount();
            return true;
        } else if (i == 24) {
            if (keyEvent.getRepeatCount() == 0) {
                finish();
            }
            return true;
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
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = true;
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = false;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Cswitch.m2557for().f4608if = false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        Cswitch.m2557for().f4608if = true;
    }
}
