package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.apk.gg;
import com.apk.kg;
import com.biquge.ebook.app.bean.BookMark;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookMarkAdapter extends BaseQuickAdapter<BookMark, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public boolean f6340do;

    /* renamed from: for  reason: not valid java name */
    public final int f6341for;

    /* renamed from: if  reason: not valid java name */
    public final gg<String, BookMark> f6342if;

    /* renamed from: new  reason: not valid java name */
    public final int f6343new;

    public BookMarkAdapter(int i, int i2) {
        super((int) R.layout.item_bookmark_view);
        this.f6342if = new gg<>();
        this.f6341for = i;
        this.f6343new = i2;
    }

    /* renamed from: do  reason: not valid java name */
    public static String m3279do(BookMark bookMark) {
        if (bookMark != null) {
            return bookMark.getNovelId() + "-" + bookMark.getChapterId() + "-" + bookMark.getReadPage();
        }
        return "";
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, BookMark bookMark) {
        BookMark bookMark2 = bookMark;
        TextView textView = (TextView) baseViewHolder.getView(R.id.item_bookmark_list_title_txt);
        textView.setText(bookMark2.getName());
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.item_bookmark_list_content_txt);
        textView2.setText(bookMark2.getContent());
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.item_bookmark_list_time_txt);
        textView3.setText(kg.m1497goto(Long.parseLong(bookMark2.getSaveTime())));
        int i = this.f6341for;
        if (i != 0) {
            textView.setTextColor(i);
        }
        int i2 = this.f6343new;
        if (i2 != 0) {
            textView2.setTextColor(i2);
            textView3.setTextColor(this.f6343new);
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_bookmark_select_image);
        if (this.f6340do) {
            imageView.setVisibility(0);
            imageView.setSelected(this.f6342if.containsKey(m3279do(bookMark2)));
            return;
        }
        imageView.setVisibility(8);
    }

    /* renamed from: if  reason: not valid java name */
    public void m3280if(boolean z) {
        try {
            this.f6340do = z;
            if (!z) {
                this.f6342if.clear();
            }
            notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
