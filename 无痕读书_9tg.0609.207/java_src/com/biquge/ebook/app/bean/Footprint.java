package com.biquge.ebook.app.bean;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class Footprint extends LitePalSupport implements MultiItemEntity {
    public String author;
    public String category;
    public String content;
    public String icon;
    public int itemType;
    public String name;
    public String novelId;
    public String saveTime;

    public String getAuthor() {
        return this.author;
    }

    public String getCategory() {
        return this.category;
    }

    public String getContent() {
        return this.content;
    }

    public String getIcon() {
        return this.icon;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return this.itemType;
    }

    public String getName() {
        return this.name;
    }

    public String getNovelId() {
        return this.novelId;
    }

    public String getSaveTime() {
        return this.saveTime;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNovelId(String str) {
        this.novelId = str;
    }

    public void setSaveTime(String str) {
        this.saveTime = str;
    }
}
