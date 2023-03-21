package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: GMBlackMarketProUtil.java */
/* loaded from: classes8.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11005a = true;
    public static boolean b = true;
    public static boolean c = true;
    public static boolean d = true;
    public static boolean e = true;
    public static boolean f;
    public static final Map<Integer, Map<String, List<List<String>>>> g = new HashMap();

    public static boolean a() {
        return f;
    }

    public static boolean b(StackTraceElement[] stackTraceElementArr) {
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0 || (map = g.get(7)) == null || (list = map.get("pangle")) == null || list.size() <= 1) {
            return true;
        }
        return a(stackTraceElementArr, list);
    }

    public static boolean c() {
        if (d) {
            d = false;
            return true;
        }
        return false;
    }

    public static boolean d() {
        if (b) {
            b = false;
            return true;
        }
        return false;
    }

    public static boolean e() {
        if (f11005a) {
            f11005a = false;
            return true;
        }
        return false;
    }

    public static boolean f() {
        if (c) {
            c = false;
            return true;
        }
        return false;
    }

    public static void a(boolean z) {
        f = z;
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                if (keys != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        JSONArray optJSONArray = jSONObject.optJSONArray(next);
                        if (optJSONArray != null) {
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                                Integer valueOf = Integer.valueOf(jSONObject2.optInt("rit_type"));
                                JSONArray optJSONArray2 = jSONObject2.optJSONArray("adn_features");
                                if (optJSONArray2 != null) {
                                    ArrayList arrayList = new ArrayList();
                                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                                        JSONArray jSONArray = optJSONArray2.getJSONArray(i2);
                                        if (jSONArray != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                                                String string = jSONArray.getString(i3);
                                                if (!TextUtils.isEmpty(string)) {
                                                    arrayList2.add(string);
                                                }
                                            }
                                            arrayList.add(arrayList2);
                                        }
                                    }
                                    if (arrayList.size() > 0) {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put(next, arrayList);
                                        g.put(valueOf, hashMap);
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                StringBuilder m1016super = Cgoto.m1016super("supervisorFeature error: ");
                m1016super.append(e2.toString());
                Logger.d("TMe", m1016super.toString());
                e2.printStackTrace();
                return;
            }
        }
        Logger.d("TMe", "--==-- adn features:" + g);
    }

    public static boolean b() {
        if (e) {
            e = false;
            return true;
        }
        return false;
    }

    public static boolean a(StackTraceElement[] stackTraceElementArr, List<List<String>> list) {
        for (List<String> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                for (int i = 0; i < stackTraceElementArr.length; i++) {
                    StackTraceElement stackTraceElement = stackTraceElementArr[i];
                    if (stackTraceElement != null) {
                        String stackTraceElement2 = stackTraceElement.toString();
                        if (!TextUtils.isEmpty(stackTraceElement2) && stackTraceElement2.contains(list2.get(0)) && (list2.size() == 1 || a(stackTraceElementArr, i, list2))) {
                            return true;
                        }
                    }
                }
                continue;
            }
        }
        return false;
    }

    public static boolean a(StackTraceElement[] stackTraceElementArr, int i, List<String> list) {
        int i2;
        for (int i3 = 0; i3 < list.size(); i3++) {
            String str = list.get(i3);
            if (TextUtils.isEmpty(str) || (i2 = i + i3) >= stackTraceElementArr.length) {
                return false;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i2];
            if (stackTraceElement != null) {
                String stackTraceElement2 = stackTraceElement.toString();
                if (TextUtils.isEmpty(stackTraceElement2) || !stackTraceElement2.contains(str)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean a(StackTraceElement[] stackTraceElementArr) {
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0 || (map = g.get(8)) == null || (list = map.get("pangle")) == null || list.size() <= 1) {
            return true;
        }
        return a(stackTraceElementArr, list);
    }
}
