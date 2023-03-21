package com.biquge.ebook.app.bean;

import java.io.Serializable;

/* loaded from: classes8.dex */
public class HomenavmenuBean implements Serializable {
    public static final long serialVersionUID = -607156482917682039L;
    public String icon;
    public String id;
    public String landingtype;
    public String menu;
    public String to;
    public int ver;

    public String getIcon() {
        return this.icon;
    }

    public String getId() {
        return this.id;
    }

    public String getLandingtype() {
        return this.landingtype;
    }

    public String getMenu() {
        return this.menu;
    }

    public String getTo() {
        return this.to;
    }

    public int getVer() {
        return this.ver;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLandingtype(String str) {
        this.landingtype = str;
    }

    public void setMenu(String str) {
        this.menu = str;
    }

    public void setTo(String str) {
        this.to = str;
    }

    public void setVer(int i) {
        this.ver = i;
    }
}
