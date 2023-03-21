package com.biquge.ebook.app.bean;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes8.dex */
public class NewVersionBean {
    public String appid;
    public String file;
    public String info;
    public String isForce;
    public boolean isForce_user;
    public String landingtype;
    public int maxdays;
    public String md5;
    @SerializedName("new")
    public int newVersion;
    public String other_pkg;
    public int showcounts;
    public String tips;
    public String tips2;
    public int xgDay_user;

    public String getAppid() {
        String str = this.appid;
        return str == null ? "" : str;
    }

    public String getFile() {
        return this.file;
    }

    public String getInfo() {
        return this.info;
    }

    public String getIsForce() {
        return this.isForce;
    }

    public String getLandingtype() {
        return this.landingtype;
    }

    public int getMaxdays() {
        if (this.maxdays == 0) {
            this.maxdays = 7;
        }
        return this.maxdays;
    }

    public String getMd5() {
        return this.md5;
    }

    public int getNewVersion() {
        return this.newVersion;
    }

    public String getOther_pkg() {
        String str = this.other_pkg;
        return str == null ? "" : str;
    }

    public int getShowcounts() {
        if (this.showcounts <= 0) {
            this.showcounts = 1;
        }
        return this.showcounts;
    }

    public String getTips() {
        if (TextUtils.isEmpty(this.tips)) {
            this.tips = this.info;
        }
        return this.tips;
    }

    public String getTips2() {
        if (TextUtils.isEmpty(this.tips2)) {
            this.tips2 = this.info;
        }
        return this.tips2;
    }

    public int getXgDay_user() {
        return this.xgDay_user;
    }

    public boolean isForce() {
        return "yes".equalsIgnoreCase(this.isForce);
    }

    public boolean isForce_user() {
        return this.isForce_user;
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setFile(String str) {
        this.file = str;
    }

    public void setForce_user(boolean z) {
        this.isForce_user = z;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setIsForce(String str) {
        this.isForce = str;
    }

    public void setLandingtype(String str) {
        this.landingtype = str;
    }

    public void setMaxdays(int i) {
        this.maxdays = i;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setNewVersion(int i) {
        this.newVersion = i;
    }

    public void setOther_pkg(String str) {
        this.other_pkg = str;
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

    public void setXgDay_user(int i) {
        this.xgDay_user = i;
    }
}
