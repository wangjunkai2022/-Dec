package com.biquge.ebook.app.bean;

import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class ChapterBean extends LitePalSupport implements Serializable {
    public static final long serialVersionUID = 5899134147906197254L;
    public String HostKey;
    public String changeSourceUrl;
    public String content;
    public boolean hasContent;
    public boolean isCache;
    public boolean isWebSite;
    public String name;
    public String need_share;
    public String nid;
    public String novelId;
    public String oid;
    public String pid;
    public int position;
    public String rollName;
    public String url;
    public String webChapterUrl;

    public String getChangeSourceUrl() {
        String str = this.changeSourceUrl;
        return str == null ? "" : str;
    }

    public String getContent() {
        String str = this.content;
        return str == null ? "" : str;
    }

    public String getHostKey() {
        String str = this.HostKey;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getNeed_share() {
        String str = this.need_share;
        return str == null ? "" : str;
    }

    public String getNid() {
        String str = this.nid;
        return str == null ? "" : str;
    }

    public String getNovelId() {
        String str = this.novelId;
        return str == null ? "" : str;
    }

    public String getOid() {
        String str = this.oid;
        return str == null ? "" : str;
    }

    public String getPid() {
        String str = this.pid;
        return str == null ? "" : str;
    }

    public int getPosition() {
        return this.position;
    }

    public String getRollName() {
        String str = this.rollName;
        return str == null ? "" : str;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public String getWebChapterUrl() {
        String str = this.webChapterUrl;
        return str == null ? "" : str;
    }

    public boolean isCache() {
        return this.isCache;
    }

    public boolean isGroup() {
        return "ROLLNAME_LAYOUT_KEY".equals(getUrl());
    }

    public boolean isHasContent() {
        return this.hasContent;
    }

    public boolean isWebSite() {
        return this.isWebSite;
    }

    public void setCache(boolean z) {
        this.isCache = z;
    }

    public void setChangeSourceUrl(String str) {
        this.changeSourceUrl = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setHasContent(boolean z) {
        this.hasContent = z;
    }

    public void setHostKey(String str) {
        this.HostKey = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNeed_share(String str) {
        this.need_share = str;
    }

    public void setNid(String str) {
        this.nid = str;
    }

    public void setNovelId(String str) {
        this.novelId = str;
    }

    public void setOid(String str) {
        this.oid = str;
    }

    public void setPid(String str) {
        this.pid = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setRollName(String str) {
        this.rollName = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWebChapterUrl(String str) {
        this.webChapterUrl = str;
    }

    public void setWebSite(boolean z) {
        this.isWebSite = z;
    }
}
