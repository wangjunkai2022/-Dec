package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.config.IGMInitAdnResult;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomInitConfig;
import com.bytedance.msdk.api.v2.ad.custom.init.GMCustomAdapterConfiguration;
import com.bytedance.msdk.base.TTBaseAd;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Map;
/* compiled from: InitCustomerHelper.java */
/* loaded from: classes8.dex */
public class c {

    /* compiled from: InitCustomerHelper.java */
    /* loaded from: classes8.dex */
    public static class a implements IGMInitAdnResult {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Map.Entry f10974a;

        public a(Map.Entry entry) {
            this.f10974a = entry;
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void fail(@NonNull AdError adError) {
            if (adError != null) {
                Boolean bool = Boolean.FALSE;
                StringBuilder m1016super = Cgoto.m1016super("errorCode = ");
                m1016super.append(adError.code);
                m1016super.append(" errorMessage = ");
                m1016super.append(adError.message);
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a((String) this.f10974a.getKey(), new Pair(bool, m1016super.toString()));
            }
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void success() {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a((String) this.f10974a.getKey(), new Pair(Boolean.TRUE, ""));
        }
    }

    public static void a(Context context) {
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> c = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().c();
        if (c != null) {
            for (Map.Entry<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> entry : c.entrySet()) {
                try {
                    a(context, entry.getValue().c(), new a(entry));
                } catch (Exception e) {
                    e.printStackTrace();
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(entry.getKey(), new Pair(Boolean.FALSE, e.toString()));
                    h.a(entry.getKey(), (TTBaseAd) null, (AdSlot) null, (i) null, new AdError(AdError.ERROR_CODE_CUSTOM_INIT, e.toString()));
                }
            }
            return;
        }
        h.a("", (TTBaseAd) null, (AdSlot) null, (i) null, new AdError(AdError.ERROR_CODE_CUSTOM_INIT, "获取的自定义Adapter总配置为null"));
    }

    public static String b(Class<?> cls, Class<?> cls2) {
        Method[] methods;
        for (Method method : cls2.getMethods()) {
            HashSet hashSet = new HashSet();
            for (Method method2 : Object.class.getMethods()) {
                hashSet.add(method2.getName());
            }
            if (!hashSet.contains(method.getName())) {
                try {
                    cls.getMethod(method.getName(), method.getParameterTypes());
                } catch (NoSuchMethodException e) {
                    e.printStackTrace();
                    return "自定义ADN校验API失败接入API不符合版本需求，不符合的API的方法名为 " + method.getName();
                }
            }
        }
        return "";
    }

    public static void a(Context context, GMCustomInitConfig gMCustomInitConfig, IGMInitAdnResult iGMInitAdnResult) throws Exception {
        if (gMCustomInitConfig == null || TextUtils.isEmpty(gMCustomInitConfig.getAdnInitClassName())) {
            if (gMCustomInitConfig == null) {
                throw new Exception("自定义ADN初始化失败，获取的自定义Adapter单条配置为null");
            }
            throw new Exception("自定义ADN初始化失败，获取的自定义Adapter单条配置初始化类名为空");
        }
        try {
            Class<?> cls = Class.forName(gMCustomInitConfig.getAdnInitClassName());
            if (a(cls)) {
                try {
                    GMCustomAdapterConfiguration b = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.d().b(gMCustomInitConfig.getADNName());
                    if (b != null) {
                        if (!b.isInit()) {
                            a(context, gMCustomInitConfig, b);
                        }
                        iGMInitAdnResult.success();
                        return;
                    }
                    Object newInstance = cls.newInstance();
                    if (newInstance instanceof GMCustomAdapterConfiguration) {
                        GMCustomAdapterConfiguration gMCustomAdapterConfiguration = (GMCustomAdapterConfiguration) newInstance;
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.d().a(gMCustomInitConfig.getADNName(), gMCustomAdapterConfiguration);
                        a(context, gMCustomInitConfig, gMCustomAdapterConfiguration);
                        iGMInitAdnResult.success();
                        return;
                    }
                    throw new Exception("自定义ADN初始化失败，初始化对象类型错误，对象类型为" + GMCustomAdapterConfiguration.class.getName());
                } catch (IllegalAccessException unused) {
                    throw new Exception("自定义ADN初始化失败，IllegalAccessException");
                } catch (InstantiationException unused2) {
                    throw new Exception("自定义ADN舒适化失败，InstantiationException");
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new Exception("自定义ADN初始化失败，ClassNotFoundException");
        }
    }

    public static void a(Context context, GMCustomInitConfig gMCustomInitConfig, GMCustomAdapterConfiguration gMCustomAdapterConfiguration) {
        if (context == null) {
            h.a(gMCustomInitConfig.getADNName(), (TTBaseAd) null, (AdSlot) null, (i) null, new AdError(AdError.ERROR_CODE_CUSTOM_INIT, "context为null"));
            return;
        }
        String a2 = a(gMCustomAdapterConfiguration);
        if (!TextUtils.isEmpty(a2)) {
            h.a(gMCustomInitConfig.getADNName(), (TTBaseAd) null, (AdSlot) null, (i) null, new AdError(AdError.ERROR_CODE_CUSTOM_INIT, a2));
            return;
        }
        try {
            gMCustomAdapterConfiguration.initializeInnerADN(context.getApplicationContext(), gMCustomInitConfig, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().g());
        } catch (Exception e) {
            String aDNName = gMCustomInitConfig.getADNName();
            StringBuilder m1016super = Cgoto.m1016super("调用自定义Adapter初始化方法出现异常 ");
            m1016super.append(e.getClass().getName());
            h.a(aDNName, (TTBaseAd) null, (AdSlot) null, (i) null, new AdError(AdError.ERROR_CODE_CUSTOM_INIT, m1016super.toString()));
            e.printStackTrace();
        }
    }

    public static boolean a(Class<?> cls) {
        String b;
        if (!a(cls, GMCustomAdapterConfiguration.class)) {
            StringBuilder m1016super = Cgoto.m1016super("自定义ADN初始化失败  ---------  初始化类 ");
            m1016super.append(cls.getSimpleName());
            m1016super.append(" 需要继承自自定义ADN的初始化Adapter类 ");
            m1016super.append(GMCustomAdapterConfiguration.class.getSimpleName());
            b = m1016super.toString();
        } else {
            b = b(cls, GMCustomAdapterConfiguration.class);
        }
        if (TextUtils.isEmpty(b)) {
            return true;
        }
        Logger.e("TTMediationSDK_SDK_Init", b);
        h.a("", (TTBaseAd) null, (AdSlot) null, (i) null, new AdError(AdError.ERROR_CODE_CUSTOM_INIT, b));
        return false;
    }

    public static boolean a(Class<?> cls, Class<?> cls2) {
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (superclass == cls2) {
                return true;
            }
        }
        return false;
    }

    public static String a(GMCustomAdapterConfiguration gMCustomAdapterConfiguration) {
        return gMCustomAdapterConfiguration == null ? "customAdapterConfiguration 为null" : TextUtils.isEmpty(gMCustomAdapterConfiguration.getNetworkSdkVersion()) ? "自定义ADN 初始化失败 getNetworkSdkVersion()返字符串不能为空" : TextUtils.isEmpty(gMCustomAdapterConfiguration.getAdapterSdkVersion()) ? "自定义ADN 初始化失败 getAdapterSdkVersion()返字符串不能为空" : "";
    }
}
