package com.bun.miitmdid.provider.zte;

import android.content.Context;
import android.text.TextUtils;
import com.bun.lib.MsaIdInterface;
import com.bun.miitmdid.provider.BaseProvider;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class ZteProvider extends BaseProvider {
    public static final String TAG = "SDK call Zte: ";
    public Context context;
    public MsaClient msaClient;
    public String packgename;

    /* renamed from: com.bun.miitmdid.provider.zte.ZteProvider$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class AnonymousClass1 implements MsaServiceConnection {
        public AnonymousClass1() {
        }

        @Override // com.bun.miitmdid.provider.zte.MsaServiceConnection
        public void serviceConnected(MsaIdInterface msaIdInterface) {
            ZteProvider zteProvider = ZteProvider.this;
            ZteProvider.access$002(zteProvider, ZteProvider.access$100(zteProvider).isSupported());
            String oaid = ZteProvider.access$100(ZteProvider.this).getOAID();
            String vaid = ZteProvider.access$100(ZteProvider.this).getVAID();
            String aaid = ZteProvider.access$100(ZteProvider.this).getAAID();
            ZteProvider zteProvider2 = ZteProvider.this;
            if (oaid == null) {
                oaid = "";
            }
            ZteProvider.access$202(zteProvider2, oaid);
            ZteProvider zteProvider3 = ZteProvider.this;
            if (vaid == null) {
                vaid = "";
            }
            ZteProvider.access$302(zteProvider3, vaid);
            ZteProvider zteProvider4 = ZteProvider.this;
            if (aaid == null) {
                aaid = "";
            }
            ZteProvider.access$402(zteProvider4, aaid);
            ZteProvider.this.returnCallResult();
        }
    }

    public ZteProvider(Context context) {
        this.context = context;
        String packageName = context.getPackageName();
        this.packgename = packageName;
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        MsaClient.StartMsaKlService(this.context, this.packgename);
    }

    public static /* synthetic */ boolean access$002(ZteProvider zteProvider, boolean z) {
        Object[] objArr = new Object[5];
        objArr[1] = zteProvider;
        objArr[2] = Boolean.valueOf(z);
        objArr[3] = 125;
        objArr[4] = 1594371206401L;
        return ((Boolean) Utils.rL(objArr)).booleanValue();
    }

    public static /* synthetic */ MsaClient access$100(ZteProvider zteProvider) {
        Object[] objArr = new Object[4];
        objArr[1] = zteProvider;
        objArr[2] = 126;
        objArr[3] = 1594371206402L;
        return (MsaClient) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$202(ZteProvider zteProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = zteProvider;
        objArr[2] = str;
        objArr[3] = 127;
        objArr[4] = 1594371206403L;
        return (String) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$302(ZteProvider zteProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = zteProvider;
        objArr[2] = str;
        objArr[3] = 128;
        objArr[4] = 1594371206404L;
        return (String) Utils.rL(objArr);
    }

    public static /* synthetic */ String access$402(ZteProvider zteProvider, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = zteProvider;
        objArr[2] = str;
        objArr[3] = 129;
        objArr[4] = 1594371206405L;
        return (String) Utils.rL(objArr);
    }

    @Override // com.bun.miitmdid.provider.BaseProvider
    public void doStart() {
        Utils.rL(new Object[]{this, 130, 1594371206406L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        return ((Boolean) Utils.rL(new Object[]{this, 131, 1594371206407L})).booleanValue();
    }

    @Override // com.bun.miitmdid.provider.BaseProvider, com.bun.miitmdid.interfaces.InnerIdProvider
    public void shutDown() {
        Utils.rL(new Object[]{this, 132, 1594371206408L});
    }
}
