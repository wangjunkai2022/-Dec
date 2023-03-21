package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.ss.android.download.api.constant.BaseConstants;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventDebugUtils.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final LinkedList<String> f11026a;
    public static final LinkedList<String> b;
    public static final LinkedList<String> c;

    static {
        new LinkedList();
        f11026a = new LinkedList<>();
        b = new LinkedList<>();
        c = new LinkedList<>();
    }

    public static synchronized String a() {
        String sb;
        synchronized (a.class) {
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = c.iterator();
            while (it.hasNext()) {
                sb2.append(it.next());
                sb2.append(",");
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public static synchronized String b(String str) {
        String sb;
        synchronized (a.class) {
            if (f11026a.size() >= 10) {
                f11026a.removeFirst();
                f11026a.add(str);
            } else {
                f11026a.add(str);
            }
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = f11026a.iterator();
            while (it.hasNext()) {
                sb2.append(it.next());
                sb2.append(",");
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public static synchronized String c(String str) {
        String sb;
        synchronized (a.class) {
            if (b.size() >= 10) {
                b.removeFirst();
                b.add(str);
            } else {
                b.add(str);
            }
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = b.iterator();
            while (it.hasNext()) {
                sb2.append(it.next());
                sb2.append(",");
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public static String d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(BaseConstants.EVENT_LABEL_LOG_EXTRA);
        if (!TextUtils.isEmpty(optString)) {
            try {
                return new JSONObject(optString).optString("req_id");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static synchronized void a(String str) {
        synchronized (a.class) {
            if (c.size() > 10) {
                c.removeFirst();
                c.add(str);
            } else {
                c.add(str);
            }
        }
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        try {
            if (aVar.b() == 0 && j.l().b() != null && j.l().b().h()) {
                JSONObject d = aVar.d();
                String b2 = b(d);
                d(d);
                a(d, "net");
                String optString = d.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                if (!TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject = new JSONObject(optString);
                    if (TextUtils.isEmpty(jSONObject.optString("upload_labels"))) {
                        jSONObject.put("upload_labels", c(b2 + "_" + a(d)));
                        jSONObject.put("logid_move", a());
                    }
                    d.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                    return;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("upload_labels", c(b2 + "_" + a(d)));
                jSONObject2.put("logid_move", a());
                d.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
    }

    public static String b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optString("label");
    }

    public static long c(JSONObject jSONObject) {
        try {
            return new JSONObject(jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA)).optLong("new_create_time");
        } catch (Exception e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public static void b(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        try {
            if (j.l().b().g()) {
                d.h.a(System.currentTimeMillis() - aVar.a());
                aVar.b(System.currentTimeMillis());
                if (aVar.b() == 0 && j.l().b() != null && j.l().b().h()) {
                    String b2 = b(aVar.d());
                    a(aVar.d(), "save");
                    JSONObject d = aVar.d();
                    String optString = aVar.d().optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                    if (!TextUtils.isEmpty(optString)) {
                        JSONObject jSONObject = new JSONObject(optString);
                        if (TextUtils.isEmpty(jSONObject.optString("save_labels"))) {
                            jSONObject.put("save_labels", b(b2 + "_" + a(d)));
                        }
                        d.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("save_labels", b(b2 + "_" + a(d)));
                    d.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar, String str) {
        JSONObject d = aVar.d();
        String b2 = b(d);
        String d2 = d(d);
        if (aVar.b() == 0 && j.l().b() != null && j.l().b().h()) {
            a(b2 + "_" + d2 + "_" + a(d) + "_" + str);
        }
    }

    public static void a(JSONObject jSONObject, String str) {
        try {
            if (j.l().b().c()) {
                String str2 = "log_show_" + str;
                c.a(str2, "label:" + jSONObject.optString("label") + " index:" + a(jSONObject) + "_" + c(jSONObject));
            }
        } catch (Exception unused) {
        }
    }

    public static long a(JSONObject jSONObject) {
        try {
            return new JSONObject(jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA)).optLong("global_event_index");
        } catch (Exception e) {
            e.printStackTrace();
            return -1L;
        }
    }
}
