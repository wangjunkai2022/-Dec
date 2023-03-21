package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import com.biquge.ebook.app.bean.BookMenuItem;
import com.biquge.ebook.app.widget.SwitchButton;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ShelfMenuAdapter extends BaseQuickAdapter<BookMenuItem, BaseViewHolder> {
    public ShelfMenuAdapter(List<BookMenuItem> list) {
        super(R.layout.item_menu_simplen_layout, list);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, BookMenuItem bookMenuItem) {
        BookMenuItem bookMenuItem2 = bookMenuItem;
        SwitchButton switchButton = (SwitchButton) baseViewHolder.getView(R.id.item_sinple_menu_switch);
        switchButton.setTag(String.valueOf(baseViewHolder.getLayoutPosition()));
        switchButton.setTouchEnable(false);
        switchButton.setChecked(bookMenuItem2.isCheck());
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_sinple_menu_image);
        if (bookMenuItem2.isSwitch()) {
            switchButton.setVisibility(0);
            imageView.setVisibility(8);
        } else {
            switchButton.setVisibility(8);
            imageView.setVisibility(0);
            imageView.setImageResource(bookMenuItem2.getResId());
        }
        baseViewHolder.setText(R.id.item_sinple_menu_txt, bookMenuItem2.getTitle());
    }
}
