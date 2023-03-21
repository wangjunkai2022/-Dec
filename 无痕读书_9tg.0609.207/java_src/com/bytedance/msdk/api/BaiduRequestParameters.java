package com.bytedance.msdk.api;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes8.dex */
public class BaiduRequestParameters {
    public static final int ADS_TYPE_DOWNLOAD = 2;
    public static final int ADS_TYPE_OPENPAGE = 1;
    public static final int DOWNLOAD_APP_CONFIRM_ALWAYS = 2;
    public static final int DOWNLOAD_APP_CONFIRM_CUSTOM_BY_APP = 4;
    public static final int DOWNLOAD_APP_CONFIRM_NEVER = 3;
    public static final int DOWNLOAD_APP_CONFIRM_ONLY_MOBILE = 1;
    public static final int MAX_ASSETS_RESERVED = 15;

    /* renamed from: case  reason: not valid java name */
    public int f8857case;

    /* renamed from: do  reason: not valid java name */
    public final String f8858do;

    /* renamed from: for  reason: not valid java name */
    public Map<String, String> f8859for;

    /* renamed from: if  reason: not valid java name */
    public boolean f8860if;

    /* renamed from: new  reason: not valid java name */
    public int f8861new;

    /* renamed from: try  reason: not valid java name */
    public int f8862try;

    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: do  reason: not valid java name */
        public String f8864do;

        /* renamed from: if  reason: not valid java name */
        public Map<String, String> f8866if = new HashMap();

        /* renamed from: for  reason: not valid java name */
        public boolean f8865for = false;

        /* renamed from: new  reason: not valid java name */
        public int f8867new = 640;

        /* renamed from: try  reason: not valid java name */
        public int f8868try = 480;

        /* renamed from: case  reason: not valid java name */
        public int f8863case = 1;

        public final Builder addExtra(String str, String str2) {
            if ("page_title".equals(str)) {
                this.f8866if.put("mpt", String.valueOf(1));
            }
            this.f8866if.put(str, str2);
            return this;
        }

        public final BaiduRequestParameters build() {
            return new BaiduRequestParameters(this, null);
        }

        @Deprecated
        public final Builder confirmDownloading(boolean z) {
            if (z) {
                downloadAppConfirmPolicy(2);
            } else {
                downloadAppConfirmPolicy(3);
            }
            return this;
        }

        public final Builder downloadAppConfirmPolicy(int i) {
            this.f8863case = i;
            return this;
        }

        public final Builder setHeight(int i) {
            this.f8868try = i;
            return this;
        }

        public final Builder setKeywords(String str) {
            this.f8864do = str;
            return this;
        }

        public final Builder setWidth(int i) {
            this.f8867new = i;
            return this;
        }
    }

    public BaiduRequestParameters(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f8861new = 0;
        this.f8862try = 0;
        this.f8858do = builder.f8864do;
        this.f8861new = builder.f8867new;
        this.f8862try = builder.f8868try;
        this.f8860if = builder.f8865for;
        this.f8857case = builder.f8863case;
        setExtras(builder.f8866if);
    }

    public int getAPPConfirmPolicy() {
        return this.f8857case;
    }

    public Map<String, String> getExtras() {
        return this.f8859for;
    }

    public int getHeight() {
        return this.f8862try;
    }

    public final String getKeywords() {
        return this.f8858do;
    }

    public int getWidth() {
        return this.f8861new;
    }

    public boolean isConfirmDownloading() {
        return this.f8860if;
    }

    public void setExtras(Map<String, String> map) {
        this.f8859for = map;
    }

    public HashMap<String, Object> toHashMap() {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("mKeywords", this.f8858do);
        hashMap.put("confirmDownloading", Boolean.valueOf(this.f8860if));
        HashMap hashMap2 = new HashMap();
        Map<String, String> map = this.f8859for;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                hashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        hashMap.put("extras", hashMap2);
        return hashMap;
    }
}
