package com.apk;

import com.bytedance.msdk.api.reward.RewardItem;
import java.io.IOException;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* compiled from: PushObserver.kt */
/* loaded from: classes7.dex */
public final class jj0 implements kj0 {
    @Override // com.apk.kj0
    /* renamed from: do  reason: not valid java name */
    public boolean mo1351do(int i, @NotNull List<ui0> list) {
        nd0.m1875new(list, "requestHeaders");
        return true;
    }

    @Override // com.apk.kj0
    /* renamed from: for  reason: not valid java name */
    public void mo1352for(int i, @NotNull ti0 ti0Var) {
        nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
    }

    @Override // com.apk.kj0
    /* renamed from: if  reason: not valid java name */
    public boolean mo1353if(int i, @NotNull List<ui0> list, boolean z) {
        nd0.m1875new(list, "responseHeaders");
        return true;
    }

    @Override // com.apk.kj0
    /* renamed from: new  reason: not valid java name */
    public boolean mo1354new(int i, @NotNull tk0 tk0Var, int i2, boolean z) throws IOException {
        nd0.m1875new(tk0Var, "source");
        tk0Var.skip(i2);
        return true;
    }
}
