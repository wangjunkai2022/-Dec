package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.p;
import com.apk.Cgoto;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ReportNetApiImpl.java */
/* loaded from: classes8.dex */
public class b implements a<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> {
    public b(Context context) {
    }

    public static JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject2;
        }
        try {
            try {
                String a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a();
                String str = 2 + a2 + bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.b(jSONObject.toString(), bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(a2));
                if (!TextUtils.isEmpty(str)) {
                    jSONObject2.put("message", str);
                    jSONObject2.put("cypher", 2);
                } else {
                    jSONObject2.put("message", jSONObject.toString());
                    jSONObject2.put("cypher", 0);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            jSONObject2.put("message", jSONObject.toString());
            jSONObject2.put("cypher", 0);
        }
        return jSONObject2;
    }

    private String b(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        if (list != null && !list.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar : list) {
                    jSONArray.put(aVar.b);
                }
                jSONObject.put("stats_list", jSONArray);
                JSONObject a2 = a(jSONObject);
                a2.putOpt("ad_sdk_version", "3.6.0.1");
                return a2.toString();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private byte[] c(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        byte[] d = d(list);
        return a(d, d.length);
    }

    private byte[] d(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject e = e(list);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        try {
            try {
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            gZIPOutputStream.write(e.toString().getBytes());
            gZIPOutputStream.close();
        } catch (Exception e4) {
            e = e4;
            gZIPOutputStream2 = gZIPOutputStream;
            e.printStackTrace();
            if (gZIPOutputStream2 != null) {
                gZIPOutputStream2.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    private JSONObject e(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_user_agent", m.j());
            jSONObject.put("client_ip", m.a());
            jSONObject.put("header", m.i());
            JSONArray jSONArray = new JSONArray();
            for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar : list) {
                jSONArray.put(aVar.b);
            }
            jSONObject.put("event_v3", jSONArray);
            jSONObject.put("magic_tag", "ss_app_log");
            jSONObject.put("_gen_time", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private Map<String, String> b() {
        return Cgoto.m1007native(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/octet-stream;tt-data=a");
    }

    private boolean b(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.optInt(PluginConstants.KEY_ERROR_CODE) != 20000) {
                    if (!"success".equals(jSONObject.optString("message"))) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.g a(java.lang.String r2, byte[] r3, java.util.Map<java.lang.String, java.lang.String> r4, @androidx.annotation.NonNull java.lang.String r5) {
        /*
            r1 = this;
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b r4 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b.b()
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a r4 = r4.a()
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.c r4 = r4.c()
            r4.b(r2)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G()
            java.lang.String r2 = r2.p()
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 != 0) goto L29
            java.lang.String r0 = "X-Tt-Env"
            r4.a(r0, r2)
            java.lang.String r2 = "x-use-ppe"
            java.lang.String r0 = "1"
            r4.a(r2, r0)
        L29:
            java.lang.String r2 = com.apk.os.f3494if
            java.lang.String r0 = "User-Agent"
            r4.a(r0, r2)
            r4.a(r5, r3)
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b r2 = r4.b()
            r3 = 1
            if (r2 == 0) goto L65
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L4b
            java.lang.String r5 = r2.a()     // Catch: org.json.JSONException -> L4b
            r4.<init>(r5)     // Catch: org.json.JSONException -> L4b
            boolean r4 = r1.b(r4)     // Catch: org.json.JSONException -> L4b
            if (r4 == 0) goto L65
            r4 = 1
            goto L66
        L4b:
            r4 = move-exception
            java.lang.String r5 = "ignore:"
            java.lang.StringBuilder r5 = com.apk.Cgoto.m1016super(r5)
            java.lang.String r0 = r4.toString()
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "uploadEvent"
            com.bytedance.msdk.adapter.util.Logger.e(r0, r5)
            r4.printStackTrace()
        L65:
            r4 = 0
        L66:
            if (r2 == 0) goto L6d
            int r5 = r2.b()
            goto L6e
        L6d:
            r5 = 0
        L6e:
            if (r4 != 0) goto L77
            r0 = 200(0xc8, float:2.8E-43)
            if (r5 != r0) goto L77
            java.lang.String r2 = "server say not success"
            goto L81
        L77:
            if (r2 == 0) goto L7e
            java.lang.String r2 = r2.d()
            goto L80
        L7e:
            java.lang.String r2 = "error unknown"
        L80:
            r3 = 0
        L81:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.g r0 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.g
            r0.<init>(r4, r5, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.b.a(java.lang.String, byte[], java.util.Map, java.lang.String):bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.g");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a
    public g a(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar : list) {
                        if (aVar instanceof i) {
                            arrayList2.add(aVar);
                        } else {
                            arrayList.add(aVar);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        return a(c.d(), a(b(arrayList)), a(), "application/json; charset=utf-8");
                    }
                    if (arrayList2.isEmpty()) {
                        return null;
                    }
                    return a(c.a(), c(arrayList2), b(), "application/octet-stream;tt-data=a");
                }
            } catch (Throwable th) {
                Logger.e("ReportNetApiImpl", "uploadEvent error", th);
                return new g(false, 509, "service_busy", false);
            }
        }
        return null;
    }

    private Map<String, String> a() {
        return Cgoto.m1007native(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
    }

    public byte[] a(String str) {
        try {
            return str == null ? new byte[0] : str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            return new byte[0];
        }
    }

    public static byte[] a(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            try {
                if (bArr.length == i) {
                    return p.a(bArr, i);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }
}
