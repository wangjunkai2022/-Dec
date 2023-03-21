package com.umeng.commonsdk.statistics.common;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.ss.android.download.api.constant.BaseConstants;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.idtracking.h;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import javax.microedition.khronos.opengles.GL10;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes7.dex */
public class DeviceConfig {
    public static final int DEFAULT_TIMEZONE = 8;
    public static final String KEY_EMUI_VERSION_CODE = "ro.build.hw_emui_api_level";
    public static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    public static final String LOG_TAG = "com.umeng.commonsdk.statistics.common.DeviceConfig";
    public static final String MOBILE_NETWORK = "2G/3G";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";
    public static DeviceTypeEnum deviceTypeEnum = DeviceTypeEnum.DEFAULT;
    public static volatile String sWifiMac = "";
    public static volatile String sImei = "";
    public static volatile String sMeid = "";
    public static volatile String sImsi = "";
    public static volatile String sSerialNo = "";
    public static volatile String sAndroidID = "";
    public static volatile String sIDFA = "";
    public static volatile String sOAID = "";
    public static volatile String sSecondImei = "";
    public static volatile String sSimSerialNumber = "";
    public static volatile boolean sImeiOrMeidFlag = false;
    public static volatile boolean sSerialFlag = false;
    public static volatile boolean sSimSerialNumberFlag = false;
    public static volatile boolean sImsiFlag = false;
    public static volatile boolean sSecondImeiFlag = false;

