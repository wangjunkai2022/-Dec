package com.expand.videoplayer.bean;

import java.io.Serializable;

/* loaded from: classes8.dex */
public class CategoryYear implements Serializable {
    public static final long serialVersionUID = 873820332229281977L;
    public String id;
    public String name;

    public CategoryYear(String str, String str2) {
        this.name = str;
        this.id = str2;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }
}
