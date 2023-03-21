package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class CacheBean extends LitePalSupport {
    public String clear;
    public String data;
    public String lastModified;
    public long time;
    public String url;

    public String getClear() {
        String str = this.clear;
        return str == null ? "" : str;
    }

    public String getData() {
        String str = this.data;
        return str == null ? "" : str;
    }

    public String getLastModified() {
        String str = this.lastModified;
        return str == null ? "" : str;
    }

    public long getTime() {
        return this.time;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public void setClear(String str) {
        this.clear = str;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setLastModified(String str) {
        this.lastModified = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
