package com.tr.comment.sdk.bean;
/* loaded from: classes7.dex */
public class TrGgBean {
    public String adid;
    public String adpt;

    public TrGgBean(String str, String str2) {
        this.adpt = str;
        this.adid = str2;
    }

    public String getAdid() {
        String str = this.adid;
        return str == null ? "" : str;
    }

    public String getAdpt() {
        String str = this.adpt;
        return str == null ? "" : str;
    }

    public void setAdid(String str) {
        this.adid = str;
    }

    public void setAdpt(String str) {
        this.adpt = str;
    }
}
