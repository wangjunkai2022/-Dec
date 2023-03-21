package com.biquge.ebook.app.bean;

import java.io.Serializable;
/* loaded from: classes8.dex */
public class FastSearchWord implements Serializable {
    public static final long serialVersionUID = 7199435714094165632L;
    public String word;

    public String getWord() {
        String str = this.word;
        return str == null ? "" : str;
    }

    public void setWord(String str) {
        this.word = str;
    }
}
