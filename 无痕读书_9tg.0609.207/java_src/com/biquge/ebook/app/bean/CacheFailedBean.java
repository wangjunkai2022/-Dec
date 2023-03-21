package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class CacheFailedBean extends LitePalSupport {
    public String chapterId;
    public String novelId;
    public int position;
    public String url;

    public CacheFailedBean(int i, String str, String str2, String str3) {
        this.position = i;
        this.novelId = str;
        this.chapterId = str2;
        this.url = str3;
    }

    public String getChapterId() {
        String str = this.chapterId;
        return str == null ? "" : str;
    }

    public String getNovelId() {
        String str = this.novelId;
        return str == null ? "" : str;
    }

    public int getPosition() {
        return this.position;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public void setChapterId(String str) {
        this.chapterId = str;
    }

    public void setNovelId(String str) {
        this.novelId = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
