package com.biquge.ebook.app.bean;

import android.text.TextUtils;
/* loaded from: classes8.dex */
public class WebConfBean {
    public String az_xz_url;
    public String az_xz_url2;
    public String bdaivoice2;
    public String email;
    public String invitedq;
    public String invitenoad;
    public String ios_xz_url;
    public String name;
    public String qrcodedroid;
    public String qrcodeios;
    public String sharedomain;
    public String svasize;

    public String getAz_xz_url() {
        return this.az_xz_url;
    }

    public String getAz_xz_url2() {
        String str = this.az_xz_url2;
        return str == null ? "" : str;
    }

    public String getBdaivoice2() {
        if (TextUtils.isEmpty(this.bdaivoice2)) {
            this.bdaivoice2 = "https://appdown-1258671120.file.myqcloud.com/baidu_tts_2.5.zip";
        }
        return this.bdaivoice2;
    }

    public String getEmail() {
        return this.email;
    }

    public String getInvitedq() {
        String str = this.invitedq;
        return str == null ? "" : str;
    }

    public String getInvitenoad() {
        String str = this.invitenoad;
        return str == null ? "" : str;
    }

    public String getIos_xz_url() {
        return this.ios_xz_url;
    }

    public String getName() {
        return this.name;
    }

    public String getQrcodedroid() {
        return this.qrcodedroid;
    }

    public String getQrcodeios() {
        return this.qrcodeios;
    }

    public String getSharedomain() {
        String str = this.sharedomain;
        return str == null ? "" : str;
    }

    public String getSvasize() {
        if (TextUtils.isEmpty(this.svasize)) {
            this.svasize = "13.5M";
        }
        return this.svasize;
    }

    public void setAz_xz_url(String str) {
        this.az_xz_url = str;
    }

    public void setAz_xz_url2(String str) {
        this.az_xz_url2 = str;
    }

    public void setBdaivoice2(String str) {
        this.bdaivoice2 = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setInvitedq(String str) {
        this.invitedq = str;
    }

    public void setInvitenoad(String str) {
        this.invitenoad = str;
    }

    public void setIos_xz_url(String str) {
        this.ios_xz_url = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setQrcodedroid(String str) {
        this.qrcodedroid = str;
    }

    public void setQrcodeios(String str) {
        this.qrcodeios = str;
    }

    public void setSharedomain(String str) {
        this.sharedomain = str;
    }

    public void setSvasize(String str) {
        this.svasize = str;
    }
}
