package com.bytedance.msdk.api.error;

import com.bytedance.msdk.api.AdError;

/* loaded from: classes8.dex */
public class AdFreqError extends AdError {

    /* renamed from: do  reason: not valid java name */
    public String f8973do;

    /* renamed from: if  reason: not valid java name */
    public String f8974if;

    public AdFreqError(int i, String str, String str2, String str3) {
        super(i, str);
        this.f8973do = str2;
        this.f8974if = str3;
    }

    public String getBlockShowCount() {
        return this.f8973do;
    }

    public String getRuleId() {
        return this.f8974if;
    }
}
