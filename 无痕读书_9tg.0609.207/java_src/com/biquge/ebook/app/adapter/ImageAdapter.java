package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import com.apk.u;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ImageAdapter extends BaseQuickAdapter<String, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final boolean f6355do;

    public ImageAdapter(List<String> list, boolean z) {
        super(R.layout.item_book_image_view, list);
        this.f6355do = z;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, String str) {
        String str2 = str;
        try {
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_simple_book_image);
            if ("localtion://".equals(str2)) {
                imageView.setTag(str2);
                imageView.setImageResource(R.drawable.web_read_cover_img);
            } else if ("websearch://".equals(str2)) {
                imageView.setTag(str2);
                imageView.setImageResource(R.drawable.web_read_cover_img);
            } else {
                imageView.setTag(str2);
                if (this.f6355do) {
                    u.m2653public(str2, imageView);
                } else {
                    u.m2650import(str2, imageView);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
