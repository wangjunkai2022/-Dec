package com.biquge.ebook.app.ui.book;

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
import com.apk.f6;
import com.apk.hf;
import com.apk.j4;
import com.apk.p0;
import com.apk.u;
import com.apk.u5;
import com.apk.v3;
import com.apk.w0;
import com.apk.x4;
import com.apk.xw;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.adapter.BookReadEndAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.biquge.ebook.app.ui.activity.RankListWeekActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class BookReadEndActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public boolean f6900do;

    /* renamed from: for  reason: not valid java name */
    public JSONObject f6901for;

    /* renamed from: if  reason: not valid java name */
    public BookReadEndAdapter f6902if;
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
    public v3 f6903new;

    /* renamed from: try  reason: not valid java name */
    public final u5 f6904try = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.book.BookReadEndActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: class */
        public void mo2672class(JSONObject jSONObject, List<Book> list) {
            if (jSONObject != null) {
                BookReadEndActivity bookReadEndActivity = BookReadEndActivity.this;
                bookReadEndActivity.f6901for = jSONObject;
                try {
                    bookReadEndActivity.mBooklistTitleTxt.setText(jSONObject.optString("Title"));
                    u.m2659throw(jSONObject.optString("ImgUrl"), BookReadEndActivity.this.mBooklistImage, false);
                    if (BookReadEndActivity.this.mBookListInfoTxt != null) {
                        BookReadEndActivity.this.mBookListInfoTxt.setText(jSONObject.optString("Description"));
                    }
                    BookReadEndActivity.this.mBookListLayout.setVisibility(0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (list != null) {
                try {
                    if (BookReadEndActivity.this.f6902if != null) {
                        BookReadEndActivity.this.f6902if.setNewData(ze.m3167final(list, 9));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        Intent intent = getIntent();
        boolean z = false;
        z = (intent.getBooleanExtra("isNight", false) || intent.getBooleanExtra("isEye", false)) ? true : true;
        this.f6900do = z;
        return z ? R.layout.activity_book_readend_night : R.layout.activity_book_readend;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6903new = new v3(this, this.f6904try);
        BookReadEndAdapter bookReadEndAdapter = new BookReadEndAdapter(this.f6900do);
        this.f6902if = bookReadEndAdapter;
        this.mRecyclerView.setAdapter(bookReadEndAdapter);
        try {
            if (Cfinally.m797else().m803abstract()) {
                this.mAdViewRectangle.m3274for(this, null, "rectbdetail");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        v3 v3Var = this.f6903new;
        if (v3Var != null) {
            if (v3Var != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(p0.m1999class());
                sb.append("/");
                sb.append("ver9/base");
                sb.append(w0.m2881import() ? "/mantuijian.html" : "/ladytuijian.html");
                x4.m2957import(sb.toString(), 43200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new j4(v3Var, "SP_HOST_SHUC_XS_KEY"));
            } else {
                throw null;
            }
        }
        Cswitch.m2557for().m2561try(this);
        this.f6902if.setOnItemClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        if (!this.f6900do) {
            setImmersionBar(true);
        }
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, 3));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @OnClick({R.id.read_end_back, R.id.read_end_search, R.id.book_readend_to_bookshelf_bt, R.id.book_readend_to_bookcity_bt, R.id.read_end_recomment, R.id.item_book_city_blist_image})
    public void menuClick(View view) {
        JSONObject jSONObject;
        hf hfVar = hf.BOOK;
        if (view.getId() == R.id.read_end_back) {
            finish();
        } else if (view.getId() == R.id.read_end_search) {
            BookSearchActivity.i(this, hfVar);
        } else if (view.getId() == R.id.book_readend_to_bookshelf_bt) {
            Intent intent = new Intent(this, MainActivity.class);
            intent.putExtra("type", 1001);
            intent.putExtra("source", hfVar);
            startActivity(intent);
            finish();
        } else if (view.getId() == R.id.book_readend_to_bookcity_bt) {
            Intent intent2 = new Intent(this, MainActivity.class);
            intent2.putExtra("type", 1002);
            intent2.putExtra("source", hfVar);
            startActivity(intent2);
            finish();
        } else if (view.getId() == R.id.read_end_recomment) {
            RankListWeekActivity.i(this, ze.q(R.string.rank_category_recommend), !w0.m2881import() ? "lady" : "man", "commend");
        } else if (view.getId() != R.id.item_book_city_blist_image || (jSONObject = this.f6901for) == null) {
        } else {
            BookListDetailActivity.k(this, jSONObject.optString("ListId"), this.f6901for.optString("Title"));
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
        Book item = this.f6902if.getItem(i);
        if (item == null || item.getItemType() != 1) {
            return;
        }
        BookDetailActivity.o(this, item);
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
