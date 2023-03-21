package com.bun.miitmdid.provider.oppo;

import a.a.b.a;
import android.content.Context;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;

/* loaded from: classes8.dex */
public class OppoProvider extends BaseProvider {
    public static final String TAG = "SDK call Oppo: ";
    public Context context;

    public OppoProvider(Context context) {
        a.e(context);
        this.context = context;
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 83, 1594371206359L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 84, 1594371206360L})).booleanValue();
    }
}
