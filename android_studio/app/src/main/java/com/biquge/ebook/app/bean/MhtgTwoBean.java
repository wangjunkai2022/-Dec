package com.biquge.ebook.app.bean;

/* loaded from: classes8.dex */
public class MhtgTwoBean {
    public String apkurl;
    public int maxdays;
    public String md5;
    public int moredays;
    public boolean openflag;
    public String pgname;
    public int read;
    public int showcounts;
    public String tips;
    public String tips2;

    public String getApkurl() {
        return this.apkurl;
    }

    public int getMaxdays() {
        if (this.maxdays == 0) {
            this.maxdays = 10;
        }
        return this.maxdays;
    }

    public String getMd5() {
        return this.md5;
    }

    public int getMoredays() {
        return this.moredays;
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

    public int getShowcounts() {
        if (this.showcounts <= 0) {
            this.showcounts = 1;
        }
        return this.showcounts;
    }

    public String getTips() {
        return this.tips;
    }

    public String getTips2() {
        return this.tips2;
    }

    public boolean isOpenflag() {
        return this.openflag;
    }

    public void setApkurl(String str) {
        this.apkurl = str;
    }

    public void setMaxdays(int i) {
        this.maxdays = i;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setMoredays(int i) {
        this.moredays = i;
    }

    public void setOpenflag(boolean z) {
        this.openflag = z;
    }

    public void setPgname(String str) {
        this.pgname = str;
    }

    public void setRead(int i) {
        this.read = i;
    }

    public void setShowcounts(int i) {
        this.showcounts = i;
    }

    public void setTips(String str) {
        this.tips = str;
    }

    public void setTips2(String str) {
        this.tips2 = str;
    }
}
