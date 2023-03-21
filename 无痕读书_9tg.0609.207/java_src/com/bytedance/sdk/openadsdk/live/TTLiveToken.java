package com.bytedance.sdk.openadsdk.live;

import com.apk.Cgoto;
import java.io.Serializable;
/* loaded from: classes8.dex */
public class TTLiveToken implements Serializable {
    public String accessToken;
    public long expireAt;
    public String name;
    public String openId;
    public String refreshToken;

    public TTLiveToken(String str, String str2, String str3, long j, String str4) {
        this.expireAt = 0L;
        this.refreshToken = "";
        this.name = str;
        this.accessToken = str2;
        this.openId = str3;
        this.expireAt = j;
        this.refreshToken = str4;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("TTLiveToken{accessToken='");
        Cgoto.m987abstract(m1016super, this.accessToken, '\'', ", openId='");
        Cgoto.m987abstract(m1016super, this.openId, '\'', ", expireAt=");
        m1016super.append(this.expireAt);
        m1016super.append(", refreshToken='");
        m1016super.append(this.refreshToken);
        m1016super.append('\'');
        m1016super.append('}');
        return m1016super.toString();
    }
}
