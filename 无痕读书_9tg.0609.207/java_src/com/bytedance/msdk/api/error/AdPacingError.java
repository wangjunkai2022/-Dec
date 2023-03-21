package com.bytedance.msdk.api.error;

import com.bytedance.msdk.api.AdError;
/* loaded from: classes8.dex */
public class AdPacingError extends AdError {

    /* renamed from: do  reason: not valid java name */
    public String f8975do;

    /* renamed from: if  reason: not valid java name */
    public String f8976if;

    public AdPacingError(int i, String str, String str2, String str3) {
        super(i, str);
        this.f8975do = str2;
        this.f8976if = str3;
    }

    public String getBlockPacing() {
        return this.f8975do;
    }

    public String getRuleId() {
        return this.f8976if;
    }
}
