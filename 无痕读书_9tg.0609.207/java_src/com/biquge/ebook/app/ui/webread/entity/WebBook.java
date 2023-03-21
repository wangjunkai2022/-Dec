package com.biquge.ebook.app.ui.webread.entity;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes8.dex */
public class WebBook implements Serializable {
    public static final long serialVersionUID = -6670590152004855168L;
    public String author;
    public String bookId;
    public List<ChaptersBean> chapters;
    public String desc;
    public String firsturl;
    public String img;
    public String latestName;
    public String latestTime;
    public String name;
    public Object sign;
    public String url;
    public String webTitle;

    /* loaded from: classes8.dex */
    public static class ChaptersBean implements Serializable {
        public static final long serialVersionUID = -1746851076882267468L;
        public String name;
        public String url;

        public ChaptersBean() {
        }

        public String getName() {
            return this.name;
        }

        public String getUrl() {
            return this.url;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public ChaptersBean(String str, String str2) {
            this.name = str;
            this.url = str2;
        }
    }

    public String getAuthor() {
        return this.author;
    }

    public String getBookId() {
        return this.bookId;
    }

    public List<ChaptersBean> getChapters() {
        return this.chapters;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getFirsturl() {
        return this.firsturl;
    }

    public String getImg() {
        return this.img;
    }

    public String getLatestName() {
        List<ChaptersBean> list;
        if (TextUtils.isEmpty(this.latestName) && (list = this.chapters) != null && list.size() > 0) {
            this.latestName = this.chapters.get(0).getName();
        }
        String str = this.latestName;
        return str == null ? "" : str;
    }

    public String getLatestTime() {
        String str = this.latestTime;
        return str == null ? "" : str;
    }

    public String getName() {
        return this.name;
    }

    public Object getSign() {
        return this.sign;
    }

    public String getUrl() {
        return this.url;
    }

    public String getWebTitle() {
        return this.webTitle;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setBookId(String str) {
        this.bookId = str;
    }

    public void setChapters(List<ChaptersBean> list) {
        this.chapters = list;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setFirsturl(String str) {
        this.firsturl = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLatestName(String str) {
        this.latestName = str;
    }

    public void setLatestTime(String str) {
        this.latestTime = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSign(Object obj) {
        this.sign = obj;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWebTitle(String str) {
        this.webTitle = str;
    }
}
