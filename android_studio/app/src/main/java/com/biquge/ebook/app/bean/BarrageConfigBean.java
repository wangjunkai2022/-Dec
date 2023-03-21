package com.biquge.ebook.app.bean;

/* loaded from: classes8.dex */
public class BarrageConfigBean {
    public int get_count;
    public String get_txtlink_dm;
    public String get_type;
    public int per_page;

    public int getGet_count() {
        return this.get_count;
    }

    public String getGet_txtlink_dm() {
        String str = this.get_txtlink_dm;
        return str == null ? "" : str;
    }

    public String getGet_type() {
        String str = this.get_type;
        return str == null ? "" : str;
    }

    public int getPer_page() {
        return this.per_page;
    }

    public void setGet_count(int i) {
        this.get_count = i;
    }

    public void setGet_txtlink_dm(String str) {
        this.get_txtlink_dm = str;
    }

    public void setGet_type(String str) {
        this.get_type = str;
    }

    public void setPer_page(int i) {
        this.per_page = i;
    }
}
