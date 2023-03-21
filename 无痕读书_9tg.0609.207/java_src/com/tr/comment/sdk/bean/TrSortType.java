package com.tr.comment.sdk.bean;
/* loaded from: classes7.dex */
public enum TrSortType {
    HOT("hottest"),
    LAST("lattest");
    
    public final String name;

    TrSortType(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
