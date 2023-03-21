package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.text.TextUtils;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* compiled from: GMStackUtil.java */
/* loaded from: classes8.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    public static final HashSet f11008a = new HashSet(Arrays.asList("dalvik.system.VMStack.getThreadStackTrace", "java.lang.Thread.getStackTrace"));

    public static String a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            if (stackTraceElement != null) {
                if (!f11008a.contains(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName())) {
                    String className = stackTraceElement.getClassName();
                    if (className != null && className.startsWith("android.app")) {
                        break;
                    }
                    jSONArray.put(stackTraceElement.toString());
                } else {
                    continue;
                }
            }
        }
        return jSONArray.toString();
    }

    public static String b(StackTraceElement[] stackTraceElementArr) {
        Map<String, List<String>> i = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().i();
        if (i == null || i.isEmpty()) {
            return null;
        }
        for (String str : i.keySet()) {
            if (a(i.get(str), stackTraceElementArr)) {
                return str;
            }
        }
        return null;
    }

    public static String a(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (String str : map.keySet()) {
            if (a(map.get(str))) {
                jSONArray.put(str);
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return jSONArray.toString();
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean a(List<String> list, StackTraceElement[] stackTraceElementArr) {
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (list.get(i) != null && stackTraceElement.toString().contains(list.get(i))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean a(TTBaseAd tTBaseAd) {
        return tTBaseAd != null && tTBaseAd.isClientBiddingAd() && tTBaseAd.isCustomAd();
    }

    public static boolean a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar) {
        return iVar != null && iVar.B() && iVar.C();
    }
}
