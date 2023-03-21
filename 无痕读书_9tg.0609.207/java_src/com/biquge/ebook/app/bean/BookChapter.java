package com.biquge.ebook.app.bean;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.util.Vector;
/* loaded from: classes8.dex */
public class BookChapter implements MultiItemEntity {
    public int allPage;
    public String chapterId;
    public String chapterName;
    public String hostKey;
    public String imageUrl;
    public int itemType;
    public String need_share;
    public String novelid;
    public int readPage;
    public String url;
    public Vector<String> values;

    public int getAllPage() {
        return this.allPage;
    }

    public String getChapterId() {
        String str = this.chapterId;
        return str == null ? "" : str;
    }

    public String getChapterName() {
        String str = this.chapterName;
        return str == null ? "" : str;
    }

    public String getHostKey() {
        String str = this.hostKey;
        return str == null ? "" : str;
    }

    public String getImageUrl() {
        String str = this.imageUrl;
        return str == null ? "" : str;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        int i = this.itemType;
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public String getNeed_share() {
        if ("MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY".equals(this.imageUrl) || "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY".equals(this.imageUrl)) {
            return "yes";
        }
        String str = this.need_share;
        return str == null ? "" : str;
    }

    public String getNovelid() {
        String str = this.novelid;
        return str == null ? "" : str;
    }

    public int getReadPage() {
        return this.readPage;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public Vector<String> getValues() {
        Vector<String> vector = this.values;
        return vector == null ? new Vector<>() : vector;
    }

    public void setAllPage(int i) {
        this.allPage = i;
    }

    public void setChapterId(String str) {
        this.chapterId = str;
    }

    public void setChapterName(String str) {
        this.chapterName = str;
    }

    public void setHostKey(String str) {
        this.hostKey = str;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setNeed_share(String str) {
        this.need_share = str;
    }

    public void setNovelid(String str) {
        this.novelid = str;
    }

    public void setReadPage(int i) {
        this.readPage = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setValues(Vector<String> vector) {
        this.values = vector;
    }
}
