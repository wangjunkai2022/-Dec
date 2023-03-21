package com.biquge.ebook.app.bean;

import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class CreateBookList extends LitePalSupport implements Serializable {
    public static final long serialVersionUID = -4035157832437087627L;
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
        String str = this.bookListId;
        return str == null ? "" : str;
    }

    public String getBooks() {
        String str = this.books;
        return str == null ? "" : str;
    }

    public String getCover() {
        String str = this.cover;
        return str == null ? "" : str;
    }

    public String getIntro() {
        String str = this.intro;
        return str == null ? "" : str;
    }

    public String getSaveTime() {
        String str = this.saveTime;
        return str == null ? "" : str;
    }

    public String getTitle() {
        String str = this.title;
        return str == null ? "" : str;
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
