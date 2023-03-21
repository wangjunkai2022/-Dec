package com.apk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: AdHelper.java */
/* loaded from: classes8.dex */
public class i {

    /* renamed from: do  reason: not valid java name */
    public static final Map<String, JSONObject> f2028do = new HashMap();

    /* renamed from: case  reason: not valid java name */
    public static void m1173case(String str) {
        tt.f4763do.putLong(Cgoto.m989case("SP_AD_SHOW_INTERVAL_KEY_", str), System.currentTimeMillis());
    }

    /* renamed from: do  reason: not valid java name */
    public static void m1174do(String str) {
        StringBuilder m1016super = Cgoto.m1016super("SP_AD_SHOW_MAX_DAY_KEY_");
        m1016super.append(kg.m1498if());
        m1016super.append("_");
        m1016super.append(str);
        String sb = m1016super.toString();
        tt.f4763do.putInt(sb, m1175for(str) + 1);
    }

    /* renamed from: for  reason: not valid java name */
    public static int m1175for(String str) {
        StringBuilder m1016super = Cgoto.m1016super("SP_AD_SHOW_MAX_DAY_KEY_");
        m1016super.append(kg.m1498if());
        m1016super.append("_");
        m1016super.append(str);
        return ze.m3174instanceof(m1016super.toString(), 0);
    }

    /* renamed from: if  reason: not valid java name */
    public static JSONObject m1176if(String str) {
        return f2028do.get(str);
    }

    /* renamed from: new  reason: not valid java name */
    public static boolean m1177new(String str, int i, int i2) {
        if (m1176if(str) == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("SP_AD_SHOW_INTERVAL_KEY_");
        sb.append(str);
        return ((Math.abs(currentTimeMillis - ze.a(sb.toString(), 0L)) > ((long) (i * 1000)) ? 1 : (Math.abs(currentTimeMillis - ze.a(sb.toString(), 0L)) == ((long) (i * 1000)) ? 0 : -1)) > 0) && m1175for(str) <= i2;
    }

    /* renamed from: try  reason: not valid java name */
    public static void m1178try(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        f2028do.put(str, jSONObject);
    }
}
