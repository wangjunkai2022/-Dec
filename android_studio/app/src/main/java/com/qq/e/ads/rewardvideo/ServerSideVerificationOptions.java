package com.qq.e.ads.rewardvideo;

import org.json.JSONObject;

/* loaded from: classes8.dex */
public class ServerSideVerificationOptions {
    public static final String TRANS_ID = "transId";

    /* renamed from: a  reason: collision with root package name */
    public String f11519a;
    public String b;
    public final JSONObject c;

    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public String f11520a;
        public String b;

        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public Builder setCustomData(String str) {
            this.f11520a = str;
            return this;
        }

        public Builder setUserId(String str) {
            this.b = str;
            return this;
        }
    }

    public ServerSideVerificationOptions(Builder builder) {
        this.c = new JSONObject();
        this.f11519a = builder.f11520a;
        this.b = builder.b;
    }

    public String getCustomData() {
        return this.f11519a;
    }

    public JSONObject getOptions() {
        return this.c;
    }

    public String getUserId() {
        return this.b;
    }
}
