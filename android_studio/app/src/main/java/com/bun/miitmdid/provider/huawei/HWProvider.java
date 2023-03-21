package com.bun.miitmdid.provider.huawei;

import android.content.Context;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;

/* loaded from: classes8.dex */
public class HWProvider extends BaseProvider {
    public static final String TAG = "SDK call Huawei: ";
    public Context context;

    public HWProvider(Context context) {
        this.context = context;
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 61, 1594371206337L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 62, 1594371206338L})).booleanValue();
    }
}
