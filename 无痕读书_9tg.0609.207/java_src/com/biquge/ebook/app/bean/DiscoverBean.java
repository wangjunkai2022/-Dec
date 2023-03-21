package com.biquge.ebook.app.bean;
/* loaded from: classes8.dex */
public class DiscoverBean {
    public String discoverIcon;
    public String discoverTitle;
    public String discoverUrl;
    public boolean isExternalUrl;

    public String getDiscoverIcon() {
        String str = this.discoverIcon;
        return str == null ? "" : str;
    }

    public String getDiscoverTitle() {
        String str = this.discoverTitle;
        return str == null ? "" : str;
    }

    public String getDiscoverUrl() {
        String str = this.discoverUrl;
        return str == null ? "" : str;
    }

    public boolean isExternalUrl() {
        return this.isExternalUrl;
    }

    public void setDiscoverIcon(String str) {
        this.discoverIcon = str;
    }

    public void setDiscoverTitle(String str) {
        this.discoverTitle = str;
    }

    public void setDiscoverUrl(String str) {
        this.discoverUrl = str;
    }

    public void setExternalUrl(boolean z) {
        this.isExternalUrl = z;
    }
}
