package com.biquge.ebook.app.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class ExternalWebSite implements Serializable {
    public static final long serialVersionUID = 2746925373412559814L;
    public List<WebSiteBean> items;

    /* loaded from: classes8.dex */
    public static class WebSiteBean implements Serializable {
        public static final long serialVersionUID = 7521876848766428573L;
        public String id;
        public boolean isRuleSite;
        public String name;
        public int siteType;
        public String url;

        public String getId() {
            String str = this.id;
            return str == null ? "" : str;
        }

        public String getName() {
            String str = this.name;
            return str == null ? "" : str;
        }

        public int getSiteType() {
            return this.siteType;
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public boolean isRuleSite() {
            return this.isRuleSite;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setRuleSite(boolean z) {
            this.isRuleSite = z;
        }

        public void setSiteType(int i) {
            this.siteType = i;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public List<WebSiteBean> getItems() {
        List<WebSiteBean> list = this.items;
        return list == null ? new ArrayList() : list;
    }

    public void setItems(List<WebSiteBean> list) {
        this.items = list;
    }
}
