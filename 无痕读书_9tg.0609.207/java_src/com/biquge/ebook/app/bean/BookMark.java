package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class BookMark extends LitePalSupport {
    public String chapterId;
    public String content;
    public String name;
    public String novelId;
    public String readPage;
    public String saveTime;

    public String getChapterId() {
        String str = this.chapterId;
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

    public String getNovelId() {
        String str = this.novelId;
        return str == null ? "" : str;
    }

    public String getReadPage() {
        String str = this.readPage;
        return str == null ? "" : str;
    }

    public String getSaveTime() {
        String str = this.saveTime;
        return str == null ? "" : str;
    }

    public void setChapterId(String str) {
        this.chapterId = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNovelId(String str) {
        this.novelId = str;
    }

    public void setReadPage(String str) {
        this.readPage = str;
    }

    public void setSaveTime(String str) {
        this.saveTime = str;
    }
}
