package com.bun.miitmdid.provider;

import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.InnerIdProvider;
import com.netease.nis.sdkwrapper.Utils;

/* loaded from: classes8.dex */
public abstract class BaseProvider implements InnerIdProvider {
    public IIdentifierListener mcallback;
    public String OAID = "";
    public String VAID = "";
    public String AAID = "";
    public boolean isSupport = false;

    /* renamed from: com.bun.miitmdid.provider.BaseProvider$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProvider.this.doStart();
        }
    }

    public abstract void doStart();

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public String getAAID() {
        return (String) Utils.rL(new Object[]{this, 32, 1594371206308L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public String getOAID() {
        return (String) Utils.rL(new Object[]{this, 33, 1594371206309L});
    }

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public String getVAID() {
        return (String) Utils.rL(new Object[]{this, 34, 1594371206310L});
    }

    @Override // com.bun.miitmdid.interfaces.InnerIdProvider
    public boolean isSync() {
        return ((Boolean) Utils.rL(new Object[]{this, 35, 1594371206311L})).booleanValue();
    }

    public void returnCallResult() {
        Utils.rL(new Object[]{this, 36, 1594371206312L});
    }

    @Override // com.bun.miitmdid.interfaces.InnerIdProvider
    public void shutDown() {
        Utils.rL(new Object[]{this, 37, 1594371206313L});
    }

    @Override // com.bun.miitmdid.interfaces.InnerIdProvider
    public void startAction(IIdentifierListener iIdentifierListener) {
        Utils.rL(new Object[]{this, iIdentifierListener, 38, 1594371206314L});
    }
}
