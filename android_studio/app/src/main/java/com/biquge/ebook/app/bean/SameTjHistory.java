package com.biquge.ebook.app.bean;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class SameTjHistory extends LitePalSupport implements MultiItemEntity {
    public String cname;
    public String data;
    public String desc;
    public String historyData;
    public String img;
    public int itemType;
    public String name;
    public String protxt;
    public long readTime;
    public String sId;
    public String type;

    public String getCname() {
        String str = this.cname;
        return str == null ? "" : str;
    }

    public String getData() {
        String str = this.data;
        return str == null ? "" : str;
    }

    public String getDesc() {
        String str = this.desc;
        return str == null ? "" : str;
    }

    public String getHistoryData() {
        String str = this.historyData;
        return str == null ? "" : str;
    }

    public String getImg() {
        String str = this.img;
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

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getProtxt() {
        String str = this.protxt;
        return str == null ? "" : str;
    }

    public long getReadTime() {
        return this.readTime;
    }

    public String getType() {
        String str = this.type;
        return str == null ? "" : str;
    }

    public String getsId() {
        String str = this.sId;
        return str == null ? "" : str;
    }

    public void setCname(String str) {
        this.cname = str;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setHistoryData(String str) {
        this.historyData = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setProtxt(String str) {
        this.protxt = str;
    }

    public void setReadTime(long j) {
        this.readTime = j;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setsId(String str) {
        this.sId = str;
    }
}
