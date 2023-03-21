package com.biquge.ebook.app.bean;
/* loaded from: classes8.dex */
public class MarqueeBean {
    public String landingtype;
    public String msg;
    public String pkg;
    public String url;

    public MarqueeBean(String str, String str2, String str3, String str4) {
        this.msg = str;
        this.url = str2;
        this.pkg = str3;
        this.landingtype = str4;
    }

    public String getLandingtype() {
        String str = this.landingtype;
        return str == null ? "" : str;
    }

    public String getMsg() {
        String str = this.msg;
        return str == null ? "" : str;
    }

    public String getPkg() {
        String str = this.pkg;
        return str == null ? "" : str;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public void setLandingtype(String str) {
        this.landingtype = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setPkg(String str) {
        this.pkg = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
