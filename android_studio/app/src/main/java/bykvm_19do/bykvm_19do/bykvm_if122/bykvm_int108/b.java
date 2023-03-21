package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.os.Build;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.bytedance.msdk.adapter.config.DefaultAdapterClasses;
import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: InitChecker.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final GMSettingConfigCallback f10970a = new a();

    /* compiled from: InitChecker.java */
    /* loaded from: classes8.dex */
    public static class a implements GMSettingConfigCallback {
        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            try {
                b.d();
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public static void c() {
        try {
            if (Logger.isDebug() && GMMediationAdSdk.configLoadSuccess()) {
                d();
            }
        } catch (Throwable unused) {
        }
    }

    public static synchronized void d() {
        List<String> a2;
        synchronized (b.class) {
            Context d = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d();
            if (d == null) {
                return;
            }
            Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> b = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().b();
            if (b == null) {
                return;
            }
            int i = d.getApplicationInfo().targetSdkVersion;
            Logger.i("TTMediationSDK_SDK_Init", "------------------ GroMore 接入信息 start ---------------------");
            Logger.d("TTMediationSDK_SDK_Init", "当前接入的GroMore SDK版本是：3.6.0.1");
            if ((Build.VERSION.SDK_INT >= 24 || i >= 24) && (a2 = a(d)) != null) {
                Iterator<String> it = b.keySet().iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (!"unity".equals(next) && !"pangle_custom".equals(next)) {
                        if ("pangle".equals(next) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().x()) {
                            next = "pangle_custom";
                        }
                        if (a2.contains(next)) {
                            Logger.i("TTMediationSDK_SDK_Init", "已按要求接入三方广告sdk【" + next + "】");
                        } else {
                            Logger.e("TTMediationSDK_SDK_Init", "未按要求接入三方广告sdk【" + next + "】，请检查接入配置");
                        }
                    }
                }
            }
            Logger.i("TTMediationSDK_SDK_Init", "------------------ GroMore 接入信息 end ---------------------");
            Logger.i("TTMediationSDK_SDK_Init", "------------------ GroMore 版本信息 start ---------------------");
            Map<String, ITTAdapterConfiguration> e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
            Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> b2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().b();
            if (e != null && b2 != null) {
                for (String str : b2.keySet()) {
                    if (!"pangle_custom".equals(str) && !TextUtils.isEmpty(str)) {
                        ITTAdapterConfiguration iTTAdapterConfiguration = e.get(DefaultAdapterClasses.getClassNameByAdnName(str));
                        if (iTTAdapterConfiguration != null) {
                            iTTAdapterConfiguration.checkVersion();
                        } else {
                            Logger.e("TTMediationSDK_InitChecker", "没有引入" + str + "Adapter,请检查相关引入情况");
                        }
                    }
                }
            }
            Logger.i("TTMediationSDK_SDK_Init", "------------------ GroMore 版本信息 end ---------------------");
        }
    }

    public static int a(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            return 1;
        }
        if (str.startsWith(ak.aE) || str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str = str.substring(1);
        }
        if (str2.startsWith(ak.aE) || str2.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str2 = str2.substring(1);
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int min = Math.min(split.length, split2.length);
        for (int i = 0; i < min; i++) {
            if (split[i].length() != split2[i].length()) {
                return split[i].length() > split2[i].length() ? 1 : -1;
            }
            int compareTo = split[i].compareTo(split2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (split.length == split2.length) {
            return 0;
        }
        return split.length > split2.length ? 1 : -1;
    }

    public static boolean b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (str.equals("pangle")) {
            return true;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1128782217:
                if (str.equals("klevin")) {
                    c = 5;
                    break;
                }
                break;
            case -902468465:
                if (str.equals("sigmob")) {
                    c = 4;
                    break;
                }
                break;
            case 3432:
                if (str.equals("ks")) {
                    c = 6;
                    break;
                }
                break;
            case 102199:
                if (str.equals("gdt")) {
                    c = 3;
                    break;
                }
                break;
            case 92668925:
                if (str.equals("admob")) {
                    c = 0;
                    break;
                }
                break;
            case 93498907:
                if (str.equals("baidu")) {
                    c = 1;
                    break;
                }
                break;
            case 111433589:
                if (str.equals("unity")) {
                    c = 2;
                    break;
                }
                break;
            case 1126045977:
                if (str.equals("mintegral")) {
                    c = 7;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (a(str2, "17.2.0.30") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "admobAdapter版本不符合，要求<=17.2.0.30，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "admobAdapter版本正常，要求<=17.2.0.30，当前是" + str2);
                break;
            case 1:
                if (a(str2, "9.223.1") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "百度Adapter版本不符合，要求等于9.223.1，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "百度Adapter版本正常，要求等于9.223.1，当前是" + str2);
                break;
            case 2:
                if (a(str2, "4.2.1.4") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "unityAdapter版本不符合，要求等于4.2.1.4，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "unityAdapter版本正常，要求等于4.2.1.4，当前是" + str2);
                break;
            case 3:
                if (a(str2, "4.480.1350.1") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "gdtAdapter版本不符合，要求等于4.480.1350.1，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "gdtAdapter版本正常，要求等于4.480.1350.1，当前是" + str2);
                break;
            case 4:
                if (a(str2, "4.4.0.1") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "sigmobAdapter版本不符合, 要求版本等于4.4.0.1，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "sigmobAdapter版本正常, 要求版本等于4.4.0.1，当前是" + str2);
                break;
            case 5:
                if (a(str2, "2.9.0.9.1") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "klevinAdapter版本不符合, 要求版本等于2.9.0.9.1，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "klevinAdapter版本正常, 要求版本等于2.9.0.9.1，当前是" + str2);
                break;
            case 6:
                if (a(str2, "3.3.26.3") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "快手Adapter版本不符合, 要求版本等于3.3.26.3，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "快手Adapter版本正常, 要求版本等于3.3.26.3，当前是" + str2);
                break;
            case 7:
                if (a(str2, "16.1.87.1") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "MintegralAdapter版本不符合, 要求版本等于16.1.87.1，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "MintegralAdapter版本正常, 要求版本等于16.1.87.1，当前是" + str2);
                break;
            default:
                return false;
        }
        return true;
    }

    public static boolean c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (str.equals("baidu") || str.equals("admob")) {
            return true;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1128782217:
                if (str.equals("klevin")) {
                    c = 4;
                    break;
                }
                break;
            case -995541405:
                if (str.equals("pangle")) {
                    c = 0;
                    break;
                }
                break;
            case -902468465:
                if (str.equals("sigmob")) {
                    c = 3;
                    break;
                }
                break;
            case 3432:
                if (str.equals("ks")) {
                    c = 5;
                    break;
                }
                break;
            case 102199:
                if (str.equals("gdt")) {
                    c = 2;
                    break;
                }
                break;
            case 111433589:
                if (str.equals("unity")) {
                    c = 1;
                    break;
                }
                break;
            case 1126045977:
                if (str.equals("mintegral")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (a(str2, "4.6.0.7") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "穿山甲版本不符合，要求等于4.6.0.7，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "穿山甲版本正常，要求等于4.6.0.7，当前是" + str2);
                break;
            case 1:
                if (a(str2, "4.2.1") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "unity版本不符合，要求等于4.2.1，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "unity版本正常，要求等于4.2.1，当前是" + str2);
                break;
            case 2:
                if (a(str2, "4.480.1350") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "gdt版本不符合，要求等于4.480.1350，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "gdt版本正常，要求等于4.480.1350，当前是" + str2);
                break;
            case 3:
                if (a(str2, "4.4.0") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "sigmob版本不符合, 要求版本等于4.4.0，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "sigmob版本正常, 要求版本等于4.4.0，当前是" + str2);
                break;
            case 4:
                if (a(str2, "2.9.0.9") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "klevin版本不符合, 要求版本等于2.9.0.9，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "klevin版本正常, 要求版本等于2.9.0.9，当前是" + str2);
                break;
            case 5:
                if (a(str2, "3.3.26") != 0) {
                    Logger.e("TTMediationSDK_InitChecker", "快手版本不符合, 要求版本等于3.3.26，当前是" + str2);
                    return false;
                }
                Logger.d("TTMediationSDK_InitChecker", "快手版本正常, 要求版本等于3.3.26，当前是" + str2);
                break;
            case 6:
                if (!TextUtils.isEmpty(str2) && str2.contains("16.1.87")) {
                    Logger.d("TTMediationSDK_InitChecker", "Mintegral版本正常, 要求版本等于16.1.87，当前是" + str2);
                    break;
                } else {
                    Logger.e("TTMediationSDK_InitChecker", "Mintegral版本不符合, 要求版本等于16.1.87，当前是" + str2);
                    return false;
                }
            default:
                return false;
        }
        return true;
    }

    public static List<String> a(Context context) {
        List<ProviderInfo> queryContentProviders = context.getPackageManager().queryContentProviders(context.getApplicationInfo().processName, context.getApplicationInfo().uid, 131072);
        if (queryContentProviders == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        context.getPackageName();
        for (ProviderInfo providerInfo : queryContentProviders) {
            String str = providerInfo.name;
            char c = 65535;
            switch (str.hashCode()) {
                case -2132028139:
                    if (str.equals("com.baidu.mobads.sdk.api.BdFileProvider")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1630533804:
                    if (str.equals("com.mbridge.msdk.foundation.tools.MBFileProvider")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -1097984862:
                    if (str.equals("com.sigmob.sdk.SigmobFileProvider")) {
                        c = 4;
                        break;
                    }
                    break;
                case 8917003:
                    if (str.equals("com.tencent.klevin.utils.FileProvider")) {
                        c = 5;
                        break;
                    }
                    break;
                case 405711305:
                    if (str.equals("com.google.android.gms.ads.MobileAdsInitProvider")) {
                        c = 6;
                        break;
                    }
                    break;
                case 787345346:
                    if (str.equals("com.bykv.vk.openvk.TTFileProvider")) {
                        c = 1;
                        break;
                    }
                    break;
                case 980611709:
                    if (str.equals("com.kwad.sdk.api.proxy.app.AdSdkFileProvider")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1010345138:
                    if (str.equals("com.bytedance.sdk.openadsdk.TTFileProvider")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1011081416:
                    if (str.equals("com.unity")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 1719438508:
                    if (str.equals("com.qq.e.comm.GDTFileProvider")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    arrayList.add("pangle");
                    break;
                case 1:
                    arrayList.add("pangle_custom");
                    break;
                case 2:
                    arrayList.add("gdt");
                    break;
                case 3:
                    arrayList.add("baidu");
                    break;
                case 4:
                    arrayList.add("sigmob");
                    break;
                case 5:
                    arrayList.add("klevin");
                    break;
                case 6:
                    arrayList.add("admob");
                    break;
                case 7:
                    arrayList.add("ks");
                    break;
                case '\b':
                    arrayList.add("mintegral");
                    break;
                case '\t':
                    arrayList.add("unity");
                    break;
            }
        }
        return arrayList;
    }
}
