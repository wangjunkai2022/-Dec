package com.bun.miitmdid.provider.samsung;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;
import com.samsung.android.deviceidservice.IDeviceIdService;
/* loaded from: classes8.dex */
public class SamsungProvider extends BaseProvider {
    public static final String TAG = "SDK call Samsung: ";
    public Context context;
    public ServiceConnection mConnection;
    public IDeviceIdService mDeviceidInterface;
    public String packagename;

    /* renamed from: com.bun.miitmdid.provider.samsung.SamsungProvider$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class AnonymousClass1 implements ServiceConnection {
        public AnonymousClass1() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            SamsungProvider.access$002(SamsungProvider.this, IDeviceIdService.Stub.asInterface(iBinder));
            SamsungProvider.access$100(SamsungProvider.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            SamsungProvider.access$002(SamsungProvider.this, null);
        }
    }

    public SamsungProvider(Context context) {
        this.context = context;
        this.packagename = context.getPackageName();
    }

    private void ReadData() {
        Utils.rL(new Object[]{this, 86, 1594371206362L});
    }

    public static /* synthetic */ IDeviceIdService access$002(SamsungProvider samsungProvider, IDeviceIdService iDeviceIdService) {
        Object[] objArr = new Object[5];
        objArr[1] = samsungProvider;
        objArr[2] = iDeviceIdService;
        objArr[3] = 87;
        objArr[4] = 1594371206363L;
        return (IDeviceIdService) Utils.rL(objArr);
    }

    public static /* synthetic */ void access$100(SamsungProvider samsungProvider) {
        Object[] objArr = new Object[4];
        objArr[1] = samsungProvider;
        objArr[2] = 88;
        objArr[3] = 1594371206364L;
        Utils.rL(objArr);
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 89, 1594371206365L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 90, 1594371206366L})).booleanValue();
    }

    @Override // com.bun.miitmdid.provider.BaseProvider, com.bun.miitmdid.interfaces.InnerIdProvider
    public void shutDown() {
        Utils.rL(new Object[]{this, 91, 1594371206367L});
    }
}
