package com.biquge.ebook.app.adapter;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.widget.labelview.LabelView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.HashMap;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class CreateBookListAdapter extends BaseQuickAdapter<Book, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public String f6348do;

    /* renamed from: if  reason: not valid java name */
    public Map<String, String> f6349if;

    /* renamed from: com.biquge.ebook.app.adapter.CreateBookListAdapter$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements TextWatcher {

        /* renamed from: do  reason: not valid java name */
        public final String f6350do;

        /* renamed from: if  reason: not valid java name */
        public final ImageView f6352if;

        public Cif(String str, ImageView imageView, Cdo cdo) {
            this.f6350do = str;
            this.f6352if = imageView;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            CreateBookListAdapter createBookListAdapter = CreateBookListAdapter.this;
            String str = this.f6350do;
            String charSequence2 = charSequence.toString();
            if (createBookListAdapter.f6349if == null) {
                createBookListAdapter.f6349if = new HashMap();
            }
            createBookListAdapter.f6349if.put(str, charSequence2);
            this.f6352if.setVisibility(charSequence.length() > 0 ? 0 : 8);
        }
    }

    public CreateBookListAdapter() {
        super((int) R.layout.item_create_booklist_view);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Book book) {
        Book book2 = book;
        ((LabelView) baseViewHolder.getView(R.id.item_cover_image)).setVisibility(!TextUtils.isEmpty(this.f6348do) && (this.f6348do.contains(book2.getImg()) || book2.getImg().contains(this.f6348do)) ? 0 : 8);
        try {
            u.m2653public(book2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            baseViewHolder.setText(R.id.item_simple_book_name_txt, book2.getName());
            baseViewHolder.setText(R.id.item_simple_book_type_txt, ze.r(R.string.xml_author_placeholder_txt, book2.getAuthor()));
            if (TextUtils.isEmpty(book2.getLastChapter())) {
                baseViewHolder.setText(R.id.item_simple_book_simple_info_txt, book2.getCName());
            } else {
                baseViewHolder.setText(R.id.item_simple_book_simple_info_txt, ze.r(R.string.xml_new_placeholder_txt, book2.getLastChapter()));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_create_cancel_input_image);
        EditText editText = (EditText) baseViewHolder.getView(R.id.item_create_element_intro_txt);
        if (editText.getTag() instanceof TextWatcher) {
            editText.removeTextChangedListener((TextWatcher) editText.getTag());
        }
        editText.setText(m3281do(book2.getId()));
        Cif cif = new Cif(book2.getId(), imageView, null);
        editText.addTextChangedListener(cif);
        editText.setTag(cif);
        baseViewHolder.addOnClickListener(R.id.item_delete_bt);
        baseViewHolder.addOnClickListener(R.id.item_create_cancel_input_image);
    }

    /* renamed from: do  reason: not valid java name */
    public String m3281do(String str) {
        Map<String, String> map = this.f6349if;
        return (map == null || !map.containsKey(str)) ? "" : this.f6349if.get(str);
    }
}
