package com.manhua.data.bean;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.io.Serializable;
import java.util.List;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class ComicCollectBean extends LitePalSupport implements Serializable, MultiItemEntity {
    public static final long serialVersionUID = 7087654025343649533L;
    public long addTime;
    public String author;
    public String bookType;
    public String collectId;
    public String desc;
    public int fileType;
    public String firstChapterId;
    public String groupBookCount;
    public List<ComicCollectBean> groupBooks;
    public List<String> groupIcons;
    public String groupId;
    public String groupTitle;
    public String icon;
    public int isGroup;
    public boolean isNew;
    public int itemType;
    public String lastCapterId;
    public String lastCapterName;
    public String lastUpdateTime;
    public String loginName;
    public int max;
    public String name;
    public int progress;
    public String readChapterId;
    public String readChapterName;
    public int readPage;
    public String saveTime;
    public int sourceType;
    public int state;
    public String stickTime;
    public String subscribeTime;

    public long getAddTime() {
        return this.addTime;
    }

    public String getAuthor() {
        return this.author;
    }

    public String getBookType() {
        return this.bookType;
    }

    public String getCollectId() {
        return this.collectId;
    }

    public String getDbBaseObjId() {
        return String.valueOf(super.getBaseObjId());
    }

    public String getDesc() {
        return this.desc;
    }

    public int getFileType() {
        return this.fileType;
    }

    public String getFirstChapterId() {
        return this.firstChapterId;
    }

    public String getGroupBookCount() {
        return this.groupBookCount;
    }

    public List<ComicCollectBean> getGroupBooks() {
        return this.groupBooks;
    }

    public List<String> getGroupIcons() {
        return this.groupIcons;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getGroupTitle() {
        return this.groupTitle;
    }

    public String getIcon() {
        return this.icon;
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
        return this.lastCapterId;
    }

    public String getLastCapterName() {
        return this.lastCapterName;
    }

    public String getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public String getLoginName() {
        return this.loginName;
    }

    public int getMax() {
        return this.max;
    }

    public String getName() {
        return this.name;
    }

    public int getProgress() {
        return this.progress;
    }

    public String getReadChapterId() {
        return this.readChapterId;
    }

    public String getReadChapterName() {
        return this.readChapterName;
    }

    public int getReadPage() {
        return this.readPage;
    }

    public String getSaveTime() {
        return this.saveTime;
    }

    public int getSourceType() {
        return this.sourceType;
    }

    public int getState() {
        return this.state;
    }

    public String getStickTime() {
        return this.stickTime;
    }

    public String getSubscribeTime() {
        String str = this.subscribeTime;
        return str == null ? "" : str;
    }

    public boolean isComicSource() {
        return this.sourceType == 1;
    }

    public boolean isGroup() {
        return getIsGroup() == 1;
    }

    public boolean isLocalBook(int i) {
        return i == 1;
    }

    public boolean isNew() {
        return this.isNew;
    }

    public void setAddTime(long j) {
        this.addTime = j;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setBookType(String str) {
        this.bookType = str;
    }

    public void setCollectId(String str) {
        this.collectId = str;
    }

    public void setDesc(String str) {
        this.desc = str;
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

    public void setGroupBooks(List<ComicCollectBean> list) {
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

    public void setMax(int i) {
        this.max = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNew(boolean z) {
        this.isNew = z;
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

    public void setSourceType(int i) {
        this.sourceType = i;
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
}
