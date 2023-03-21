package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do;

import com.umeng.commonsdk.UMConfigure;

/* compiled from: CrashType.java */
/* loaded from: classes8.dex */
public enum c {
    LAUNCH("launch"),
    JAVA("java"),
    NATIVE(UMConfigure.WRAPER_TYPE_NATIVE),
    ANR("anr"),
    BLOCK("block"),
    ENSURE("ensure"),
    DART("dart"),
    CUSTOM_JAVA("custom_java"),
    ALL("all");
    

    /* renamed from: a  reason: collision with root package name */
    public String f11093a;

    c(String str) {
        this.f11093a = str;
    }

    public String a() {
        return this.f11093a;
    }
}
