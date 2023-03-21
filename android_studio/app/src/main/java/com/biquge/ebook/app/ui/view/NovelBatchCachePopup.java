package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.g;
import com.apk.lv;
import com.apk.mf;
import com.apk.o0;
import com.apk.rl0;
import com.apk.s0;
import com.apk.tt;
import com.apk.yc;
import com.apk.ze;
import com.apk.zu;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.app.AppService;
import com.biquge.ebook.app.bean.BatchCacheBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.impl.ConfirmPopupView;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class NovelBatchCachePopup extends BottomPopupView implements View.OnClickListener, BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public Cif f7711do;

    /* renamed from: for  reason: not valid java name */
    public final String f7712for;

    /* renamed from: if  reason: not valid java name */
    public final String f7713if;

    /* renamed from: new  reason: not valid java name */
    public BatchCacheBean f7714new;

    /* renamed from: try  reason: not valid java name */
    public final Cfor f7715try;

    /* renamed from: com.biquge.ebook.app.ui.view.NovelBatchCachePopup$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public String f7716do;

        /* renamed from: if  reason: not valid java name */
        public String f7717if;

        public Cdo() {
        }

        public Cdo(yc ycVar) {
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.NovelBatchCachePopup$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor {
    }

    /* renamed from: com.biquge.ebook.app.ui.view.NovelBatchCachePopup$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseQuickAdapter<Cdo, BaseViewHolder> {

        /* renamed from: do  reason: not valid java name */
        public int f7718do;

        public Cif() {
            super((int) R.layout.item_batch_chapter_list_layout);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, Cdo cdo) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_batch_cache_name);
            String str = cdo.f7716do;
            if (str == null) {
                str = "";
            }
            textView.setText(str);
            boolean z = this.f7718do == baseViewHolder.getLayoutPosition();
            textView.setSelected(z);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_batch_choose_iv);
            imageView.setVisibility(z ? 0 : 4);
            imageView.setColorFilter(ze.p(R.color.colorAccent));
        }
    }

    public NovelBatchCachePopup(@NonNull Context context, String str, String str2, Cfor cfor) {
        super(context);
        this.f7713if = str;
        this.f7712for = str2;
        this.f7715try = cfor;
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.novel_paragraph_cache_layout;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3409if() {
        BatchCacheBean batchCacheBean = this.f7714new;
        if (batchCacheBean != null) {
            batchCacheBean.save();
            Cfor cfor = this.f7715try;
            if (cfor != null) {
                o0.Cdo cdo = (o0.Cdo) cfor;
                o0.Celse celse = cdo.f3338do;
                if (celse != null) {
                    celse.mo1179do(true);
                }
                AppService.m3296case(cdo.f3340if, cdo.f3339for, cdo.f3341new);
            }
            tt.f4763do.putBoolean("BATCH_CACHE_MUST_REWARD_AD_KEY", true);
        }
        dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Cdo item;
        if (view.getId() == R.id.dialog_close_btn) {
            dismiss();
        } else if (view.getId() == R.id.chapter_batch_start_btn) {
            Cif cif = this.f7711do;
            if (cif != null && (item = cif.getItem(cif.f7718do)) != null) {
                LitePal.deleteAll(BatchCacheBean.class, new String[0]);
                BatchCacheBean batchCacheBean = new BatchCacheBean();
                this.f7714new = batchCacheBean;
                batchCacheBean.setBookId(this.f7713if);
                this.f7714new.setBatchValue(item.f7717if);
            }
            List<g> list = s0.m2367if().f4228default;
            if ((list != null && list.size() > 0) && ze.m3179private("BATCH_CACHE_MUST_REWARD_AD_KEY", true)) {
                String m2620do = tt.m2620do("CACHE_NOVEL_TIPS_TXT_KEY", "");
                if (TextUtils.isEmpty(m2620do)) {
                    m2620do = ze.q(R.string.batch_cache_reward_ad_tip_txt);
                }
                Context context = getContext();
                lv lvVar = new lv();
                String q = ze.q(R.string.tips_tip_title_txt);
                String q2 = ze.q(R.string.main_cancel);
                String q3 = ze.q(R.string.batch_cache_reward_xz_btn_txt);
                yc ycVar = new yc(this);
                lvVar.f2917continue = zu.f6266try;
                ConfirmPopupView confirmPopupView = new ConfirmPopupView(context, 0);
                confirmPopupView.f9575else = q;
                confirmPopupView.f9577goto = m2620do;
                confirmPopupView.f9580this = null;
                confirmPopupView.f9569break = q2;
                confirmPopupView.f9571catch = q3;
                confirmPopupView.f9574do = null;
                confirmPopupView.f9578if = ycVar;
                confirmPopupView.f9573const = false;
                confirmPopupView.popupInfo = lvVar;
                confirmPopupView.show();
                return;
            }
            m3409if();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        if (!rl0.m2304if().m2306case(this)) {
            rl0.m2304if().m2307catch(this);
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.chapter_batch_list_rv);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        ze.m3177new(getContext(), recyclerView);
        ze.m3165else(recyclerView);
        Cif cif = new Cif();
        this.f7711do = cif;
        recyclerView.setAdapter(cif);
        findViewById(R.id.dialog_close_btn).setOnClickListener(this);
        findViewById(R.id.chapter_batch_start_btn).setOnClickListener(this);
        this.f7711do.setOnItemClickListener(this);
        try {
            String replace = new JSONObject(this.f7712for).optString("every").replace("[", "").replace("]", "");
            if (TextUtils.isEmpty(replace)) {
                return;
            }
            String[] split = replace.split(",");
            if (split.length > 0) {
                ArrayList arrayList = new ArrayList();
                for (String str : split) {
                    Cdo cdo = new Cdo(null);
                    cdo.f7717if = str;
                    if (str.equals("-1")) {
                        cdo.f7716do = ze.q(R.string.download_batch_size_a_txt);
                    } else if (str.equals(SpeechSynthesizer.REQUEST_DNS_OFF)) {
                        cdo.f7716do = ze.q(R.string.download_batch_size_b_txt);
                    } else {
                        cdo.f7716do = ze.r(R.string.download_batch_size_c_txt, str);
                    }
                    arrayList.add(cdo);
                }
                this.f7711do.setNewData(arrayList);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDismiss() {
        super.onDismiss();
        if (rl0.m2304if().m2306case(this)) {
            rl0.m2304if().m2309const(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("CACHE_BATCH_AUTO_DOWNLOAD_KEY".equals(mfVar.f3028do)) {
            m3409if();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Cif cif = this.f7711do;
        if (cif == null || i == cif.f7718do) {
            return;
        }
        cif.f7718do = i;
        cif.notifyDataSetChanged();
    }
}
