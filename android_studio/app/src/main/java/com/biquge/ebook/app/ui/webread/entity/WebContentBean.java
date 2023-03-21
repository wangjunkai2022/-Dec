package com.biquge.ebook.app.ui.webread.entity;

/* loaded from: classes8.dex */
public class WebContentBean {
    public String chapterUrl;
    public String content;
    public String name;
    public String nextUrl;
    public String preUrl;

    public String getChapterUrl() {
        String str = this.chapterUrl;
        return str == null ? "" : str;
    }

    public String getContent() {
        String str = this.content;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getNextUrl() {
        String str = this.nextUrl;
        return str == null ? "" : str;
    }

    public String getPreUrl() {
        String str = this.preUrl;
        return str == null ? "" : str;
    }

    public void setChapterUrl(String str) {
        this.chapterUrl = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNextUrl(String str) {
        this.nextUrl = str;
    }

    public void setPreUrl(String str) {
        this.preUrl = str;
    }
}
