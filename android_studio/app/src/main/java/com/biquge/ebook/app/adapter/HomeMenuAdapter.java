package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.HomenavmenuBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class HomeMenuAdapter extends BaseQuickAdapter<HomenavmenuBean, BaseViewHolder> {
    public HomeMenuAdapter(List<HomenavmenuBean> list) {
        super(R.layout.item_homemenu_layout, list);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, HomenavmenuBean homenavmenuBean) {
        HomenavmenuBean homenavmenuBean2 = homenavmenuBean;
        try {
            u.m2654return(homenavmenuBean2.getIcon(), (ImageView) baseViewHolder.getView(R.id.item_homemenu_icon), 0, null, false);
            baseViewHolder.setText(R.id.item_homemenu_name, homenavmenuBean2.getMenu());
            String id = homenavmenuBean2.getId();
            int ver = homenavmenuBean2.getVer();
            StringBuilder sb = new StringBuilder();
            sb.append("SP_HOME_MENU_VERSION_CODE_KEY");
            sb.append(id);
            baseViewHolder.setVisible(R.id.item_homemenu_red_tagview, ver > ze.m3174instanceof(sb.toString(), 0));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
