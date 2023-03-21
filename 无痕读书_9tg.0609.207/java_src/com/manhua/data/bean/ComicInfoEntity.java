package com.manhua.data.bean;

import java.util.List;
/* loaded from: classes8.dex */
public class ComicInfoEntity {
    public String addTime;
    public int bookCount;
    public List<ComicBean> books;
    public String cover;
    public String description;
    public boolean forMan;
    public String title;

    public String getAddTime() {
        return this.addTime;
    }

    public int getBookCount() {
        return this.bookCount;
    }

    public List<ComicBean> getBooks() {
        return this.books;
    }

    public String getCover() {
        return this.cover;
    }

    public String getDescription() {
        return this.description;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isForMan() {
        return this.forMan;
    }

    public void setAddTime(String str) {
        this.addTime = str;
    }

    public void setBookCount(int i) {
        this.bookCount = i;
    }

    public void setBooks(List<ComicBean> list) {
        this.books = list;
    }

    public void setCover(String str) {
        this.cover = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setForMan(boolean z) {
        this.forMan = z;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
