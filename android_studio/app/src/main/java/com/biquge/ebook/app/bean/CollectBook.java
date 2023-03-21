package com.biquge.ebook.app.bean;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class CollectBook extends LitePalSupport implements Serializable, MultiItemEntity {
    public static final long serialVersionUID = 2405213476970406797L;
    public String MajorCharacters;
    public List<String> TagJson;
    public long addTime;
    public String author;
    public String bookStatus;
    public String bookType;
    public String chapterUrl;
    public String collectId;
    public String desc;
    public String externalUrl;
    public int fileType;
    public String firstChapterId;
    public String groupBookCount;
    public List<CollectBook> groupBooks;
    public List<String> groupIcons;
    public String groupId;
    public String groupTitle;
    public String icon;
    public int isGroup;
    public boolean isNew;
    public boolean isWebSite;
    public int itemType;
    public String lastCapterId;
    public String lastCapterName;
    public String lastUpdateTime;
    public String loginName;
    public int max;
    public String name;
    public int percentage;
    public int progress;
    public String readChapterId;
    public String readChapterName;
    public int readPage;
    public String saveTime;
    public int state;
    public String stickTime;
    public String subscribeTime;

    public long getAddTime() {
        return this.addTime;
    }

    public String getAuthor() {
        String str = this.author;
        return str == null ? "" : str;
    }

    public String getBookStatus() {
        String str = this.bookStatus;
        return str == null ? "" : str;
    }

    public String getBookType() {
        String str = this.bookType;
        return str == null ? "" : str;
    }

    public String getChapterUrl() {
        String str = this.chapterUrl;
        return str == null ? "" : str;
    }

    public String getCollectId() {
        String str = this.collectId;
        return str == null ? "" : str;
    }

    public String getDbBaseObjId() {
        return String.valueOf(super.getBaseObjId());
    }

    public String getDesc() {
        String str = this.desc;
        return str == null ? "" : str;
    }

    public String getExternalUrl() {
        String str = this.externalUrl;
        return str == null ? "" : str;
    }

    public int getFileType() {
        return this.fileType;
    }

    public String getFirstChapterId() {
        String str = this.firstChapterId;
        return str == null ? "" : str;
    }

    public String getGroupBookCount() {
        String str = this.groupBookCount;
        return str == null ? "" : str;
    }

    public List<CollectBook> getGroupBooks() {
        return this.groupBooks;
    }

    public List<String> getGroupIcons() {
        return this.groupIcons;
    }

    public String getGroupId() {
        String str = this.groupId;
        return str == null ? "" : str;
    }

    public String getGroupTitle() {
        String str = this.groupTitle;
        return str == null ? "" : str;
    }

    public String getIcon() {
        String str = this.icon;
        return str == null ? "" : str;
    }

    public int getIsGroup() {
        return this.isGroup;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        int i = this.itemType;
        if (i == 0) {
            return 2;
        }
        return i;
    }

    public String getLastCapterId() {
        String str = this.lastCapterId;
        return str == null ? "" : str;
    }

    public String getLastCapterName() {
        String str = this.lastCapterName;
        return str == null ? "" : str;
    }

    public String getLastUpdateTime() {
        String str = this.lastUpdateTime;
        return str == null ? "" : str;
    }

    public String getLoginName() {
        String str = this.loginName;
        return str == null ? "" : str;
    }

    public String getMajorCharacters() {
        String str = this.MajorCharacters;
        return str == null ? "" : str;
    }

    public int getMax() {
        return this.max;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public int getPercentage() {
        return this.percentage;
    }

    public int getProgress() {
        return this.progress;
    }

    public String getReadChapterId() {
        String str = this.readChapterId;
        return str == null ? "" : str;
    }

    public String getReadChapterName() {
        String str = this.readChapterName;
        return str == null ? "" : str;
    }

    public int getReadPage() {
        return this.readPage;
    }

    public String getSaveTime() {
        String str = this.saveTime;
        return str == null ? "" : str;
    }

    public int getState() {
        return this.state;
    }

    public String getStickTime() {
        String str = this.stickTime;
        return str == null ? "" : str;
    }

    public String getSubscribeTime() {
        String str = this.subscribeTime;
        return str == null ? "" : str;
    }

    public List<String> getTagJson() {
        List<String> list = this.TagJson;
        return list == null ? new ArrayList() : list;
    }

    public boolean isFinishStatus() {
        return "完结".equals(getBookStatus());
    }

    public boolean isGroup() {
        return getIsGroup() == 1;
    }

    public boolean isLocalBook() {
        return getFileType() == 1;
    }

    public boolean isNew() {
        return this.isNew;
    }

    public boolean isTxt() {
        return getFileType() == 2;
    }

    public boolean isWebSite() {
        return this.isWebSite;
    }

    public boolean isZip() {
        return getFileType() == 3;
    }

    public void setAddTime(long j) {
        this.addTime = j;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setBookStatus(String str) {
        this.bookStatus = str;
    }

    public void setBookType(String str) {
        this.bookType = str;
    }

    public void setChapterUrl(String str) {
        this.chapterUrl = str;
    }

    public void setCollectId(String str) {
        this.collectId = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setExternalUrl(String str) {
        this.externalUrl = str;
    }

    public void setFileType(int i) {
        this.fileType = i;
    }

    public void setFirstChapterId(String str) {
        this.firstChapterId = str;
    }

    public void setGroupBookCount(String str) {
        this.groupBookCount = str;
    }

    public void setGroupBooks(List<CollectBook> list) {
        this.groupBooks = list;
    }

    public void setGroupIcons(List<String> list) {
        this.groupIcons = list;
    }

    public void setGroupId(String str) {
        this.groupId = str;
    }

    public void setGroupTitle(String str) {
        this.groupTitle = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setIsGroup(int i) {
        this.isGroup = i;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setLastCapterId(String str) {
        this.lastCapterId = str;
    }

    public void setLastCapterName(String str) {
        this.lastCapterName = str;
    }

    public void setLastUpdateTime(String str) {
        this.lastUpdateTime = str;
    }

    public void setLoginName(String str) {
        this.loginName = str;
    }

    public void setMajorCharacters(String str) {
        this.MajorCharacters = str;
    }

    public void setMax(int i) {
        this.max = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNew(boolean z) {
        this.isNew = z;
    }

    public void setPercentage(int i) {
        this.percentage = i;
    }

    public void setProgress(int i) {
        this.progress = i;
    }

    public void setReadChapterId(String str) {
        this.readChapterId = str;
    }

    public void setReadChapterName(String str) {
        this.readChapterName = str;
    }

    public void setReadPage(int i) {
        this.readPage = i;
    }

    public void setSaveTime(String str) {
        this.saveTime = str;
    }

    public void setState(int i) {
        this.state = i;
    }

    public void setStickTime(String str) {
        this.stickTime = str;
    }

    public void setSubscribeTime(String str) {
        this.subscribeTime = str;
    }

    public void setTagJson(List<String> list) {
        this.TagJson = list;
    }

    public void setWebSite(boolean z) {
        this.isWebSite = z;
    }
}
