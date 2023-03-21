package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class SameTjConfig extends LitePalSupport {
    public long rewardTime;
    public int showCount;
    public String tId;

    public long getRewardTime() {
        return this.rewardTime;
    }

    public int getShowCount() {
        return this.showCount;
    }

    public String gettId() {
        String str = this.tId;
        return str == null ? "" : str;
    }

    public void setRewardTime(long j) {
        this.rewardTime = j;
    }

    public void setShowCount(int i) {
        this.showCount = i;
    }

    public void settId(String str) {
        this.tId = str;
    }
}
