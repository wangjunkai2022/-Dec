package com.apk;

import com.bytedance.msdk.api.reward.RewardItem;
import java.io.IOException;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* compiled from: StreamResetException.kt */
/* loaded from: classes7.dex */
public final class mj0 extends IOException {
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final ti0 f3063do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mj0(@NotNull ti0 ti0Var) {
        super("stream was reset: " + ti0Var);
        nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
        this.f3063do = ti0Var;
    }
}
