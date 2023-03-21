package com.biquge.ebook.app.bean;

import android.text.TextUtils;
import java.io.Serializable;

/* loaded from: classes8.dex */
public class CommendMediaListNameBean implements Serializable {
    public static final long serialVersionUID = 3685664726330847901L;
    public String Author;
    public String BookName;
    public String Desc;
    public String H5Url;
    public String Id;
    public String Score;
    public String SourceType;
    public String Url;

    public String getAuthor() {
        String str = this.Author;
        return str == null ? "" : str;
    }

    public String getBookName() {
        String str = this.BookName;
        return str == null ? "" : str;
    }

    public String getDesc() {
        if (TextUtils.isEmpty(this.Desc)) {
            return "《<font color=\"#0693EA\" size=\"26\" >{name}</font>》小说的作者《<font color=\"#fc6a00\">{author}</font>》出漫画了，评分高达 <font color=\"#F7B11B\">{score}</font>，\n为您推荐，点击查看 >>";
        }
        String str = this.Desc;
        return str == null ? "" : str;
    }

    public String getH5Url() {
        String str = this.H5Url;
        return str == null ? "" : str;
    }

    public String getId() {
        String str = this.Id;
        return str == null ? "" : str;
    }

    public String getScore() {
        if (TextUtils.isEmpty(this.Score)) {
            return "9.6";
        }
        String str = this.Score;
        return str == null ? "" : str;
    }

    public String getSourceType() {
        String str = this.SourceType;
        return str == null ? "" : str;
    }

    public String getUrl() {
        String str = this.Url;
        return str == null ? "" : str;
    }

    public void setAuthor(String str) {
        this.Author = str;
    }

    public void setBookName(String str) {
        this.BookName = str;
    }

    public void setDesc(String str) {
        this.Desc = str;
    }

    public void setH5Url(String str) {
        this.H5Url = str;
    }

    public void setId(String str) {
        this.Id = str;
    }

    public void setScore(String str) {
        this.Score = str;
    }

    public void setSourceType(String str) {
        this.SourceType = str;
    }

    public void setUrl(String str) {
        this.Url = str;
    }
}
