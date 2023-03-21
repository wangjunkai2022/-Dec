package com.biquge.ebook.app.bean;

import java.util.List;
/* loaded from: classes8.dex */
public class RankListBean {
    public List<Book> books;
    public String id;
    public String title;

    public RankListBean(String str, String str2) {
        this.id = str;
        this.title = str2;
    }

    public List<Book> getBooks() {
        return this.books;
    }

    public String getId() {
        String str = this.id;
        return str == null ? "" : str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setBooks(List<Book> list) {
        this.books = list;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
