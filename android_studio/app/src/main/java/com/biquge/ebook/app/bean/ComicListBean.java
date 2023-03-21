package com.biquge.ebook.app.bean;

import com.jni.crypt.project.CryptDesManager;
import com.manhua.data.bean.ComicBean;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class ComicListBean implements Serializable {
    public static final long serialVersionUID = -5129649559330566341L;
    public List<ComicBean> BookList;
    public boolean HasNext;

    public List<ComicBean> getBookList() {
        List<ComicBean> list = this.BookList;
        if (list == null) {
            return new ArrayList();
        }
        CryptDesManager.decodeClass(list);
        return this.BookList;
    }

    public boolean isHasNext() {
        return this.HasNext;
    }

    public void setBookList(List<ComicBean> list) {
        this.BookList = list;
    }

    public void setHasNext(boolean z) {
        this.HasNext = z;
    }
}
