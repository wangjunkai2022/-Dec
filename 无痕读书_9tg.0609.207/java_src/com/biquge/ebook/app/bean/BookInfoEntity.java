package com.biquge.ebook.app.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public class BookInfoEntity implements Serializable {
    public static final long serialVersionUID = 8576197084166601852L;
    public String AddTime;
    public List<Book> BookList;
    public String Cover;
    public String Description;
    public boolean ForMan;
    public boolean IsCheck;
    public boolean IsRecycle;
    public String ListId;
    public String Title;
    public String UpdateTime;
    public String UserName;

    public String getAddTime() {
        String str = this.AddTime;
        return str == null ? "" : str;
    }

    public List<Book> getBookList() {
        List<Book> list = this.BookList;
        return list == null ? new ArrayList() : list;
    }

    public String getCover() {
        String str = this.Cover;
        return str == null ? "" : str;
    }

    public String getDescription() {
        String str = this.Description;
        return str == null ? "" : str;
    }

    public String getListId() {
        String str = this.ListId;
        return str == null ? "" : str;
    }

    public String getTitle() {
        String str = this.Title;
        return str == null ? "" : str;
    }

    public String getUpdateTime() {
        String str = this.UpdateTime;
        return str == null ? "" : str;
    }

    public String getUserName() {
        String str = this.UserName;
        return str == null ? "" : str;
    }

    public boolean isCheck() {
        return this.IsCheck;
    }

    public boolean isForMan() {
        return this.ForMan;
    }

    public boolean isRecycle() {
        return this.IsRecycle;
    }

    public void setAddTime(String str) {
        this.AddTime = str;
    }

    public void setBookList(List<Book> list) {
        this.BookList = list;
    }

    public void setCheck(boolean z) {
        this.IsCheck = z;
    }

    public void setCover(String str) {
        this.Cover = str;
    }

    public void setDescription(String str) {
        this.Description = str;
    }

    public void setForMan(boolean z) {
        this.ForMan = z;
    }

    public void setListId(String str) {
        this.ListId = str;
    }

    public void setRecycle(boolean z) {
        this.IsRecycle = z;
    }

    public void setTitle(String str) {
        this.Title = str;
    }

    public void setUpdateTime(String str) {
        this.UpdateTime = str;
    }

    public void setUserName(String str) {
        this.UserName = str;
    }
}
