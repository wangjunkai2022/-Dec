package com.biquge.ebook.app.bean;
/* loaded from: classes8.dex */
public class MhtgBean {
    public String apkurl;
    public String md5;
    public String pgname;
    public int read;
    public int retry;
    public String tips;

    public String getApkurl() {
        return this.apkurl;
    }

    public String getMd5() {
        return this.md5;
    }

    public String getPgname() {
        return this.pgname;
    }

    public int getRead() {
        if (this.read == 0) {
            this.read = 30;
        }
        return this.read;
    }

    public int getRetry() {
        if (this.retry == 0) {
            this.retry = 5;
        }
        return this.retry;
    }

    public String getTips() {
        return this.tips;
    }

    public void setApkurl(String str) {
        this.apkurl = str;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setPgname(String str) {
        this.pgname = str;
    }

    public void setRead(int i) {
        this.read = i;
    }

    public void setRetry(int i) {
        this.retry = i;
    }

    public void setTips(String str) {
        this.tips = str;
    }
}
