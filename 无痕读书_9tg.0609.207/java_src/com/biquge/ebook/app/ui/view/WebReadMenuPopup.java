package com.biquge.ebook.app.ui.view;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.id;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.BottomPopupView;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebReadMenuPopup extends BottomPopupView {

    /* renamed from: do  reason: not valid java name */
    public RecyclerView f7804do;

    /* renamed from: for  reason: not valid java name */
    public final boolean f7805for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f7806if;

    /* renamed from: new  reason: not valid java name */
    public final Cfor f7807new;

    /* renamed from: com.biquge.ebook.app.ui.view.WebReadMenuPopup$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends BaseQuickAdapter<Cif, BaseViewHolder> {
        public Cdo(List<Cif> list) {
            super(R.layout.item_web_read_menu_layout, list);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, Cif cif) {
            Cif cif2 = cif;
            baseViewHolder.setImageResource(R.id.item_web_menu_icon, cif2.f7808do);
            baseViewHolder.setText(R.id.item_web_menu_name, cif2.f7809if);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.WebReadMenuPopup$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor {
    }

    /* renamed from: com.biquge.ebook.app.ui.view.WebReadMenuPopup$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public int f7808do;

        /* renamed from: if  reason: not valid java name */
        public String f7809if;

        public Cif(int i, String str) {
            this.f7808do = i;
            this.f7809if = str;
        }
    }

    public WebReadMenuPopup(@NonNull Context context, boolean z, boolean z2, Cfor cfor) {
        super(context);
        this.f7806if = z;
        this.f7805for = z2;
        this.f7807new = cfor;
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_web_read_menu_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.web_read_menu_rv);
        this.f7804do = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.f7804do.setLayoutManager(new GridLayoutManager(getContext(), 5));
        ze.m3165else(this.f7804do);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Cif(this.f7806if ? R.drawable.txtdl_ad_normal : R.drawable.txtdl_ad_dis, ze.q(R.string.web_transcoding_menu_security)));
        arrayList.add(new Cif(R.drawable.web_menu_history, ze.q(R.string.web_transcoding_menu_history)));
        arrayList.add(new Cif(R.drawable.web_menu_copy_url, ze.q(R.string.web_transcoding_menu_copy_url)));
        if (this.f7805for) {
            arrayList.add(new Cif(R.drawable.web_menu_save_shelf_finish, ze.q(R.string.txt_open_bookshlef_txt)));
        } else {
            arrayList.add(new Cif(R.drawable.web_menu_save_shelf, ze.q(R.string.txt_add_bookshlef_txt)));
        }
        arrayList.add(new Cif(R.drawable.web_menu_exit, ze.q(R.string.web_transcoding_menu_close_page)));
        Cdo cdo = new Cdo(arrayList);
        this.f7804do.setAdapter(cdo);
        cdo.setOnItemClickListener(new id(this));
    }
}
