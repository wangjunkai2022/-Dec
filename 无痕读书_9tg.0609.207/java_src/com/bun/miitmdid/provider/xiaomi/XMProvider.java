package com.bun.miitmdid.provider.xiaomi;

import android.content.Context;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class XMProvider extends BaseProvider {
    public static final String TAG = "SDK call Xiaomi: ";
    public Context mCxt;

    public XMProvider(Context context) {
        this.mCxt = context;
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 105, 1594371206381L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 106, 1594371206382L})).booleanValue();
    }
}