    public static String byte2HexFormatted(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = Cgoto.m989case(SpeechSynthesizer.REQUEST_DNS_OFF, hexString);
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase(Locale.getDefault()));
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static boolean checkPermission(Context context, String str) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                if (((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() != 0) {
                    return false;
                }
            } catch (Throwable unused) {
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static String getAndroidId(Context context) {
        if (!TextUtils.isEmpty(sAndroidID)) {
            return sAndroidID;
        }
        String str = null;
        if (!FieldManager.allow(com.umeng.commonsdk.utils.b.i) || context == null) {
            return null;
        }
        try {
            str = Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.f12304a);
            sAndroidID = str;
            return str;
        } catch (Exception unused) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.w("can't read android id");
                return str;
            }
            return str;
        }
    }

    public static String getAppHashKey(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures;
            if (signatureArr.length > 0) {
                Signature signature = signatureArr[0];
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(signature.toByteArray());
                return Base64.encodeToString(messageDigest.digest(), 0).trim();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppMD5Signature(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return byte2HexFormatted(MessageDigest.getInstance(LitePalSupport.MD5).digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, th);
                return null;
            }
            return null;
        }
    }

    public static String getAppSHA1Key(Context context) {
        try {
            return byte2HexFormatted(MessageDigest.getInstance("SHA1").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getAppVersionCode(Context context) {
        return UMUtils.getAppVersionCode(context);
    }

    public static String getAppVersionName(Context context) {
        return UMUtils.getAppVersionName(context);
    }

    public static String getApplicationLable(Context context) {
        return context == null ? "" : context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    public static Properties getBuildProp() {
        FileInputStream fileInputStream;
        Properties properties = new Properties();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            } catch (Throwable unused) {
            }
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
            } catch (Throwable unused2) {
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                return properties;
            }
        } catch (Throwable unused3) {
        }
        return properties;
    }

    public static String getCPU() {
        String str = null;
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
            str = bufferedReader.readLine();
            bufferedReader.close();
            fileReader.close();
        } catch (FileNotFoundException e) {
            MLog.e(LOG_TAG, "Could not open file /proc/cpuinfo", e);
        }
        return str != null ? str.substring(str.indexOf(58) + 1).trim() : "";
    }

    public static String getDBencryptID(Context context) {
        return UMUtils.genId();
    }

    public static String getDeviceId(Context context) {
        if (AnalyticsConstants.getDeviceType() == 2) {
            return getDeviceIdForBox(context);
        }
        return getDeviceIdForGeneral(context);
    }

    public static String getDeviceIdForBox(Context context) {
        String str = "";
        if (context == null) {
            return "";
        }
        try {
            if (Build.VERSION.SDK_INT < 23) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                    str = getAndroidId(context);
                    deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str2 = LOG_TAG;
                        MLog.i(str2, "getDeviceId, ANDROID_ID: " + str);
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    String macBySystemInterface = getMacBySystemInterface(context);
                    deviceTypeEnum = DeviceTypeEnum.MAC;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str3 = LOG_TAG;
                        MLog.i(str3, "getDeviceId, MAC: " + macBySystemInterface);
                    }
                    if (TextUtils.isEmpty(macBySystemInterface)) {
                        String serialNo = getSerialNo();
                        deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                        if (TextUtils.isEmpty(serialNo)) {
                            String imei = getIMEI(context);
                            deviceTypeEnum = DeviceTypeEnum.IMEI;
                            return imei;
                        }
                        return serialNo;
                    }
                    return macBySystemInterface;
                }
                return str;
            } else if (Build.VERSION.SDK_INT == 23) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                    str = getAndroidId(context);
                    deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str4 = LOG_TAG;
                        MLog.i(str4, "getDeviceId, ANDROID_ID: " + str);
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    String macByJavaAPI = getMacByJavaAPI();
                    deviceTypeEnum = DeviceTypeEnum.MAC;
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        if (AnalyticsConstants.CHECK_DEVICE) {
                            macByJavaAPI = getMacShell();
                            deviceTypeEnum = DeviceTypeEnum.MAC;
                        } else {
                            macByJavaAPI = getMacBySystemInterface(context);
                            deviceTypeEnum = DeviceTypeEnum.MAC;
                        }
                    }
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str5 = LOG_TAG;
                        MLog.i(str5, "getDeviceId, MAC: " + macByJavaAPI);
                    }
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        String serialNo2 = getSerialNo();
                        deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                        if (TextUtils.isEmpty(serialNo2)) {
                            String imei2 = getIMEI(context);
                            deviceTypeEnum = DeviceTypeEnum.IMEI;
                            return imei2;
                        }
                        return serialNo2;
                    }
                    return macByJavaAPI;
                }
                return str;
            } else if (Build.VERSION.SDK_INT >= 29) {
                String oaid = getOaid(context);
                deviceTypeEnum = DeviceTypeEnum.OAID;
                if (TextUtils.isEmpty(oaid)) {
                    String idfa = getIdfa(context);
                    deviceTypeEnum = DeviceTypeEnum.IDFA;
                    if (TextUtils.isEmpty(idfa)) {
                        String androidId = getAndroidId(context);
                        deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                        if (TextUtils.isEmpty(androidId)) {
                            String serialNo3 = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            if (TextUtils.isEmpty(serialNo3)) {
                                String macByJavaAPI2 = getMacByJavaAPI();
                                deviceTypeEnum = DeviceTypeEnum.MAC;
                                if (TextUtils.isEmpty(macByJavaAPI2)) {
                                    String macBySystemInterface2 = getMacBySystemInterface(context);
                                    deviceTypeEnum = DeviceTypeEnum.MAC;
                                    return macBySystemInterface2;
                                }
                                return macByJavaAPI2;
                            }
                            return serialNo3;
                        }
                        return androidId;
                    }
                    return idfa;
                }
                return oaid;
            } else {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                    str = getAndroidId(context);
                    deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str6 = LOG_TAG;
                        MLog.i(str6, "getDeviceId: ANDROID_ID: " + str);
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    String serialNo4 = getSerialNo();
                    deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                    if (TextUtils.isEmpty(serialNo4)) {
                        String imei3 = getIMEI(context);
                        deviceTypeEnum = DeviceTypeEnum.IMEI;
                        if (TextUtils.isEmpty(imei3)) {
                            String macByJavaAPI3 = getMacByJavaAPI();
                            deviceTypeEnum = DeviceTypeEnum.MAC;
                            if (TextUtils.isEmpty(macByJavaAPI3)) {
                                String macBySystemInterface3 = getMacBySystemInterface(context);
                                deviceTypeEnum = DeviceTypeEnum.MAC;
                                if (AnalyticsConstants.UM_DEBUG) {
                                    String str7 = LOG_TAG;
                                    MLog.i(str7, "getDeviceId, MAC: " + macBySystemInterface3);
                                    return macBySystemInterface3;
                                }
                                return macBySystemInterface3;
                            }
                            return macByJavaAPI3;
                        }
                        return imei3;
                    }
                    return serialNo4;
                }
                return str;
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getDeviceIdForGeneral(Context context) {
        if (context == null) {
            return "";
        }
        try {
            if (Build.VERSION.SDK_INT < 23) {
                String imei = getIMEI(context);
                deviceTypeEnum = DeviceTypeEnum.IMEI;
                if (TextUtils.isEmpty(imei)) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        MLog.w(LOG_TAG, "No IMEI.");
                    }
                    String macBySystemInterface = getMacBySystemInterface(context);
                    deviceTypeEnum = DeviceTypeEnum.MAC;
                    if (TextUtils.isEmpty(macBySystemInterface)) {
                        if (FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                            macBySystemInterface = getAndroidId(context);
                            deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                            if (AnalyticsConstants.UM_DEBUG) {
                                String str = LOG_TAG;
                                MLog.i(str, "getDeviceId, ANDROID_ID: " + macBySystemInterface);
                            }
                        }
                        if (TextUtils.isEmpty(macBySystemInterface)) {
                            String serialNo = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            return serialNo;
                        }
                        return macBySystemInterface;
                    }
                    return macBySystemInterface;
                }
                return imei;
            } else if (Build.VERSION.SDK_INT == 23) {
                String imei2 = getIMEI(context);
                deviceTypeEnum = DeviceTypeEnum.IMEI;
                if (TextUtils.isEmpty(imei2)) {
                    String macByJavaAPI = getMacByJavaAPI();
                    deviceTypeEnum = DeviceTypeEnum.MAC;
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        if (AnalyticsConstants.CHECK_DEVICE) {
                            macByJavaAPI = getMacShell();
                            deviceTypeEnum = DeviceTypeEnum.MAC;
                        } else {
                            macByJavaAPI = getMacBySystemInterface(context);
                            deviceTypeEnum = DeviceTypeEnum.MAC;
                        }
                    }
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str2 = LOG_TAG;
                        MLog.i(str2, "getDeviceId, MAC: " + macByJavaAPI);
                    }
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        if (FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                            macByJavaAPI = getAndroidId(context);
                            deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                            if (AnalyticsConstants.UM_DEBUG) {
                                String str3 = LOG_TAG;
                                MLog.i(str3, "getDeviceId, ANDROID_ID: " + macByJavaAPI);
                            }
                        }
                        if (TextUtils.isEmpty(macByJavaAPI)) {
                            String serialNo2 = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            return serialNo2;
                        }
                        return macByJavaAPI;
                    }
                    return macByJavaAPI;
                }
                return imei2;
            } else if (Build.VERSION.SDK_INT >= 29) {
                String oaid = getOaid(context);
                deviceTypeEnum = DeviceTypeEnum.OAID;
                if (TextUtils.isEmpty(oaid)) {
                    String idfa = getIdfa(context);
                    deviceTypeEnum = DeviceTypeEnum.IDFA;
                    if (TextUtils.isEmpty(idfa)) {
                        String androidId = getAndroidId(context);
                        deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                        if (TextUtils.isEmpty(androidId)) {
                            String serialNo3 = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            if (TextUtils.isEmpty(serialNo3)) {
                                String macByJavaAPI2 = getMacByJavaAPI();
                                deviceTypeEnum = DeviceTypeEnum.MAC;
                                if (TextUtils.isEmpty(macByJavaAPI2)) {
                                    String macBySystemInterface2 = getMacBySystemInterface(context);
                                    deviceTypeEnum = DeviceTypeEnum.MAC;
                                    return macBySystemInterface2;
                                }
                                return macByJavaAPI2;
                            }
                            return serialNo3;
                        }
                        return androidId;
                    }
                    return idfa;
                }
                return oaid;
            } else {
                String imei3 = getIMEI(context);
                deviceTypeEnum = DeviceTypeEnum.IMEI;
                if (TextUtils.isEmpty(imei3)) {
                    String serialNo4 = getSerialNo();
                    deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                    if (TextUtils.isEmpty(serialNo4)) {
                        if (FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                            serialNo4 = getAndroidId(context);
                            deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                            if (AnalyticsConstants.UM_DEBUG) {
                                String str4 = LOG_TAG;
                                MLog.i(str4, "getDeviceId, ANDROID_ID: " + serialNo4);
                            }
                        }
                        if (TextUtils.isEmpty(serialNo4)) {
                            String macByJavaAPI3 = getMacByJavaAPI();
                            deviceTypeEnum = DeviceTypeEnum.MAC;
                            if (TextUtils.isEmpty(macByJavaAPI3)) {
                                String macBySystemInterface3 = getMacBySystemInterface(context);
                                deviceTypeEnum = DeviceTypeEnum.MAC;
                                if (AnalyticsConstants.UM_DEBUG) {
                                    String str5 = LOG_TAG;
                                    MLog.i(str5, "getDeviceId, MAC: " + macBySystemInterface3);
                                    return macBySystemInterface3;
                                }
                                return macBySystemInterface3;
                            }
                            return macByJavaAPI3;
                        }
                        return serialNo4;
                    }
                    return serialNo4;
                }
                return imei3;
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getDeviceIdType() {
        return deviceTypeEnum.getDeviceIdType();
    }

    public static String getDeviceIdUmengMD5(Context context) {
        return HelperUtils.getUmengMD5(getDeviceId(context));
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
        } catch (Throwable unused) {
            return "Phone";
        }
    }

    public static String getDisplayResolution(Context context) {
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.widthPixels;
                int i2 = displayMetrics.heightPixels;
                return String.valueOf(i2) + "*" + String.valueOf(i);
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String getEmuiVersion(Properties properties) {
        try {
            return properties.getProperty(KEY_EMUI_VERSION_CODE, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getFlymeVersion(Properties properties) {
        try {
            String lowerCase = properties.getProperty("ro.build.display.id").toLowerCase(Locale.getDefault());
            if (lowerCase.contains("flyme os")) {
                return lowerCase.split(" ")[2];
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.e(LOG_TAG, "Could not read gpu infor:", th);
            }
            return new String[0];
        }
    }

    public static Activity getGlobleActivity(Context context) {
        Activity activity = null;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (Object obj : ((Map) declaredField.get(invoke)).values()) {
                Class<?> cls2 = obj.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    Field declaredField3 = cls2.getDeclaredField("activity");
                    declaredField3.setAccessible(true);
                    activity = (Activity) declaredField3.get(obj);
                }
            }
        } catch (Throwable unused) {
        }
        return activity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getIMEI(android.content.Context r7) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r7 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            return r7
        Lb:
            int r0 = android.os.Build.VERSION.SDK_INT
            java.lang.String r1 = ""
            r2 = 29
            if (r0 < r2) goto L18
            boolean r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag
            if (r0 == 0) goto L18
            return r1
        L18:
            java.lang.String r0 = "header_device_id_imei"
            boolean r0 = com.umeng.commonsdk.config.FieldManager.allow(r0)
            if (r0 == 0) goto L7e
            if (r7 != 0) goto L23
            return r1
        L23:
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r7.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            if (r0 == 0) goto L7e
            r3 = 1
            java.lang.String r4 = "android.permission.READ_PHONE_STATE"
            boolean r7 = checkPermission(r7, r4)     // Catch: java.lang.Throwable -> L65
            if (r7 == 0) goto L5e
            java.lang.String r7 = r0.getDeviceId()     // Catch: java.lang.Throwable -> L65
            boolean r0 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG     // Catch: java.lang.Throwable -> L5b
            if (r0 == 0) goto L59
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.LOG_TAG     // Catch: java.lang.Throwable -> L5b
            java.lang.Object[] r1 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L5b
            r4 = 0
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5b
            r5.<init>()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = "getDeviceId, IMEI: "
            r5.append(r6)     // Catch: java.lang.Throwable -> L5b
            r5.append(r7)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L5b
            r1[r4] = r5     // Catch: java.lang.Throwable -> L5b
            com.umeng.commonsdk.statistics.common.MLog.i(r0, r1)     // Catch: java.lang.Throwable -> L5b
        L59:
            r1 = r7
            goto L5e
        L5b:
            r0 = move-exception
            r1 = r7
            goto L66
        L5e:
            int r7 = android.os.Build.VERSION.SDK_INT
            if (r7 < r2) goto L7e
        L62:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r3
            goto L7e
        L65:
            r0 = move-exception
        L66:
            boolean r7 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG     // Catch: java.lang.Throwable -> L76
            if (r7 == 0) goto L71
            java.lang.String r7 = com.umeng.commonsdk.statistics.common.DeviceConfig.LOG_TAG     // Catch: java.lang.Throwable -> L76
            java.lang.String r4 = "No IMEI."
            com.umeng.commonsdk.statistics.common.MLog.w(r7, r4, r0)     // Catch: java.lang.Throwable -> L76
        L71:
            int r7 = android.os.Build.VERSION.SDK_INT
            if (r7 < r2) goto L7e
            goto L62
        L76:
            r7 = move-exception
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r2) goto L7d
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r3
        L7d:
            throw r7
        L7e:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImei = r1
            java.lang.String r7 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getIMEI(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014 A[Catch: SocketException -> 0x0069, TryCatch #0 {SocketException -> 0x0069, blocks: (B:5:0x000e, B:7:0x0014, B:8:0x0026, B:10:0x002c, B:13:0x003a, B:15:0x003e, B:18:0x004a, B:19:0x004e, B:21:0x0054, B:23:0x0058, B:26:0x0064), top: B:36:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getIPAddress(android.content.Context r7) {
        /*
            r7 = 0
            java.util.Enumeration r0 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.net.SocketException -> L6a
            java.util.ArrayList r0 = java.util.Collections.list(r0)     // Catch: java.net.SocketException -> L6a
            java.util.Iterator r0 = r0.iterator()     // Catch: java.net.SocketException -> L6a
            r1 = r7
        Le:
            boolean r2 = r0.hasNext()     // Catch: java.net.SocketException -> L69
            if (r2 == 0) goto L6e
            java.lang.Object r2 = r0.next()     // Catch: java.net.SocketException -> L69
            java.net.NetworkInterface r2 = (java.net.NetworkInterface) r2     // Catch: java.net.SocketException -> L69
            java.util.Enumeration r3 = r2.getInetAddresses()     // Catch: java.net.SocketException -> L69
            java.util.ArrayList r3 = java.util.Collections.list(r3)     // Catch: java.net.SocketException -> L69
            java.util.Iterator r3 = r3.iterator()     // Catch: java.net.SocketException -> L69
        L26:
            boolean r4 = r3.hasNext()     // Catch: java.net.SocketException -> L69
            if (r4 == 0) goto Le
            java.lang.Object r4 = r3.next()     // Catch: java.net.SocketException -> L69
            java.net.InetAddress r4 = (java.net.InetAddress) r4     // Catch: java.net.SocketException -> L69
            boolean r5 = r4.isLoopbackAddress()     // Catch: java.net.SocketException -> L69
            java.lang.String r6 = "dummy"
            if (r5 != 0) goto L4e
            boolean r5 = r4 instanceof java.net.Inet4Address     // Catch: java.net.SocketException -> L69
            if (r5 == 0) goto L4e
            java.lang.String r5 = r2.getDisplayName()     // Catch: java.net.SocketException -> L69
            boolean r5 = r5.contains(r6)     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L4e
            if (r7 != 0) goto L4e
            java.lang.String r7 = r4.getHostAddress()     // Catch: java.net.SocketException -> L69
        L4e:
            boolean r5 = r4.isLoopbackAddress()     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L26
            boolean r5 = r4 instanceof java.net.Inet6Address     // Catch: java.net.SocketException -> L69
            if (r5 == 0) goto L26
            java.lang.String r5 = r2.getDisplayName()     // Catch: java.net.SocketException -> L69
            boolean r5 = r5.contains(r6)     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L26
            if (r1 != 0) goto L26
            java.lang.String r1 = r4.getHostAddress()     // Catch: java.net.SocketException -> L69
            goto L26
        L69:
            r7 = r1
        L6a:
            java.lang.String r0 = "SocketException"
            r1 = r7
            r7 = r0
        L6e:
            if (r7 == 0) goto L71
            return r7
        L71:
            if (r1 != 0) goto L75
            java.lang.String r1 = "null"
        L75:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getIPAddress(android.content.Context):java.lang.String");
    }

    public static String getIdfa(Context context) {
        if (!TextUtils.isEmpty(sIDFA)) {
            return sIDFA;
        }
        String str = "";
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.w)) {
                str = a.a(context);
                sIDFA = str;
                return str;
            }
            return "";
        } catch (Throwable unused) {
            return str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 29) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0043, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0052, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0055, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sImei = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getImei(android.content.Context r5) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r5 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            return r5
        Lb:
            r0 = 0
            r1 = 1
            r2 = 29
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L46
            if (r3 < r2) goto L1e
            boolean r3 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L1e
            int r5 = android.os.Build.VERSION.SDK_INT
            if (r5 < r2) goto L1d
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r1
        L1d:
            return r0
        L1e:
            java.lang.String r3 = "header_device_id_imei"
            boolean r3 = com.umeng.commonsdk.config.FieldManager.allow(r3)     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L3f
            if (r5 == 0) goto L3f
            java.lang.String r3 = "phone"
            java.lang.Object r3 = r5.getSystemService(r3)     // Catch: java.lang.Throwable -> L46
            android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L3f
            java.lang.String r4 = "android.permission.READ_PHONE_STATE"
            boolean r5 = checkPermission(r5, r4)     // Catch: java.lang.Throwable -> L46
            if (r5 == 0) goto L3f
            java.lang.String r5 = r3.getDeviceId()     // Catch: java.lang.Throwable -> L46
            r0 = r5
        L3f:
            int r5 = android.os.Build.VERSION.SDK_INT
            if (r5 < r2) goto L55
        L43:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r1
            goto L55
        L46:
            r5 = move-exception
            boolean r3 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG     // Catch: java.lang.Throwable -> L58
            if (r3 == 0) goto L50
            java.lang.String r3 = "No IMEI."
            com.umeng.commonsdk.statistics.common.MLog.w(r3, r5)     // Catch: java.lang.Throwable -> L58
        L50:
            int r5 = android.os.Build.VERSION.SDK_INT
            if (r5 < r2) goto L55
            goto L43
        L55:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImei = r0
            return r0
        L58:
            r5 = move-exception
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r2) goto L5f
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r1
        L5f:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getImei(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 29) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006c, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007b, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007e, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sImei = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0080, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getImeiNew(android.content.Context r7) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r7 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            return r7
        Lb:
            r0 = 0
            r1 = 1
            r2 = 29
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L6f
            if (r3 < r2) goto L1e
            boolean r3 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag     // Catch: java.lang.Throwable -> L6f
            if (r3 == 0) goto L1e
            int r7 = android.os.Build.VERSION.SDK_INT
            if (r7 < r2) goto L1d
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r1
        L1d:
            return r0
        L1e:
            java.lang.String r3 = "header_device_id_imei"
            boolean r3 = com.umeng.commonsdk.config.FieldManager.allow(r3)     // Catch: java.lang.Throwable -> L6f
            if (r3 == 0) goto L68
            if (r7 == 0) goto L68
            java.lang.String r3 = "phone"
            java.lang.Object r3 = r7.getSystemService(r3)     // Catch: java.lang.Throwable -> L6f
            android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3     // Catch: java.lang.Throwable -> L6f
            if (r3 == 0) goto L68
            java.lang.String r4 = "android.permission.READ_PHONE_STATE"
            boolean r7 = checkPermission(r7, r4)     // Catch: java.lang.Throwable -> L6f
            if (r7 == 0) goto L68
            int r7 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L6f
            r4 = 26
            if (r7 < r4) goto L64
            java.lang.Class r7 = r3.getClass()     // Catch: java.lang.Throwable -> L59
            java.lang.String r4 = "getImei"
            r5 = 0
            java.lang.Class[] r6 = new java.lang.Class[r5]     // Catch: java.lang.Throwable -> L59
            java.lang.reflect.Method r7 = r7.getMethod(r4, r6)     // Catch: java.lang.Throwable -> L59
            r7.setAccessible(r1)     // Catch: java.lang.Throwable -> L59
            java.lang.Object[] r4 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L59
            java.lang.Object r7 = r7.invoke(r3, r4)     // Catch: java.lang.Throwable -> L59
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L59
            r0 = r7
        L59:
            boolean r7 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L6f
            if (r7 == 0) goto L68
            java.lang.String r0 = r3.getDeviceId()     // Catch: java.lang.Throwable -> L6f
            goto L68
        L64:
            java.lang.String r0 = r3.getDeviceId()     // Catch: java.lang.Throwable -> L6f
        L68:
            int r7 = android.os.Build.VERSION.SDK_INT
            if (r7 < r2) goto L7e
        L6c:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r1
            goto L7e
        L6f:
            r7 = move-exception
            boolean r3 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG     // Catch: java.lang.Throwable -> L81
            if (r3 == 0) goto L79
            java.lang.String r3 = "No IMEI."
            com.umeng.commonsdk.statistics.common.MLog.w(r3, r7)     // Catch: java.lang.Throwable -> L81
        L79:
            int r7 = android.os.Build.VERSION.SDK_INT
            if (r7 < r2) goto L7e
            goto L6c
        L7e:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImei = r0
            return r0
        L81:
            r7 = move-exception
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r2) goto L88
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r1
        L88:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getImeiNew(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x003c, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 29) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sImsiFlag = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0044, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getImsi(android.content.Context r5) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImsi
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r5 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImsi
            return r5
        Lb:
            r0 = 0
            if (r5 != 0) goto Lf
            return r0
        Lf:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r1 < r2) goto L1a
            boolean r1 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImsiFlag
            if (r1 == 0) goto L1a
            return r0
        L1a:
            java.lang.String r1 = "phone"
            java.lang.Object r1 = r5.getSystemService(r1)
            android.telephony.TelephonyManager r1 = (android.telephony.TelephonyManager) r1
            java.lang.String r3 = "internal_imsi"
            boolean r3 = com.umeng.commonsdk.config.FieldManager.allow(r3)
            if (r3 == 0) goto L47
            r3 = 1
            java.lang.String r4 = "android.permission.READ_PHONE_STATE"
            boolean r5 = checkPermission(r5, r4)     // Catch: java.lang.Throwable -> L41
            if (r5 == 0) goto L3a
            if (r1 == 0) goto L3a
            java.lang.String r5 = r1.getSubscriberId()     // Catch: java.lang.Throwable -> L41
            r0 = r5
        L3a:
            int r5 = android.os.Build.VERSION.SDK_INT
            if (r5 < r2) goto L47
        L3e:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImsiFlag = r3
            goto L47
        L41:
            int r5 = android.os.Build.VERSION.SDK_INT
            if (r5 < r2) goto L47
            goto L3e
        L47:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImsi = r0
            java.lang.String r5 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImsi
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getImsi(android.content.Context):java.lang.String");
    }

    public static Locale getLocale(Context context) {
        Locale locale;
        if (context == null) {
            return Locale.getDefault();
        }
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(context.getContentResolver(), configuration);
            locale = configuration.locale;
        } catch (Throwable unused) {
            MLog.e(LOG_TAG, "fail to read user config locale");
            locale = null;
        }
        return locale == null ? Locale.getDefault() : locale;
    }

    public static String[] getLocaleInfo(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        if (context == null) {
            return strArr;
        }
        try {
            Locale locale = getLocale(context);
            if (locale != null) {
                strArr[0] = locale.getCountry();
                strArr[1] = locale.getLanguage();
            }
            if (TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
            return strArr;
        } catch (Throwable th) {
            MLog.e(LOG_TAG, "error in getLocaleInfo", th);
            return strArr;
        }
    }

    public static String getMCCMNC(Context context) {
        if (context == null) {
            return null;
        }
        if (getImsi(context) == null) {
            return null;
        }
        int i = context.getResources().getConfiguration().mcc;
        int i2 = context.getResources().getConfiguration().mnc;
        if (i != 0) {
            String valueOf = String.valueOf(i2);
            if (i2 < 10) {
                valueOf = String.format("%02d", Integer.valueOf(i2));
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(String.valueOf(i));
            stringBuffer.append(valueOf);
            return stringBuffer.toString();
        }
        return null;
    }

    public static String getMac(Context context) {
        if (!TextUtils.isEmpty(sWifiMac)) {
            return sWifiMac;
        }
        String str = "";
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.h)) {
            if (context == null) {
                return "";
            }
            int i = Build.VERSION.SDK_INT;
            if (i < 23) {
                str = getMacBySystemInterface(context);
            } else if (i == 23) {
                str = getMacByJavaAPI();
                if (TextUtils.isEmpty(str)) {
                    if (AnalyticsConstants.CHECK_DEVICE) {
                        str = getMacShell();
                    } else {
                        str = getMacBySystemInterface(context);
                    }
                }
            } else {
                str = getMacByJavaAPI();
                if (TextUtils.isEmpty(str)) {
                    str = getMacBySystemInterface(context);
                }
            }
        }
        sWifiMac = str;
        return sWifiMac;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0013 A[Catch: all -> 0x0076, TryCatch #0 {all -> 0x0076, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000d, B:8:0x0013, B:10:0x0025, B:12:0x0031, B:14:0x0037, B:17:0x003b, B:20:0x0046, B:21:0x005c, B:23:0x0062, B:24:0x006a), top: B:27:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getMacByJavaAPI() {
        /*
            r0 = 0
            java.lang.String r1 = "header_device_id_mac"
            boolean r1 = com.umeng.commonsdk.config.FieldManager.allow(r1)     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L76
            java.util.Enumeration r1 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Throwable -> L76
        Ld:
            boolean r2 = r1.hasMoreElements()     // Catch: java.lang.Throwable -> L76
            if (r2 == 0) goto L76
            java.lang.Object r2 = r1.nextElement()     // Catch: java.lang.Throwable -> L76
            java.net.NetworkInterface r2 = (java.net.NetworkInterface) r2     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "wlan0"
            java.lang.String r4 = r2.getName()     // Catch: java.lang.Throwable -> L76
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L76
            if (r3 != 0) goto L31
            java.lang.String r3 = "eth0"
            java.lang.String r4 = r2.getName()     // Catch: java.lang.Throwable -> L76
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L76
            if (r3 == 0) goto Ld
        L31:
            byte[] r1 = r2.getHardwareAddress()     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L76
            int r2 = r1.length     // Catch: java.lang.Throwable -> L76
            if (r2 != 0) goto L3b
            goto L76
        L3b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L76
            r2.<init>()     // Catch: java.lang.Throwable -> L76
            int r3 = r1.length     // Catch: java.lang.Throwable -> L76
            r4 = 0
            r5 = 0
        L43:
            r6 = 1
            if (r5 >= r3) goto L5c
            r7 = r1[r5]     // Catch: java.lang.Throwable -> L76
            java.lang.String r8 = "%02X:"
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L76
            java.lang.Byte r7 = java.lang.Byte.valueOf(r7)     // Catch: java.lang.Throwable -> L76
            r6[r4] = r7     // Catch: java.lang.Throwable -> L76
            java.lang.String r6 = java.lang.String.format(r8, r6)     // Catch: java.lang.Throwable -> L76
            r2.append(r6)     // Catch: java.lang.Throwable -> L76
            int r5 = r5 + 1
            goto L43
        L5c:
            int r1 = r2.length()     // Catch: java.lang.Throwable -> L76
            if (r1 <= 0) goto L6a
            int r1 = r2.length()     // Catch: java.lang.Throwable -> L76
            int r1 = r1 - r6
            r2.deleteCharAt(r1)     // Catch: java.lang.Throwable -> L76
        L6a:
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> L76
            java.util.Locale r2 = java.util.Locale.getDefault()     // Catch: java.lang.Throwable -> L76
            java.lang.String r0 = r1.toLowerCase(r2)     // Catch: java.lang.Throwable -> L76
        L76:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getMacByJavaAPI():java.lang.String");
    }

    public static String getMacBySystemInterface(Context context) {
        if (context == null) {
            return "";
        }
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.h)) {
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                    return wifiManager != null ? wifiManager.getConnectionInfo().getMacAddress() : "";
                } else if (AnalyticsConstants.UM_DEBUG) {
                    MLog.w(LOG_TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
                }
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                String str = LOG_TAG;
                StringBuilder m1016super = Cgoto.m1016super("Could not get mac address.");
                m1016super.append(th.toString());
                MLog.w(str, m1016super.toString());
            }
            return "";
        }
    }

    public static String getMacShell() {
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.h)) {
                String[] strArr = {"/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address"};
                for (int i = 0; i < 3; i++) {
                    String reaMac = reaMac(strArr[i]);
                    if (reaMac != null) {
                        return reaMac;
                    }
                }
                return null;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getMeid(Context context) {
        String str = null;
        if (context == null || ((TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.aj)) {
            try {
                if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    if (Build.VERSION.SDK_INT < 26) {
                        str = getIMEI(context);
                    } else {
                        str = meid(context);
                        if (TextUtils.isEmpty(str)) {
                            str = getIMEI(context);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return str;
    }

    public static String[] getNetworkAccessMode(Context context) {
        String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            strArr[0] = "";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "";
            return strArr;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "Wi-Fi";
            return strArr;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo2.getSubtypeName();
        }
        return strArr;
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static int getNetworkType(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getNetworkType();
            }
            return 0;
        } catch (Exception unused) {
            return -100;
        }
    }

    public static String getOaid(Context context) {
        if (!TextUtils.isEmpty(sOAID)) {
            return sOAID;
        }
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(h.f12311a, 0);
                if (sharedPreferences != null) {
                    String string = sharedPreferences.getString(h.b, "");
                    try {
                        sOAID = string;
                    } catch (Throwable unused) {
                    }
                    return string;
                }
                return "";
            } catch (Throwable unused2) {
                return "";
            }
        }
        return "";
    }

    public static String getPackageName(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageName();
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (!checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
                return null;
            }
            return telephonyManager.getNetworkOperator();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int[] getResolutionArray(Context context) {
        if (context == null) {
            return null;
        }
        int[] iArr = new int[2];
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            try {
                Method method = Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class);
                if (method != null) {
                    method.invoke(defaultDisplay, displayMetrics);
                    int i = displayMetrics.widthPixels;
                    int i2 = displayMetrics.heightPixels;
                    if (i > i2) {
                        iArr[0] = i2;
                        iArr[1] = i;
                    } else {
                        iArr[0] = i;
                        iArr[1] = i2;
                    }
                    iArr[0] = displayMetrics.widthPixels;
                    iArr[1] = displayMetrics.heightPixels;
                    return iArr;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x007b, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 29) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0083, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImeiFlag = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getSecondSimIMEi(android.content.Context r8) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImei
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r8 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImei
            return r8
        Lb:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 29
            if (r0 < r2) goto L17
            boolean r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImeiFlag
            if (r0 == 0) goto L17
            return r1
        L17:
            if (r8 == 0) goto L85
            java.lang.String r0 = "inner_imei2"
            boolean r0 = com.umeng.commonsdk.config.FieldManager.allow(r0)
            if (r0 == 0) goto L85
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 23
            if (r0 < r3) goto L85
            java.lang.String r0 = "android.permission.READ_PHONE_STATE"
            boolean r0 = com.umeng.commonsdk.utils.UMUtils.checkPermission(r8, r0)
            if (r0 == 0) goto L85
            r0 = 1
            java.lang.String r3 = "phone"
            java.lang.Object r8 = r8.getSystemService(r3)     // Catch: java.lang.Throwable -> L7e
            android.telephony.TelephonyManager r8 = (android.telephony.TelephonyManager) r8     // Catch: java.lang.Throwable -> L7e
            if (r8 != 0) goto L41
            int r8 = android.os.Build.VERSION.SDK_INT
            if (r8 < r2) goto L40
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImeiFlag = r0
        L40:
            return r1
        L41:
            java.lang.Class r1 = r8.getClass()     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = "getPhoneCount"
            r4 = 0
            java.lang.Class[] r5 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L7e
            java.lang.reflect.Method r3 = r1.getMethod(r3, r5)     // Catch: java.lang.Throwable -> L7e
            java.lang.Object[] r5 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r3 = r3.invoke(r8, r5)     // Catch: java.lang.Throwable -> L7e
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> L7e
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L7e
            r5 = 2
            if (r3 != r5) goto L79
            java.lang.String r3 = "getDeviceId"
            java.lang.Class[] r6 = new java.lang.Class[r0]     // Catch: java.lang.Throwable -> L7e
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L7e
            r6[r4] = r7     // Catch: java.lang.Throwable -> L7e
            java.lang.reflect.Method r1 = r1.getMethod(r3, r6)     // Catch: java.lang.Throwable -> L7e
            java.lang.Object[] r3 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L7e
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L7e
            r3[r4] = r5     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r8 = r1.invoke(r8, r3)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L7e
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImei = r8     // Catch: java.lang.Throwable -> L7e
        L79:
            int r8 = android.os.Build.VERSION.SDK_INT
            if (r8 < r2) goto L85
            goto L83
        L7e:
            int r8 = android.os.Build.VERSION.SDK_INT
            if (r8 < r2) goto L85
        L83:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImeiFlag = r0
        L85:
            java.lang.String r8 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSecondImei
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getSecondSimIMEi(android.content.Context):java.lang.String");
    }

    public static String getSerial() {
        return getSerialNo();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 29) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sSerialFlag = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getSerialNo() {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSerialNo
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSerialNo
            return r0
        Lb:
            int r0 = android.os.Build.VERSION.SDK_INT
            java.lang.String r1 = ""
            r2 = 29
            if (r0 < r2) goto L18
            boolean r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSerialFlag
            if (r0 == 0) goto L18
            return r1
        L18:
            java.lang.String r0 = "header_device_id_serialNo"
            boolean r0 = com.umeng.commonsdk.config.FieldManager.allow(r0)
            r3 = 0
            r4 = 1
            if (r0 == 0) goto L50
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L49
            r5 = 26
            if (r0 < r5) goto L3f
            java.lang.String r0 = "android.os.Build"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L42
            java.lang.String r5 = "getSerial"
            java.lang.Class[] r6 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L42
            java.lang.reflect.Method r5 = r0.getMethod(r5, r6)     // Catch: java.lang.Throwable -> L42
            java.lang.Object[] r6 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L42
            java.lang.Object r0 = r5.invoke(r0, r6)     // Catch: java.lang.Throwable -> L42
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L42
            goto L41
        L3f:
            java.lang.String r0 = android.os.Build.SERIAL     // Catch: java.lang.Throwable -> L49
        L41:
            r1 = r0
        L42:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSerialNo = r1     // Catch: java.lang.Throwable -> L49
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r2) goto L50
            goto L4e
        L49:
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r2) goto L50
        L4e:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSerialFlag = r4
        L50:
            boolean r0 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG
            if (r0 == 0) goto L63
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.LOG_TAG
            java.lang.Object[] r2 = new java.lang.Object[r4]
            java.lang.String r4 = "getDeviceId, serial no: "
            java.lang.String r1 = com.apk.Cgoto.m989case(r4, r1)
            r2[r3] = r1
            com.umeng.commonsdk.statistics.common.MLog.i(r0, r2)
        L63:
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSerialNo
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getSerialNo():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0045, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004a, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 29) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumberFlag = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getSimICCID(android.content.Context r4) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumber
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r4 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumber
            return r4
        Lb:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 29
            if (r0 < r2) goto L17
            boolean r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumberFlag
            if (r0 == 0) goto L17
            return r1
        L17:
            java.lang.String r0 = "inner_iccid"
            boolean r0 = com.umeng.commonsdk.config.FieldManager.allow(r0)
            if (r0 == 0) goto L4e
            r0 = 1
            if (r4 == 0) goto L48
            java.lang.String r3 = "android.permission.READ_PHONE_STATE"
            boolean r3 = com.umeng.commonsdk.utils.UMUtils.checkPermission(r4, r3)     // Catch: java.lang.Throwable -> L42
            if (r3 == 0) goto L48
            java.lang.String r3 = "phone"
            java.lang.Object r4 = r4.getSystemService(r3)     // Catch: java.lang.Throwable -> L42
            android.telephony.TelephonyManager r4 = (android.telephony.TelephonyManager) r4     // Catch: java.lang.Throwable -> L42
            if (r4 != 0) goto L3b
            int r4 = android.os.Build.VERSION.SDK_INT
            if (r4 < r2) goto L3a
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumberFlag = r0
        L3a:
            return r1
        L3b:
            java.lang.String r4 = r4.getSimSerialNumber()     // Catch: java.lang.Throwable -> L42
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumber = r4     // Catch: java.lang.Throwable -> L42
            goto L48
        L42:
            int r4 = android.os.Build.VERSION.SDK_INT
            if (r4 < r2) goto L4e
            goto L4c
        L48:
            int r4 = android.os.Build.VERSION.SDK_INT
            if (r4 < r2) goto L4e
        L4c:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumberFlag = r0
        L4e:
            java.lang.String r4 = com.umeng.commonsdk.statistics.common.DeviceConfig.sSimSerialNumber
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getSimICCID(android.content.Context):java.lang.String");
    }

    public static String getSubOSName(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty("ro.miui.ui.version.name");
            return TextUtils.isEmpty(property) ? isFlyMe() ? "Flyme" : isEmui(buildProp) ? "Emui" : !TextUtils.isEmpty(getYunOSVersion(buildProp)) ? "YunOS" : property : "MIUI";
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty("ro.miui.ui.version.name");
            if (TextUtils.isEmpty(property)) {
                try {
                    if (isFlyMe()) {
                        property = getFlymeVersion(buildProp);
                    } else if (isEmui(buildProp)) {
                        property = getEmuiVersion(buildProp);
                    } else {
                        property = getYunOSVersion(buildProp);
                    }
                    return property;
                } catch (Throwable unused) {
                    return property;
                }
            }
            return property;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int getTimeZone(Context context) {
        if (context == null) {
            return 8;
        }
        try {
            Calendar calendar = Calendar.getInstance(getLocale(context));
            if (calendar != null) {
                return calendar.getTimeZone().getRawOffset() / BaseConstants.Time.HOUR;
            }
        } catch (Throwable th) {
            MLog.i(LOG_TAG, "error in getTimeZone", th);
        }
        return 8;
    }

    public static String getYunOSVersion(Properties properties) {
        try {
            String property = properties.getProperty("ro.yunos.version");
            if (TextUtils.isEmpty(property)) {
                return null;
            }
            return property;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean isChineseAera(Context context) {
        String imprintProperty;
        if (context == null) {
            return false;
        }
        try {
            imprintProperty = UMEnvelopeBuild.imprintProperty(context, ak.O, "");
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(imprintProperty)) {
            return imprintProperty.equals("cn");
        }
        if (getImsi(context) == null) {
            String str = getLocaleInfo(context)[0];
            if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase("cn")) {
                return true;
            }
        } else {
            int i = context.getResources().getConfiguration().mcc;
            if (i != 460 && i != 461) {
                if (i == 0) {
                    String str2 = getLocaleInfo(context)[0];
                    if (TextUtils.isEmpty(str2) || !str2.equalsIgnoreCase("cn")) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static boolean isEmui(Properties properties) {
        return properties.getProperty(KEY_EMUI_VERSION_CODE, null) != null;
    }

    public static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isHarmony(Context context) {
        try {
            return context.getString(Resources.getSystem().getIdentifier("config_os_brand", "string", "android")).equals("harmony");
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isOnline(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            if (checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean isWiFiAvailable(Context context) {
        if (context == null) {
            return false;
        }
        return "Wi-Fi".equals(getNetworkAccessMode(context)[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
        if (android.os.Build.VERSION.SDK_INT < 29) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
        com.umeng.commonsdk.statistics.common.DeviceConfig.sMeid = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
        return com.umeng.commonsdk.statistics.common.DeviceConfig.sMeid;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String meid(android.content.Context r6) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sMeid
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lb
            java.lang.String r6 = com.umeng.commonsdk.statistics.common.DeviceConfig.sMeid
            return r6
        Lb:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            r2 = 0
            if (r0 < r1) goto L17
            boolean r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag
            if (r0 == 0) goto L17
            return r2
        L17:
            if (r6 != 0) goto L1a
            return r2
        L1a:
            r6 = 1
            java.lang.String r0 = "android.telephony.TelephonyManager"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L40
            java.lang.String r3 = "getMeid"
            r4 = 0
            java.lang.Class[] r5 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L40
            java.lang.reflect.Method r0 = r0.getMethod(r3, r5)     // Catch: java.lang.Throwable -> L40
            java.lang.Object[] r3 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L40
            java.lang.Object r0 = r0.invoke(r2, r3)     // Catch: java.lang.Throwable -> L40
            if (r0 == 0) goto L39
            boolean r3 = r0 instanceof java.lang.String     // Catch: java.lang.Throwable -> L40
            if (r3 == 0) goto L39
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L40
            r2 = r0
        L39:
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r1) goto L5e
        L3d:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r6
            goto L5e
        L40:
            r0 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L63
            r3.<init>()     // Catch: java.lang.Throwable -> L63
            java.lang.String r4 = "meid:"
            r3.append(r4)     // Catch: java.lang.Throwable -> L63
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L63
            r3.append(r0)     // Catch: java.lang.Throwable -> L63
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L63
            com.umeng.commonsdk.statistics.common.ULog.e(r0)     // Catch: java.lang.Throwable -> L63
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r1) goto L5e
            goto L3d
        L5e:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sMeid = r2
            java.lang.String r6 = com.umeng.commonsdk.statistics.common.DeviceConfig.sMeid
            return r6
        L63:
            r0 = move-exception
            int r2 = android.os.Build.VERSION.SDK_INT
            if (r2 < r1) goto L6a
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImeiOrMeidFlag = r6
        L6a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.meid(android.content.Context):java.lang.String");
    }

    public static String reaMac(String str) {
        BufferedReader bufferedReader;
        String str2 = null;
        try {
            FileReader fileReader = new FileReader(str);
            try {
                bufferedReader = new BufferedReader(fileReader, 1024);
            } catch (Throwable th) {
                th = th;
                bufferedReader = null;
            }
            try {
                str2 = bufferedReader.readLine();
                try {
                    fileReader.close();
                } catch (Throwable unused) {
                }
                bufferedReader.close();
            } catch (Throwable th2) {
                th = th2;
                try {
                    fileReader.close();
                } catch (Throwable unused2) {
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable unused4) {
        }
        return str2;
    }

    public static int reflectMetrics(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Throwable unused) {
            return -1;
        }
    }
}
