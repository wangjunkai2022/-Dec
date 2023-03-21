package com.apk;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import com.apk.ut;
import com.bun.miitmdid.core.MdidSdkHelper;
/* compiled from: CodeManager.java */
/* loaded from: classes8.dex */
public class ys {

    /* renamed from: do  reason: not valid java name */
    public static Application f6061do;

    /* renamed from: for  reason: not valid java name */
    public static pt f6062for;

    /* renamed from: if  reason: not valid java name */
    public static qt f6063if;

    /* compiled from: CodeManager.java */
    /* renamed from: com.apk.ys$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements ut.Cdo {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ut.Cdo f6064do;

        public Cdo(ut.Cdo cdo) {
            this.f6064do = cdo;
        }

        @Override // com.apk.ut.Cdo
        /* renamed from: do */
        public void mo1048do(@NonNull String str) {
            if (ys.m3117new(str)) {
                str = eg.m618throws();
                ut.Cdo cdo = this.f6064do;
                if (cdo != null) {
                    cdo.mo1048do(str);
                }
            }
            tt.f4763do.putString("CODE_SP_OAID_KEY", str);
            tt.f4763do.putString("CODE_SP_DEVICEID_KEY", str);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static pt m3114do() {
        if (f6062for == null) {
            Context context = getContext();
            pt ptVar = new pt();
            try {
                PackageManager packageManager = context.getPackageManager();
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                String str = packageInfo.packageName;
                String charSequence = applicationInfo.loadLabel(packageManager).toString();
                applicationInfo.loadIcon(packageManager);
                String str2 = packageInfo.versionName;
                int i = packageInfo.versionCode;
                ptVar.f3746do = charSequence;
                ptVar.f3748if = str;
                ptVar.f3749new = i;
                ptVar.f3747for = str2;
            } catch (PackageManager.NameNotFoundException | Exception unused) {
            }
            f6062for = ptVar;
        }
        return f6062for;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m3115for(ut.Cdo cdo) {
        try {
            if (Build.VERSION.SDK_INT < 23 || !m3117new(tt.m2620do("CODE_SP_OAID_KEY", ""))) {
                return;
            }
            ut utVar = new ut(new Cdo(cdo));
            Application application = f6061do;
            System.currentTimeMillis();
            int InitSdk = MdidSdkHelper.InitSdk(application, true, utVar);
            System.currentTimeMillis();
            if (InitSdk == 1008612) {
            }
            String.valueOf(InitSdk);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
        }
    }

    public static Context getContext() {
        Application application = f6061do;
        if (application != null) {
            return application;
        }
        throw new RuntimeException("CodeManager not init, please check...");
    }

    /* renamed from: if  reason: not valid java name */
    public static qt m3116if() {
        if (f6063if == null) {
            Context context = getContext();
            qt qtVar = new qt();
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                try {
                    qtVar.f3939if = Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.f12304a);
                    telephonyManager.getNetworkCountryIso();
                    telephonyManager.getNetworkOperator();
                    telephonyManager.getNetworkOperatorName();
                    telephonyManager.getNetworkType();
                    telephonyManager.getPhoneType();
                    telephonyManager.getSimState();
                    qtVar.f3938for = qt.m2187if();
                    qt.m2185do();
                    qtVar.f3941try = Build.VERSION.RELEASE;
                    String str = Build.BRAND;
                    qtVar.f3935case = Build.MODEL;
                    String str2 = Build.PRODUCT;
                    qtVar.f3937else = Build.MANUFACTURER;
                    String str3 = Build.HARDWARE;
                    String str4 = Build.FINGERPRINT;
                    String str5 = Build.SERIAL;
                    String str6 = Build.TYPE;
                    String str7 = Build.TAGS;
                    String str8 = Build.HOST;
                    String str9 = Build.VERSION.INCREMENTAL;
                    String str10 = Build.BOARD;
                    String str11 = Build.BOOTLOADER;
                    long j = Build.TIME;
                    String str12 = Build.CPU_ABI;
                    String str13 = Build.CPU_ABI2;
                    wifiManager.getConnectionInfo().getSSID();
                    wifiManager.getConnectionInfo().getBSSID();
                    qt.m2186for(wifiManager.getConnectionInfo().getIpAddress());
                    float f = displayMetrics.density;
                } catch (Exception | NoSuchMethodError unused) {
                }
                try {
                    if (mu.f()) {
                        if (yu.m3118do(context, "android.permission.READ_PHONE_STATE")) {
                            if (mu.d()) {
                                qtVar.f3936do = "";
                            } else {
                                qtVar.f3936do = telephonyManager.getDeviceId();
                            }
                            try {
                                if (telephonyManager.getLine1Number() != null) {
                                    telephonyManager.getLine1Number();
                                }
                            } catch (Exception unused2) {
                            }
                            try {
                                if (telephonyManager.getSimSerialNumber() != null) {
                                    telephonyManager.getSimSerialNumber();
                                }
                            } catch (Exception unused3) {
                            }
                            try {
                                if (telephonyManager.getSubscriberId() != null) {
                                    telephonyManager.getSubscriberId();
                                }
                            } catch (Exception unused4) {
                            }
                            telephonyManager.getDeviceSoftwareVersion();
                        } else {
                            qtVar.f3936do = "";
                        }
                    } else {
                        qtVar.f3936do = telephonyManager.getDeviceId();
                        if (telephonyManager.getLine1Number() != null) {
                            telephonyManager.getLine1Number();
                        }
                        if (telephonyManager.getSimSerialNumber() != null) {
                            telephonyManager.getSimSerialNumber();
                        }
                        if (telephonyManager.getSubscriberId() != null) {
                            telephonyManager.getSubscriberId();
                        }
                        telephonyManager.getDeviceSoftwareVersion();
                    }
                } catch (Exception | NoSuchMethodError unused5) {
                }
                try {
                    if (yu.m3118do(context, "android.permission.BLUETOOTH")) {
                        qtVar.f3940new = BluetoothAdapter.getDefaultAdapter() != null ? BluetoothAdapter.getDefaultAdapter().getName() : "";
                        if (Settings.Secure.getString(context.getContentResolver(), "bluetooth_address") != null) {
                            Settings.Secure.getString(context.getContentResolver(), "bluetooth_address");
                        }
                    } else {
                        qtVar.f3940new = "";
                    }
                } catch (Exception unused6) {
                    qtVar.f3940new = "";
                } catch (NoSuchMethodError unused7) {
                    qtVar.f3940new = "";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            f6063if = qtVar;
        }
        return f6063if;
    }

    /* renamed from: new  reason: not valid java name */
    public static boolean m3117new(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return str.replace("-", "").matches("^[0]*$");
    }
}
