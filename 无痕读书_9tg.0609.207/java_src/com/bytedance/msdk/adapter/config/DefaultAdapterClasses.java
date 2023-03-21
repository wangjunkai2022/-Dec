package com.bytedance.msdk.adapter.config;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b;
import com.bytedance.msdk.adapter.util.Logger;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes8.dex */
public class DefaultAdapterClasses {

    /* renamed from: do  reason: not valid java name */
    public static final Set<String> f8457do;

    static {
        HashSet hashSet = new HashSet();
        f8457do = hashSet;
        hashSet.add("com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.unity.UnityAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.baidu.BaiduAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.sigmob.SigmobAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.admob.AdmobAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.gdt.GdtAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.ks.KsAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.mintegral.MintegralAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.klevin.KlevinAdapterConfiguration");
        f8457do.add("com.bytedance.msdk.adapter.panglecustom.PangleCustomAdapterConfiguration");
    }

    public static Class<?> getClass(String str) {
        String classNameByAdnName = getClassNameByAdnName(str);
        if (!TextUtils.isEmpty(classNameByAdnName)) {
            try {
                return Class.forName(classNameByAdnName);
            } catch (Throwable th) {
                th.printStackTrace();
                Logger.e("TTMediationSDK_ADAPTER", "DefaultAdapterClasses#getClass error:" + th.toString());
            }
        }
        return null;
    }

    public static String getClassNameByAdnName(String str) {
        if ("pangle".equals(str)) {
            if (!b.G().x()) {
                return "com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration";
            }
        } else if (!"pangle_custom".equals(str)) {
            return "unity".equals(str) ? "com.bytedance.msdk.adapter.unity.UnityAdapterConfiguration" : "baidu".equals(str) ? "com.bytedance.msdk.adapter.baidu.BaiduAdapterConfiguration" : "admob".equals(str) ? "com.bytedance.msdk.adapter.admob.AdmobAdapterConfiguration" : "gdt".equals(str) ? "com.bytedance.msdk.adapter.gdt.GdtAdapterConfiguration" : "ks".equals(str) ? "com.bytedance.msdk.adapter.ks.KsAdapterConfiguration" : "sigmob".equals(str) ? "com.bytedance.msdk.adapter.sigmob.SigmobAdapterConfiguration" : "mintegral".equals(str) ? "com.bytedance.msdk.adapter.mintegral.MintegralAdapterConfiguration" : "klevin".equals(str) ? "com.bytedance.msdk.adapter.klevin.KlevinAdapterConfiguration" : "";
        }
        return "com.bytedance.msdk.adapter.panglecustom.PangleCustomAdapterConfiguration";
    }

    public static Set<String> getClassNamesSet() {
        return f8457do;
    }
}
