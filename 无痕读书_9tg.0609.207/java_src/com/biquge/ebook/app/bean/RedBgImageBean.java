package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class RedBgImageBean extends LitePalSupport {
    public static final String RED_BG_SELECT_TYPE = "RED_BG_SELECT_TYPE";
    public static final String RED_BG_TYPE_COLOR = "4";
    public static final String RED_BG_TYPE_CUSTOM_COLOR = "5";
    public static final String RED_BG_TYPE_CUSTOM_IMAGE = "6";
    public static final String RED_BG_TYPE_EYE = "2";
    public static final String RED_BG_TYPE_IMAGE = "3";
    public static final String RED_BG_TYPE_NIGHT = "1";
    public String bgColor;
    public String bgImage;
    public String fColor;
    public String fileName;
    public String icon;
    public String name;
    public int sId;
    public String type = RED_BG_TYPE_COLOR;

    public String getBgColor() {
        String str = this.bgColor;
        return str == null ? "" : str;
    }

    public String getBgImage() {
        String str = this.bgImage;
        return str == null ? "" : str;
    }

    public String getFileName() {
        String str = this.fileName;
        return str == null ? "" : str;
    }

    public String getIcon() {
        String str = this.icon;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getType() {
        String str = this.type;
        return str == null ? "" : str;
    }

    public String getfColor() {
        String str = this.fColor;
        return str == null ? "" : str;
    }

    public int getsId() {
        return this.sId;
    }

    public void setBgColor(String str) {
        this.bgColor = str;
    }

    public void setBgImage(String str) {
        this.bgImage = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setfColor(String str) {
        this.fColor = str;
    }

    public void setsId(int i) {
        this.sId = i;
    }
}
