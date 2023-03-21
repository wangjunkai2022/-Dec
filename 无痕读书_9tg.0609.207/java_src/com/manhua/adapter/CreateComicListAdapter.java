package com.manhua.adapter;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.widget.labelview.LabelView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import java.util.HashMap;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CreateComicListAdapter extends BaseQuickAdapter<ComicBean, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public String f9640do;

    /* renamed from: if  reason: not valid java name */
    public Map<String, String> f9641if;

    /* renamed from: com.manhua.adapter.CreateComicListAdapter$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements TextWatcher {

        /* renamed from: do  reason: not valid java name */
        public String f9642do;

        /* renamed from: if  reason: not valid java name */
        public ImageView f9644if;

        public Cif(String str, ImageView imageView, Cdo cdo) {
            this.f9642do = str;
            this.f9644if = imageView;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            CreateComicListAdapter.this.f9641if.put(this.f9642do, charSequence.toString());
            this.f9644if.setVisibility(charSequence.length() > 0 ? 0 : 8);
        }
    }

    public CreateComicListAdapter() {
        super((int) R.layout.item_create_booklist_view);
        this.f9641if = new HashMap();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, ComicBean comicBean) {
        ComicBean comicBean2 = comicBean;
        ((LabelView) baseViewHolder.getView(R.id.item_cover_image)).setVisibility(!TextUtils.isEmpty(this.f9640do) && (this.f9640do.contains(comicBean2.getImg()) || comicBean2.getImg().contains(this.f9640do)) ? 0 : 8);
        try {
            u.m2650import(comicBean2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            baseViewHolder.setText(R.id.item_simple_book_name_txt, comicBean2.getName());
            baseViewHolder.setText(R.id.item_simple_book_type_txt, ze.r(R.string.xml_author_placeholder_txt, comicBean2.getAuthor()));
            if (TextUtils.isEmpty(comicBean2.getLastChapter())) {
                baseViewHolder.setText(R.id.item_simple_book_simple_info_txt, comicBean2.getCName());
            } else {
                baseViewHolder.setText(R.id.item_simple_book_simple_info_txt, ze.r(R.string.xml_new_placeholder_txt, comicBean2.getLastChapter()));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_create_cancel_input_image);
        EditText editText = (EditText) baseViewHolder.getView(R.id.item_create_element_intro_txt);
        if (editText.getTag() instanceof TextWatcher) {
            editText.removeTextChangedListener((TextWatcher) editText.getTag());
        }
        editText.setText(m3620do(comicBean2.getId()));
        Cif cif = new Cif(comicBean2.getId(), imageView, null);
        editText.addTextChangedListener(cif);
        editText.setTag(cif);
        baseViewHolder.addOnClickListener(R.id.item_delete_bt);
        baseViewHolder.addOnClickListener(R.id.item_create_cancel_input_image);
    }

    /* renamed from: do  reason: not valid java name */
    public String m3620do(String str) {
        return this.f9641if.containsKey(str) ? this.f9641if.get(str) : "";
    }
}
