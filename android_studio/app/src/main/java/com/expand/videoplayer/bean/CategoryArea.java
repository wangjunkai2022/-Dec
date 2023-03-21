package com.expand.videoplayer.bean;

import java.io.Serializable;

/* loaded from: classes8.dex */
public class CategoryArea implements Serializable {
    public static final long serialVersionUID = -2364636020250524121L;
    public String NameDe;
    public String id;
    public String name;

    public CategoryArea(String str, String str2) {
        this.name = str;
        this.id = str2;
    }

    public String getId() {
        String str = this.id;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getNameDe() {
        String str = this.NameDe;
        return str == null ? "" : str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNameDe(String str) {
        this.NameDe = str;
    }
}
