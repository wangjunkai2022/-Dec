package com.biquge.ebook.app.bean;

import java.io.Serializable;
/* loaded from: classes8.dex */
public class ConfigMessage implements Serializable {
    public static final long serialVersionUID = -689887134976256164L;
    public String clicktarget;
    public String id;
    public String istop;
    public String landingtype;
    public String msgintro;
    public String navtitle;
    public String pdcover;
    public String time;

    public String getClicktarget() {
        String str = this.clicktarget;
        return str == null ? "" : str;
    }

    public String getId() {
        String str = this.id;
        return str == null ? "" : str;
    }

    public String getIstop() {
        String str = this.istop;
        return str == null ? "" : str;
    }

    public String getLandingtype() {
        String str = this.landingtype;
        return str == null ? "" : str;
    }

    public String getMsgintro() {
        String str = this.msgintro;
        return str == null ? "" : str;
    }

    public String getNavtitle() {
        String str = this.navtitle;
        return str == null ? "" : str;
    }

    public String getPdcover() {
        String str = this.pdcover;
        return str == null ? "" : str;
    }

    public String getTime() {
        String str = this.time;
        return str == null ? "" : str;
    }

    public void setClicktarget(String str) {
        this.clicktarget = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIstop(String str) {
        this.istop = str;
    }

    public void setLandingtype(String str) {
        this.landingtype = str;
    }

    public void setMsgintro(String str) {
        this.msgintro = str;
    }

    public void setNavtitle(String str) {
        this.navtitle = str;
    }

    public void setPdcover(String str) {
        this.pdcover = str;
    }

    public void setTime(String str) {
        this.time = str;
    }
}
