package com.biquge.ebook.app.bean;

/* loaded from: classes8.dex */
public class BigDataAgentBean {
    public String app_id;
    public String app_key;
    public String host;
    public boolean openflag;
    public int rd_interval;
    public int rep_interval;

    public String getApp_id() {
        String str = this.app_id;
        return str == null ? "" : str;
    }

    public String getApp_key() {
        String str = this.app_key;
        return str == null ? "" : str;
    }

    public String getHost() {
        String str = this.host;
        return str == null ? "" : str;
    }

    public int getRd_interval() {
        return this.rd_interval;
    }

    public int getRep_interval() {
        return this.rep_interval;
    }

    public boolean isOpenflag() {
        return this.openflag;
    }

    public void setApp_id(String str) {
        this.app_id = str;
    }

    public void setApp_key(String str) {
        this.app_key = str;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setOpenflag(boolean z) {
        this.openflag = z;
    }

    public void setRd_interval(int i) {
        this.rd_interval = i;
    }

    public void setRep_interval(int i) {
        this.rep_interval = i;
    }
}
