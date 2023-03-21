package com.biquge.ebook.app.ui.webread.entity;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class WebSiteBean implements Serializable {
    public static final long serialVersionUID = 7264298036996045778L;
    public String author;
    public List<WebBook.ChaptersBean> batchOptionList;
    public String chapterUrl;
    public String desc;
    public String firstChapterUrl;
    public String img;
    public boolean isRuleSite;
    public String lastChapterName;
    public String lastChapterTime;
    public String lastChapterUrl;
    public List<ChapterBean> lastList;
    public String novelId;
    public String openName;
    public String openUrl;
    public String readChapterUrl;
    public boolean searchBook;
    public String title;

    public String getAuthor() {
        String str = this.author;
        return str == null ? "" : str;
    }

    public List<WebBook.ChaptersBean> getBatchOptionList() {
        List<WebBook.ChaptersBean> list = this.batchOptionList;
        return list == null ? new ArrayList() : list;
    }

    public String getChapterUrl() {
        String str = this.chapterUrl;
        return str == null ? "" : str;
    }

    public String getDesc() {
        String str = this.desc;
        return str == null ? "" : str;
    }

    public String getFirstChapterUrl() {
        String str = this.firstChapterUrl;
        return str == null ? "" : str;
    }

    public String getImg() {
        String str = this.img;
        return str == null ? "" : str;
    }

    public String getLastChapterName() {
        String str = this.lastChapterName;
        return str == null ? "" : str;
    }

    public String getLastChapterTime() {
        String str = this.lastChapterTime;
        return str == null ? "" : str;
    }

    public String getLastChapterUrl() {
        String str = this.lastChapterUrl;
        return str == null ? "" : str;
    }

    public List<ChapterBean> getLastList() {
        List<ChapterBean> list = this.lastList;
        return list == null ? new ArrayList() : list;
    }

    public String getNovelId() {
        String str = this.novelId;
        return str == null ? "" : str;
    }

    public String getOpenName() {
        String str = this.openName;
        return str == null ? "" : str;
    }

    public String getOpenUrl() {
        if (TextUtils.isEmpty(this.openUrl)) {
            this.openUrl = getChapterUrl();
        }
        String str = this.openUrl;
        return str == null ? "" : str;
    }

    public String getReadChapterUrl() {
        String str = this.readChapterUrl;
        return str == null ? "" : str;
    }

    public String getTitle() {
        String str = this.title;
        return str == null ? "" : str;
    }

    public boolean isRuleSite() {
        return this.isRuleSite;
    }

    public boolean isSearchBook() {
        return this.searchBook;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setBatchOptionList(List<WebBook.ChaptersBean> list) {
        this.batchOptionList = list;
    }

    public void setChapterUrl(String str) {
        this.chapterUrl = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setFirstChapterUrl(String str) {
        this.firstChapterUrl = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLastChapterName(String str) {
        this.lastChapterName = str;
    }

    public void setLastChapterTime(String str) {
        this.lastChapterTime = str;
    }

    public void setLastChapterUrl(String str) {
        this.lastChapterUrl = str;
    }

    public void setLastList(List<ChapterBean> list) {
        this.lastList = list;
    }

    public void setNovelId(String str) {
        this.novelId = str;
    }

    public void setOpenName(String str) {
        this.openName = str;
    }

    public void setOpenUrl(String str) {
        this.openUrl = str;
    }

    public void setReadChapterUrl(String str) {
        this.readChapterUrl = str;
    }

    public void setRuleSite(boolean z) {
        this.isRuleSite = z;
    }

    public void setSearchBook(boolean z) {
        this.searchBook = z;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
