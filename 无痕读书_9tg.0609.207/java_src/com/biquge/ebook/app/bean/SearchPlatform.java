package com.biquge.ebook.app.bean;
/* loaded from: classes8.dex */
public class SearchPlatform {
    public String pid;
    public String sename;
    public String url;

    public SearchPlatform(String str, String str2) {
        this.sename = str;
        this.pid = str2;
    }

    public String getPid() {
        String str = this.pid;
        return str == null ? "" : str;
    }

    public String getSename() {
        String str = this.sename;
        return str == null ? "" : str;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public void setPid(String str) {
        this.pid = str;
    }

    public void setSename(String str) {
        this.sename = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
