package com.biquge.ebook.app.adapter;

import android.graphics.Color;
import com.apk.ze;
import com.biquge.ebook.app.bean.SkinModel;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class SwitchSkinAdapter extends BaseQuickAdapter<SkinModel, BaseViewHolder> {
    public SwitchSkinAdapter(List<SkinModel> list) {
        super(R.layout.item_switch_skin_layout, list);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, SkinModel skinModel) {
        SkinModel skinModel2 = skinModel;
        baseViewHolder.setBackgroundColor(R.id.item_skin_bgview, Color.parseColor(skinModel2.getBgColor()));
        baseViewHolder.setText(R.id.item_skin_titleview, skinModel2.getTitle());
        baseViewHolder.setVisible(R.id.item_skin_selectview, baseViewHolder.getLayoutPosition() == ze.m3174instanceof("APP_SKIN_STYLE_KEY", 0));
    }
}
