package com.biquge.ebook.app.bean;
/* loaded from: classes8.dex */
public class NewYyConfBean {
    public String bd_tts_err;
    public String extra_btn;
    public String not_jixing;
    public String vendor;
    public boolean wifi_tts_on;
    public String wifi_tts_tips;

    public String getBd_tts_err() {
        String str = this.bd_tts_err;
        return str == null ? "" : str;
    }

    public String getExtra_btn() {
        String str = this.extra_btn;
        return str == null ? "" : str;
    }

    public String getNot_jixing() {
        String str = this.not_jixing;
        return str == null ? "" : str;
    }

    public String getVendor() {
        String str = this.vendor;
        return str == null ? "" : str;
    }

    public String getWifi_tts_tips() {
        String str = this.wifi_tts_tips;
        return str == null ? "" : str;
    }

    public boolean isWifi_tts_on() {
        return this.wifi_tts_on;
    }

    public void setBd_tts_err(String str) {
        this.bd_tts_err = str;
    }

    public void setExtra_btn(String str) {
        this.extra_btn = str;
    }

    public void setNot_jixing(String str) {
        this.not_jixing = str;
    }

    public void setVendor(String str) {
        this.vendor = str;
    }

    public void setWifi_tts_on(boolean z) {
        this.wifi_tts_on = z;
    }

    public void setWifi_tts_tips(String str) {
        this.wifi_tts_tips = str;
    }
}
