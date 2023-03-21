package com.biquge.ebook.app.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public class BookListBean implements Serializable {
    public static final long serialVersionUID = 1617821538658280400L;
    public List<Book> BookList;
    public boolean HasNext;

    public List<Book> getBookList() {
        List<Book> list = this.BookList;
        return list == null ? new ArrayList() : list;
    }

    public boolean isHasNext() {
        return this.HasNext;
    }

    public void setBookList(List<Book> list) {
        this.BookList = list;
    }

    public void setHasNext(boolean z) {
        this.HasNext = z;
    }
}
