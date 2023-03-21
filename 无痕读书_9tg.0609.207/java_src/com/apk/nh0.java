package com.apk;

import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.qq.e.comm.adevent.AdEventType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CacheStrategy.kt */
/* loaded from: classes7.dex */
public final class nh0 {
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public final zg0 f3230do;
    @Nullable

    /* renamed from: if  reason: not valid java name */
    public final ch0 f3231if;

    public nh0(@Nullable zg0 zg0Var, @Nullable ch0 ch0Var) {
        this.f3230do = zg0Var;
        this.f3231if = ch0Var;
    }

    /* renamed from: do  reason: not valid java name */
    public static final boolean m1881do(@NotNull ch0 ch0Var, @NotNull zg0 zg0Var) {
        nd0.m1875new(ch0Var, "response");
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        int i = ch0Var.f618try;
        if (i != 200 && i != 410 && i != 414 && i != 501 && i != 203 && i != 204) {
            if (i != 307) {
                if (i != 308 && i != 404 && i != 405) {
                    switch (i) {
                        case 300:
                        case 301:
                            break;
                        case AdEventType.VIDEO_PAGE_CLOSE /* 302 */:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (ch0.m336break(ch0Var, "Expires", null, 2) == null && ch0Var.m337for().f5928for == -1 && !ch0Var.m337for().f5922case && !ch0Var.m337for().f5933try) {
                return false;
            }
        }
        return (ch0Var.m337for().f5930if || zg0Var.m3197do().f5930if) ? false : true;
    }
}
