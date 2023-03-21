package com.biquge.ebook.app.bean;
/* loaded from: classes8.dex */
public class SkinModel {
    public String bgColor;
    public String tag;
    public String title;

    public SkinModel(String str, String str2, String str3) {
        this.bgColor = str;
        this.title = str2;
        this.tag = str3;
    }

    public String getBgColor() {
        String str = this.bgColor;
        return str == null ? "" : str;
    }

    public String getTag() {
        String str = this.tag;
        return str == null ? "" : str;
    }

    public String getTitle() {
        String str = this.title;
        return str == null ? "" : str;
    }

    public void setBgColor(String str) {
        this.bgColor = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
