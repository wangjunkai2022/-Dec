package com.manhua.data.bean;

import java.util.Map;
/* loaded from: classes8.dex */
public class ComicImageConifg {
    public String domain;
    public Map<String, String> hostKeys;
    public String key;
    public String label;

    public String getDomain() {
        String str = this.domain;
        return str == null ? "" : str;
    }

    public Map<String, String> getHostKeys() {
        return this.hostKeys;
    }

    public String getKey() {
        String str = this.key;
        return str == null ? "" : str;
    }

    public String getLabel() {
        String str = this.label;
        return str == null ? "" : str;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setHostKeys(Map<String, String> map) {
        this.hostKeys = map;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }
}
