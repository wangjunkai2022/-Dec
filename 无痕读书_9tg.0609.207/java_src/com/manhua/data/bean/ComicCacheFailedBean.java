package com.manhua.data.bean;

import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class ComicCacheFailedBean extends LitePalSupport {
    public String chapterId;
    public String novelId;
    public int position;
    public String url;

    public ComicCacheFailedBean(int i, String str, String str2, String str3) {
        this.position = i;
        this.novelId = str;
        this.chapterId = str2;
        this.url = str3;
    }

    public String getChapterId() {
        return this.chapterId;
    }

    public String getNovelId() {
        return this.novelId;
    }

    public int getPosition() {
        return this.position;
    }

    public String getUrl() {
        return this.url;
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
