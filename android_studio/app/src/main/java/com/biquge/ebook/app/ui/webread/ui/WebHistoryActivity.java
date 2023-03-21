package com.biquge.ebook.app.ui.webread.ui;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.b1;
import com.apk.f6;
import com.apk.ft;
import com.apk.wd;
import com.apk.xd;
import com.apk.ze;
import com.biquge.ebook.app.bean.TxtCollect;
import com.biquge.ebook.app.widget.SwipeItemLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class WebHistoryActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public Cif f7819do;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebHistoryActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {
        public Cdo() {
        }

        @Override // com.apk.ft
        public void onClick() {
            LitePal.deleteAll(TxtCollect.class, "type = ?", "SP_WEBVIEW_WEBSITE_HISTORY_KEY");
            WebHistoryActivity.i(WebHistoryActivity.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebHistoryActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseQuickAdapter<TxtCollect, BaseViewHolder> {
        public Cif() {
            super((int) R.layout.item_txt_download_history_layout);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, TxtCollect txtCollect) {
            TxtCollect txtCollect2 = txtCollect;
            baseViewHolder.setText(R.id.item_txt_download_history_title_txt, txtCollect2.getTitle());
            baseViewHolder.setText(R.id.item_txt_download_history_url_txt, txtCollect2.getUrl());
            baseViewHolder.addOnClickListener(R.id.item_txt_download_history_layout);
            baseViewHolder.addOnClickListener(R.id.item_txt_download_history_delete);
        }
    }

    public static void i(WebHistoryActivity webHistoryActivity) {
        if (webHistoryActivity == null) {
            throw null;
        }
        new b1().m141do(new xd(webHistoryActivity));
    }

    public static void j(Context context) {
        context.startActivity(new Intent(context, WebHistoryActivity.class));
    }

    public static void k(String str, String str2) {
        try {
            LitePal.deleteAll(TxtCollect.class, "url = ? and type = ?", str2, "SP_WEBVIEW_WEBSITE_HISTORY_KEY");
            TxtCollect txtCollect = new TxtCollect();
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            txtCollect.setTitle(str);
            txtCollect.setUrl(str2);
            txtCollect.setType("SP_WEBVIEW_WEBSITE_HISTORY_KEY");
            txtCollect.save();
            if (LitePal.where("type = ?", "SP_WEBVIEW_WEBSITE_HISTORY_KEY").count(TxtCollect.class) > 30) {
                ((TxtCollect) LitePal.where("type = ?", "SP_WEBVIEW_WEBSITE_HISTORY_KEY").findFirst(TxtCollect.class)).delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_web_history_layout;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_public;
    }

    @Override // com.apk.f6
    public void initData() {
        super.initData();
        Cif cif = new Cif();
        this.f7819do = cif;
        this.mRecyclerView.setAdapter(cif);
        new b1().m141do(new xd(this));
        this.f7819do.setOnItemChildClickListener(new wd(this));
    }

    @Override // com.apk.f6
    public void initView() {
        super.initView();
        initTopBarOnlyTitle(R.id.web_history_actionbar, ze.q(R.string.web_transcoding_menu_history));
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(this, this.mRecyclerView);
        this.mRecyclerView.addOnItemTouchListener(new SwipeItemLayout.Cfor(this));
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.book_detail_to_book_shelf) {
            showTipDialog(this, ze.q(R.string.web_transcoding_menu_clear_history), new Cdo());
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.activity_public_toolbar_search).setVisible(false);
        MenuItem findItem = menu.findItem(R.id.book_detail_to_book_shelf);
        findItem.setTitle(ze.q(R.string.tips_clear_txt));
        findItem.setIcon(0);
        findItem.setVisible(true);
        return super.onPrepareOptionsMenu(menu);
    }
}
