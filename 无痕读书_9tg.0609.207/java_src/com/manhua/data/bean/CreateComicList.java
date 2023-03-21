package com.manhua.data.bean;

import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class CreateComicList extends LitePalSupport implements Serializable {
    public static final long serialVersionUID = -3875271466679688046L;
    public int bookCount;
    public String bookListId;
    public String books;
    public String cover;
    public boolean forMen;
    public String intro;
    public boolean isCheck;
    public String saveTime;
    public String title;

    public int getBookCount() {
        return this.bookCount;
    }

    public String getBookListId() {
        return this.bookListId;
    }

    public String getBooks() {
        return this.books;
    }

    public String getCover() {
        return this.cover;
    }

    public String getIntro() {
        return this.intro;
    }

    public String getSaveTime() {
        return this.saveTime;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isCheck() {
        return this.isCheck;
    }

    public boolean isForMen() {
        return this.forMen;
    }

    public void setBookCount(int i) {
        this.bookCount = i;
    }

    public void setBookListId(String str) {
        this.bookListId = str;
    }

    public void setBooks(String str) {
        this.books = str;
    }

    public void setCheck(boolean z) {
        this.isCheck = z;
    }

    public void setCover(String str) {
        this.cover = str;
    }

    public void setForMen(boolean z) {
        this.forMen = z;
    }

    public void setIntro(String str) {
        this.intro = str;
    }

    public void setSaveTime(String str) {
        this.saveTime = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
