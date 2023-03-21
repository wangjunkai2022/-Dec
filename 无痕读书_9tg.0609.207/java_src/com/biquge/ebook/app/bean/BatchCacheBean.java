package com.biquge.ebook.app.bean;

import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class BatchCacheBean extends LitePalSupport implements Serializable {
    public static final long serialVersionUID = -6538716586216949418L;
    public String batchValue;
    public String bookId;

    public String getBatchValue() {
        return this.batchValue;
    }

    public String getBookId() {
        String str = this.bookId;
        return str == null ? "" : str;
    }

    public void setBatchValue(String str) {
        this.batchValue = str;
    }

    public void setBookId(String str) {
        this.bookId = str;
    }
}
