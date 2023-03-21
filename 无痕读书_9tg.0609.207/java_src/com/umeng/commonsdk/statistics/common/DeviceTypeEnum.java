package com.umeng.commonsdk.statistics.common;

import com.umeng.commonsdk.statistics.idtracking.f;
import com.umeng.commonsdk.statistics.idtracking.g;
import com.umeng.commonsdk.statistics.idtracking.h;
/* loaded from: classes7.dex */
public enum DeviceTypeEnum {
    IMEI(f.f12309a, f.f12309a),
    OAID(h.d, h.d),
    ANDROIDID(com.umeng.commonsdk.statistics.idtracking.b.f12304a, com.umeng.commonsdk.statistics.idtracking.b.f12304a),
    MAC(g.f12310a, g.f12310a),
    SERIALNO("serial_no", "serial_no"),
    IDFA(com.umeng.commonsdk.statistics.idtracking.c.f12305a, com.umeng.commonsdk.statistics.idtracking.c.f12305a),
    DEFAULT("null", "null");
    
    public String description;
    public String deviceIdType;

    DeviceTypeEnum(String str, String str2) {
        this.deviceIdType = str;
        this.description = str2;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDeviceIdType() {
        return this.deviceIdType;
    }
}
