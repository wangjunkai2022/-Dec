package com.biquge.ebook.app.bean;

import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class ReadPostion extends LitePalSupport implements Serializable {
    public static final long serialVersionUID = 7761534405127391351L;
    public String bookId;
    public int readPostion;

    public String getBookId() {
        return this.bookId;
    }

    public int getReadPostion() {
        return this.readPostion;
    }

    public void setBookId(String str) {
        this.bookId = str;
    }

    public void setReadPostion(int i) {
        this.readPostion = i;
    }
}
