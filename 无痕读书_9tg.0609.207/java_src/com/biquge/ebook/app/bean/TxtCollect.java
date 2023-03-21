package com.biquge.ebook.app.bean;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class TxtCollect extends LitePalSupport implements MultiItemEntity {
    public int itemType;
    public String title;
    public String type;
    public String url;

    public TxtCollect() {
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return this.itemType;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public TxtCollect(String str, String str2, String str3) {
        this.title = str;
        this.url = str2;
        this.type = str3;
    }
}
