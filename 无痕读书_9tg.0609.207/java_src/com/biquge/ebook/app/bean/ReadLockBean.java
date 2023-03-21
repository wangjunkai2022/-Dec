package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class ReadLockBean extends LitePalSupport {
    public boolean inInterval;
    public long interval;
    public String readChapterIds;
    public long readUseTime;
    public long startTime;

    public long getInterval() {
        return this.interval;
    }

    public String getReadChapterIds() {
        String str = this.readChapterIds;
        return str == null ? "" : str;
    }

    public long getReadUseTime() {
        return this.readUseTime;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public boolean isInInterval() {
        return this.inInterval;
    }

    public void setInInterval(boolean z) {
        this.inInterval = z;
    }

    public void setInterval(long j) {
        this.interval = j;
    }

    public void setReadChapterIds(String str) {
        this.readChapterIds = str;
    }

    public void setReadUseTime(long j) {
        this.readUseTime = j;
    }

    public void setStartTime(long j) {
        this.startTime = j;
    }
}
