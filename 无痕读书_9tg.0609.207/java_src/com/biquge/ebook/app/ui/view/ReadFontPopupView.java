package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.apk.bd;
import com.apk.cd;
import com.apk.dd;
import com.apk.kf;
import com.apk.mf;
import com.apk.rl0;
import com.apk.tt;
import com.apk.u;
import com.apk.u5;
import com.apk.v3;
import com.apk.w;
import com.apk.x4;
import com.apk.xw;
import com.apk.y3;
import com.apk.ze;
import com.biquge.ebook.app.bean.NewReadFont;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.BottomPopupView;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class ReadFontPopupView extends BottomPopupView implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public Cif f7750do;

    /* renamed from: if  reason: not valid java name */
    public final u5 f7751if;

    /* renamed from: com.biquge.ebook.app.ui.view.ReadFontPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: super */
        public void mo2686super(List<NewReadFont> list) {
            Cif cif = ReadFontPopupView.this.f7750do;
            if (cif == null || list == null) {
                return;
            }
            cif.setNewData(list);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.ReadFontPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseQuickAdapter<NewReadFont, BaseViewHolder> {

        /* renamed from: do  reason: not valid java name */
        public final RecyclerView f7753do;

        /* renamed from: if  reason: not valid java name */
        public String f7754if;

        public Cif(RecyclerView recyclerView, bd bdVar) {
            super((int) R.layout.item_read_font);
            this.f7754if = tt.m2620do("refresh_read_font_url", "default_font_url");
            this.f7753do = recyclerView;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, NewReadFont newReadFont) {
            NewReadFont newReadFont2 = newReadFont;
            NewReadFont m1488case = kf.m1487try().m1488case(newReadFont2.getUrl());
            if (m1488case != null) {
                newReadFont2 = m1488case;
            }
            baseViewHolder.setText(R.id.item_font_name_txt, newReadFont2.getFontname());
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_font_image);
            if (!TextUtils.isEmpty(newReadFont2.getImg())) {
                u.m2654return(newReadFont2.getImg(), imageView, 0, new dd(this, imageView), false);
            } else {
                imageView.setVisibility(8);
            }
            DownloadProgressButton downloadProgressButton = (DownloadProgressButton) baseViewHolder.getView(R.id.item_font_download_txt);
            StringBuilder m1016super = Cgoto.m1016super("downloadTxt");
            m1016super.append(newReadFont2.getFid());
            downloadProgressButton.setTag(m1016super.toString());
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.item_font_use_image);
            StringBuilder m1016super2 = Cgoto.m1016super("useImage");
            m1016super2.append(newReadFont2.getFid());
            imageView2.setTag(m1016super2.toString());
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_font_size_txt);
            StringBuilder m1016super3 = Cgoto.m1016super("sizeTxt");
            m1016super3.append(newReadFont2.getFid());
            textView.setTag(m1016super3.toString());
            textView.setText(newReadFont2.getSize());
            m3417do(downloadProgressButton, imageView2, textView, newReadFont2);
            baseViewHolder.addOnClickListener(R.id.item_font_download_txt);
        }

        /* renamed from: do  reason: not valid java name */
        public final void m3417do(DownloadProgressButton downloadProgressButton, ImageView imageView, TextView textView, NewReadFont newReadFont) {
            if (downloadProgressButton == null) {
                try {
                    RecyclerView recyclerView = this.f7753do;
                    downloadProgressButton = (DownloadProgressButton) recyclerView.findViewWithTag("downloadTxt" + newReadFont.getFid());
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            if (imageView == null) {
                RecyclerView recyclerView2 = this.f7753do;
                imageView = (ImageView) recyclerView2.findViewWithTag("useImage" + newReadFont.getFid());
            }
            if (textView == null) {
                RecyclerView recyclerView3 = this.f7753do;
                textView = (TextView) recyclerView3.findViewWithTag("sizeTxt" + newReadFont.getFid());
            }
            if (downloadProgressButton == null || imageView == null || textView == null) {
                return;
            }
            String url = newReadFont.getUrl();
            if (this.f7754if.equals(url)) {
                downloadProgressButton.setVisibility(4);
                imageView.setVisibility(0);
                textView.setVisibility(8);
            } else if ("default_font_url".equals(url)) {
                downloadProgressButton.setVisibility(4);
                imageView.setVisibility(8);
                textView.setVisibility(8);
            } else if (newReadFont.isDownloadOk()) {
                downloadProgressButton.setVisibility(4);
                imageView.setVisibility(8);
                textView.setVisibility(8);
            } else {
                downloadProgressButton.setCurrentText(ze.q(R.string.download_txt));
                downloadProgressButton.setState(1);
                downloadProgressButton.setMaxProgress(newReadFont.getTotalSize());
                downloadProgressButton.setProgress(newReadFont.getCurrentSize());
                downloadProgressButton.setVisibility(0);
                imageView.setVisibility(8);
                textView.setVisibility(0);
            }
        }
    }

    public ReadFontPopupView(@NonNull Context context) {
        super(context);
        this.f7751if = new Cdo();
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_read_font;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxHeight() {
        return super.getMaxHeight() / 2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.popup_font_rv);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        ze.m3192try(getContext(), recyclerView, true);
        Cif cif = new Cif(recyclerView, null);
        this.f7750do = cif;
        recyclerView.setAdapter(cif);
        this.f7750do.setOnItemChildClickListener(new bd(this));
        this.f7750do.setOnItemClickListener(new cd(this));
        findViewById(R.id.popup_font_colose_btn).setOnClickListener(this);
        x4.m2957import(w.m2839catch(), 604800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new y3(new v3((Activity) getContext(), this.f7751if), "SP_HOST_SHUC_XS_KEY"));
        if (rl0.m2304if().m2306case(this)) {
            return;
        }
        rl0.m2304if().m2307catch(this);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDestroy() {
        super.onDestroy();
        if (rl0.m2304if().m2306case(this)) {
            rl0.m2304if().m2309const(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("CACHE_DOWNLOAD_FONT_START".equals(mfVar.f3028do)) {
            try {
                NewReadFont newReadFont = (NewReadFont) mfVar.f3030if;
                if (this.f7750do == null || newReadFont == null) {
                    return;
                }
                this.f7750do.m3417do(null, null, null, newReadFont);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
