package com.apk;

import android.content.Context;
import android.view.View;
import com.biquge.ebook.app.bean.HomenavmenuBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.swl.gg.ggs.SwlAdHelper;
import java.util.List;
/* compiled from: CommonsUtils.java */
/* loaded from: classes8.dex */
public final class ff implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f1287do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Context f1288if;

    public ff(List list, Context context) {
        this.f1287do = list;
        this.f1288if = context;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        HomenavmenuBean homenavmenuBean = (HomenavmenuBean) this.f1287do.get(i);
        if (homenavmenuBean != null) {
            SwlAdHelper.setAdClick(this.f1288if, homenavmenuBean.getLandingtype(), homenavmenuBean.getTo(), null);
            String id = homenavmenuBean.getId();
            int ver = homenavmenuBean.getVer();
            tt.f4763do.putInt(Cgoto.m989case("SP_HOME_MENU_VERSION_CODE_KEY", id), ver);
            baseQuickAdapter.notifyItemChanged(i);
            mf.m1712do("REFRESH_BOOKSTORE_RED_TAG_KEY", null);
        }
    }
}
