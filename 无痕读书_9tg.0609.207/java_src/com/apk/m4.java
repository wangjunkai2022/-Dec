package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.BookElement;
import com.biquge.ebook.app.bean.CreateBookList;
import java.util.LinkedList;
import java.util.List;
import org.litepal.LitePal;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class m4 extends c1<LinkedList<BookElement>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f2978do;

    public m4(v3 v3Var) {
        this.f2978do = v3Var;
    }

    @Override // com.apk.c1
    public LinkedList<BookElement> doInBackground() {
        LinkedList<BookElement> linkedList = new LinkedList<>();
        try {
            List<CreateBookList> find = LitePal.order("saveTime desc").find(CreateBookList.class);
            if (find != null) {
                for (CreateBookList createBookList : find) {
                    try {
                        BookElement bookElement = new BookElement();
                        bookElement.setListId(String.valueOf(createBookList.getBookListId()));
                        bookElement.setTitle(createBookList.getTitle());
                        bookElement.setDescription(createBookList.getIntro());
                        if (!TextUtils.isEmpty(createBookList.getBooks())) {
                            bookElement.setCover(createBookList.getCover());
                            bookElement.setBookCount(createBookList.getBookCount());
                        }
                        linkedList.add(bookElement);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return linkedList;
    }

    @Override // com.apk.c1
    public void onPostExecute(LinkedList<BookElement> linkedList) {
        LinkedList<BookElement> linkedList2 = linkedList;
        super.onPostExecute(linkedList2);
        u5 u5Var = this.f2978do.f4987for;
        if (u5Var != null) {
            u5Var.mo2689throw(linkedList2, "my_draftBox");
        }
    }
}
