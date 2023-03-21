package com.huawei.hms.ads.identifier;

import a.c.a.a.a.b;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.umeng.analytics.pro.ad;
import java.io.IOException;
@Keep
/* loaded from: classes8.dex */
public class AdvertisingIdClient {
    public static final String SETTINGS_AD_ID = "pps_oaid";
    public static final String SETTINGS_TRACK_LIMIT = "pps_track_limit";

    @Keep
    /* loaded from: classes8.dex */
    public static final class Info {
        public final String advertisingId;
        public final boolean limitAdTrackingEnabled;

        @Keep
        public Info(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTrackingEnabled = z;
        }

        @Keep
        public final String getId() {
            return this.advertisingId;
        }

        @Keep
        public final boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    /* loaded from: classes8.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f11490a;

        public a(Context context) {
            this.f11490a = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                AdvertisingIdClient.requestAdvertisingIdInfo(this.f11490a);
            } catch (Throwable unused) {
            }
        }
    }

    @Keep
    public static Info getAdvertisingIdInfo(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), SETTINGS_AD_ID);
                String string2 = Settings.Global.getString(context.getContentResolver(), SETTINGS_TRACK_LIMIT);
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    updateAdvertisingIdInfo(context);
                    return new Info(string, Boolean.valueOf(string2).booleanValue());
                }
            } catch (Throwable unused) {
            }
        }
        return requestAdvertisingIdInfo(context);
    }

    @Keep
    public static boolean isAdvertisingIdAvailable(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getPackageInfo("com.huawei.hwid", 0);
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage("com.huawei.hwid");
            return !packageManager.queryIntentServices(intent, 0).isEmpty();
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }

    public static Info requestAdvertisingIdInfo(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
            a.c.a.a.a.a aVar = new a.c.a.a.a.a();
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage("com.huawei.hwid");
            try {
                if (context.bindService(intent, aVar, 1)) {
                    try {
                        try {
                            if (!aVar.f10594a) {
                                aVar.f10594a = true;
                                IBinder take = aVar.b.take();
                                Parcel obtain = Parcel.obtain();
                                Parcel obtain2 = Parcel.obtain();
                                try {
                                    obtain.writeInterfaceToken(ad.f12134a);
                                    take.transact(1, obtain, obtain2, 0);
                                    obtain2.readException();
                                    String readString = obtain2.readString();
                                    obtain2.recycle();
                                    obtain.recycle();
                                    obtain = Parcel.obtain();
                                    obtain2 = Parcel.obtain();
                                    try {
                                        obtain.writeInterfaceToken(ad.f12134a);
                                        take.transact(2, obtain, obtain2, 0);
                                        obtain2.readException();
                                        boolean z = obtain2.readInt() != 0;
                                        obtain2.recycle();
                                        obtain.recycle();
                                        Info info = new Info(readString, z);
                                        try {
                                            context.unbindService(aVar);
                                        } catch (Throwable th) {
                                            th.getClass().getSimpleName();
                                        }
                                        return info;
                                    } finally {
                                    }
                                } finally {
                                }
                            }
                            throw new IllegalStateException();
                        } catch (InterruptedException unused) {
                            throw new IOException("bind hms service InterruptedException");
                        }
                    } catch (RemoteException unused2) {
                        throw new IOException("bind hms service RemoteException");
                    }
                }
                throw new IOException("bind failed");
            } catch (Throwable th2) {
                try {
                    context.unbindService(aVar);
                } catch (Throwable th3) {
                    th3.getClass().getSimpleName();
                }
                throw th2;
            }
        } catch (PackageManager.NameNotFoundException unused3) {
            throw new IOException("Service not found");
        }
    }

    public static void updateAdvertisingIdInfo(Context context) {
        b.f10596a.execute(new a(context));
    }

    @Keep
    public static boolean verifyAdId(Context context, String str, boolean z) {
        Info requestAdvertisingIdInfo = requestAdvertisingIdInfo(context);
        if (requestAdvertisingIdInfo != null && TextUtils.equals(str, requestAdvertisingIdInfo.getId())) {
            if (z == requestAdvertisingIdInfo.isLimitAdTrackingEnabled()) {
                return true;
            }
        }
        return false;
    }
}
