package com.biquge.ebook.app.bean;

import java.io.Serializable;
/* loaded from: classes8.dex */
public class SearchTop implements Serializable {
    public static final long serialVersionUID = -4654897263282263284L;
    public String Author;
    public String HostKey;
    public String Id;
    public String Img;
    public String Name;
    public String Score;

    public String getAuthor() {
        String str = this.Author;
        return str == null ? "" : str;
    }

    public String getHostKey() {
        String str = this.HostKey;
        return str == null ? "" : str;
    }

    public String getId() {
        String str = this.Id;
        return str == null ? "" : str;
    }

    public String getImg() {
        String str = this.Img;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.Name;
        return str == null ? "" : str;
    }

    public String getScore() {
        String str = this.Score;
        return str == null ? "" : str;
    }

    public void setAuthor(String str) {
        this.Author = str;
    }

    public void setHostKey(String str) {
        this.HostKey = str;
    }

    public void setId(String str) {
        this.Id = str;
    }

    public void setImg(String str) {
        this.Img = str;
    }

    public void setName(String str) {
        this.Name = str;
    }

    public void setScore(String str) {
        this.Score = str;
    }
}
