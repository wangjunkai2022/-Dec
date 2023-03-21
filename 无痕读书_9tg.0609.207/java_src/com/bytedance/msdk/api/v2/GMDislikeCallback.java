package com.bytedance.msdk.api.v2;

import androidx.annotation.Nullable;
/* loaded from: classes8.dex */
public interface GMDislikeCallback {
    void onCancel();

    void onRefuse();

    void onSelected(int i, @Nullable String str);

    void onShow();
}
