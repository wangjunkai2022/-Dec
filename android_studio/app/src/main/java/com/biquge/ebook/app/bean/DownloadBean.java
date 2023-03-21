package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class DownloadBean extends LitePalSupport {
    public int max;
    public String name;
    public String novelId;
    public int progress;
    public int state;

    public int getMax() {
        return this.max;
    }

    public String getName() {
        return this.name;
    }

    public String getNovelId() {
        return this.novelId;
    }

    public int getProgress() {
        return this.progress;
    }

    public int getState() {
        return this.state;
    }

    public void setMax(int i) {
        this.max = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNovelId(String str) {
        this.novelId = str;
    }

    public void setProgress(int i) {
        this.progress = i;
    }

    public void setState(int i) {
        this.state = i;
    }
}
