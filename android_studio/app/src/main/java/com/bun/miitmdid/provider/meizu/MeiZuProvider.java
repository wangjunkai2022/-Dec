package com.bun.miitmdid.provider.meizu;

import android.content.Context;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;

/* loaded from: classes8.dex */
public class MeiZuProvider extends BaseProvider {
    public static final String TAG = "SDK call MeiZu: ";
    public Context context;

    public MeiZuProvider(Context context) {
        this.context = context;
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 71, 1594371206347L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 72, 1594371206348L})).booleanValue();
    }
}
