package com.bun.miitmdid.provider.asus;

import android.content.Context;
import android.os.IBinder;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;
import com.asus.msa.sdid.IDIDBinderStatusListener;
import com.asus.msa.sdid.SupplementaryDIDManager;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class AsusProvider extends BaseProvider implements IDIDBinderStatusListener {
    public static final String TAG = "SDK call Asus: ";
    public Context context;
    public final SupplementaryDIDManager supplementaryDIDManager;

    public AsusProvider(Context context) {
        this.context = context;
        this.supplementaryDIDManager = new SupplementaryDIDManager(context);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return (IBinder) Utils.rL(new Object[]{this, 46, 1594371206322L});
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 47, 1594371206323L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 48, 1594371206324L})).booleanValue();
    }

    @Override // com.asus.msa.sdid.IDIDBinderStatusListener
    public void onError() {
        Utils.rL(new Object[]{this, 49, 1594371206325L});
    }

    @Override // com.asus.msa.sdid.IDIDBinderStatusListener
    public void onSuccess(IDidAidlInterface iDidAidlInterface) {
        Utils.rL(new Object[]{this, iDidAidlInterface, 50, 1594371206326L});
    }

    @Override // com.bun.miitmdid.provider.BaseProvider, com.bun.miitmdid.interfaces.InnerIdProvider
    public void shutDown() {
        Utils.rL(new Object[]{this, 51, 1594371206327L});
    }
}
