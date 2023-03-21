package bykvm_19do.bykvm_19do.bykvm_19do;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.baidu.tts.loopj.HttpGet;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class s {
    public static JSONObject b;

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f10645a = {HttpGet.METHOD_NAME, "POST"};
    public static final String[] c = {"aid", "app_version", "tt_data"};
    public static final String[] d = {"aid", "version_code", "ab_client", "ab_version", "ab_feature", "ab_group", "iid", "device_platform"};
    public static final String[] e = {"tt_data", "device_platform"};

    public static String a(String str) {
        String[] strArr;
        if (!TextUtils.isEmpty(str) && a.h()) {
            Uri parse = Uri.parse(str);
            String query = parse.getQuery();
            ArrayList arrayList = new ArrayList();
            for (String str2 : c) {
                String queryParameter = parse.getQueryParameter(str2);
                if (!TextUtils.isEmpty(queryParameter)) {
                    arrayList.add(new Pair(str2, queryParameter));
                }
            }
            Uri.Builder buildUpon = parse.buildUpon();
            buildUpon.clearQuery();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                buildUpon.appendQueryParameter((String) pair.first, (String) pair.second);
            }
            buildUpon.appendQueryParameter("tt_info", new String(Base64.encode(a.a(query), 8)));
            return buildUpon.build().toString();
        }
        return str;
    }

    public static boolean b(String str, JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder(str);
        float rawOffset = (TimeZone.getDefault().getRawOffset() * 1.0f) / 3600000.0f;
        if (rawOffset < -12.0f) {
            rawOffset = -12.0f;
        }
        if (rawOffset > 12.0f) {
            rawOffset = 12.0f;
        }
        a(sb, ak.M, rawOffset + "");
        JSONArray optJSONArray = jSONObject.optJSONArray("sim_serial_number");
        if (optJSONArray != null) {
            try {
                String optString = ((JSONObject) optJSONArray.get(0)).optString("sim_serial_number");
                for (int i = 1; i < optJSONArray.length(); i++) {
                    optString = optString + "," + ((JSONObject) optJSONArray.get(i)).optString("sim_serial_number");
                }
                a(sb, "sim_serial_number", optString);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        JSONObject jSONObject2 = null;
        String a2 = a(0, a(sb.toString()), null, null);
        if (a2 != null) {
            try {
                jSONObject2 = new JSONObject(a2);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
        return jSONObject2 != null && "success".equals(jSONObject2.optString("message", ""));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONObject c(java.lang.String r3, org.json.JSONObject r4) {
        /*
            java.lang.String r4 = r4.toString()
            byte[] r4 = bykvm_19do.bykvm_19do.bykvm_19do.a.a(r4)
            r0 = 1
            r1 = 0
            java.lang.String r3 = a(r0, r3, r1, r4)
            if (r3 == 0) goto L1a
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L16
            r4.<init>(r3)     // Catch: org.json.JSONException -> L16
            goto L1b
        L16:
            r3 = move-exception
            r3.printStackTrace()
        L1a:
            r4 = r1
        L1b:
            if (r4 == 0) goto L2e
            java.lang.String r3 = "magic_tag"
            java.lang.String r2 = ""
            java.lang.String r3 = r4.optString(r3, r2)
            java.lang.String r2 = "ss_app_log"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L2e
            goto L2f
        L2e:
            r0 = 0
        L2f:
            if (r0 == 0) goto L38
            java.lang.String r3 = "config"
            org.json.JSONObject r3 = r4.optJSONObject(r3)
            return r3
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.s.c(java.lang.String, org.json.JSONObject):org.json.JSONObject");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONObject d(java.lang.String r3, org.json.JSONObject r4) {
        /*
            java.lang.String r4 = r4.toString()
            byte[] r4 = bykvm_19do.bykvm_19do.bykvm_19do.a.a(r4)
            r0 = 1
            r1 = 0
            java.lang.String r3 = a(r0, r3, r1, r4)
            if (r3 == 0) goto L1a
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L16
            r4.<init>(r3)     // Catch: org.json.JSONException -> L16
            goto L1b
        L16:
            r3 = move-exception
            r3.printStackTrace()
        L1a:
            r4 = r1
        L1b:
            if (r4 == 0) goto L2e
            java.lang.String r3 = "message"
            java.lang.String r2 = ""
            java.lang.String r3 = r4.optString(r3, r2)
            java.lang.String r2 = "success"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L2e
            goto L2f
        L2e:
            r0 = 0
        L2f:
            if (r0 == 0) goto L38
            java.lang.String r3 = "data"
            org.json.JSONObject r3 = r4.optJSONObject(r3)
            return r3
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.s.d(java.lang.String, org.json.JSONObject):org.json.JSONObject");
    }

    public static String a(String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        HashMap hashMap = new HashMap(strArr.length);
        for (String str2 : strArr) {
            String queryParameter = parse.getQueryParameter(str2);
            if (!TextUtils.isEmpty(queryParameter)) {
                hashMap.put(str2, queryParameter);
            }
        }
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.clearQuery();
        for (String str3 : hashMap.keySet()) {
            buildUpon.appendQueryParameter(str3, (String) hashMap.get(str3));
        }
        return buildUpon.build().toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x01c2, code lost:
        if (r7 == null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c4, code lost:
        r7.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(int r6, java.lang.String r7, java.util.HashMap<java.lang.String, java.lang.String> r8, byte[] r9) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.s.a(int, java.lang.String, java.util.HashMap, byte[]):java.lang.String");
    }

    public static JSONObject a(String str, JSONObject jSONObject) {
        HashMap hashMap = new HashMap(2);
        if (a.h()) {
            hashMap.put(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/octet-stream;tt-data=a");
        } else {
            hashMap.put(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
        }
        String a2 = a(1, a(str), hashMap, a.a(jSONObject.toString()));
        if (a2 != null) {
            try {
                return new JSONObject(a2);
            } catch (JSONException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static void a(StringBuilder sb, String str, String str2) {
        if (sb == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (sb.toString().indexOf(63) < 0) {
            sb.append("?");
        } else {
            sb.append("&");
        }
        sb.append(str);
        sb.append("=");
        sb.append(Uri.encode(str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(java.lang.String[] r9, byte[] r10, bykvm_19do.bykvm_19do.bykvm_19do.j2 r11) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.s.a(java.lang.String[], byte[], bykvm_19do.bykvm_19do.bykvm_19do.j2):int");
    }
}
