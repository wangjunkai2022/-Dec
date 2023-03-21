package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.fragment.BookSearchFragment;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* compiled from: BookSearchFragment.java */
/* loaded from: classes8.dex */
public class ab extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f75do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ BookSearchFragment f76if;

    public ab(BookSearchFragment bookSearchFragment, int i) {
        this.f76if = bookSearchFragment;
        this.f75do = i;
    }

    @Override // com.apk.c1
    public String doInBackground() {
        try {
            Book book = (Book) this.f76if.f7310else.getItem(this.f75do);
            if (book != null) {
                String id = book.getId();
                return TextUtils.isEmpty(id) ? v3.m2763while(book.getName(), book.getAuthor()) : id;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (String) super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        try {
            this.f76if.hideBaseLoading();
            if (!TextUtils.isEmpty(str2) && !"null".equals(str2)) {
                if (this.f76if.f7310else != null) {
                    ((Book) this.f76if.f7310else.getItem(this.f75do)).setId(str2);
                }
                this.f76if.n(1, this.f75do);
                return;
            }
            if (this.f76if.f7304break) {
                return;
            }
            ToastUtils.show((int) R.string.search_not_find_to_external_search_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f76if.showBaseLoading();
    }
}
