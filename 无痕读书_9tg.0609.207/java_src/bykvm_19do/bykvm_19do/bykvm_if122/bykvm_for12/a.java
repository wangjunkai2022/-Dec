package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import com.apk.Cgoto;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdEvent.java */
/* loaded from: classes8.dex */
public class a implements j, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.b {
    public static final String c = UUID.randomUUID().toString();

    /* renamed from: a  reason: collision with root package name */
    public final String f10946a;
    public final JSONObject b;

    public a(String str, JSONObject jSONObject) {
        this.f10946a = str;
        this.b = jSONObject;
    }

    public static a a(Context context, d dVar, JSONObject jSONObject) {
        return new a(UUID.randomUUID().toString(), b(context, dVar, jSONObject));
    }

    public static a a(String str, String str2, int i) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (i != 0) {
            try {
                str2 = l.c(str2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        JSONObject jSONObject = new JSONObject(str2);
        if (!TextUtils.isEmpty(str) && str2 != null) {
            return (!jSONObject.has("params") || jSONObject.has("tag")) ? new a(str, jSONObject) : new i(str, jSONObject);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x023c A[Catch: Exception -> 0x031c, TRY_ENTER, TryCatch #0 {Exception -> 0x031c, blocks: (B:92:0x0163, B:95:0x016d, B:97:0x0175, B:100:0x017f, B:102:0x0187, B:104:0x018f, B:107:0x0199, B:110:0x01a3, B:113:0x01ad, B:116:0x01b7, B:119:0x01c1, B:122:0x01cb, B:125:0x01d5, B:128:0x01df, B:130:0x01e7, B:132:0x01ef, B:135:0x01f9, B:137:0x0201, B:140:0x020b, B:142:0x0213, B:144:0x021b, B:146:0x0223, B:155:0x024d, B:158:0x0257, B:160:0x025f, B:162:0x0267, B:164:0x0282, B:163:0x0280, B:166:0x0289, B:168:0x029e, B:170:0x02b3, B:174:0x02c0, B:175:0x02c9, B:178:0x02d3, B:179:0x02d8, B:181:0x02dc, B:183:0x02e4, B:184:0x02ee, B:186:0x02f4, B:189:0x0308, B:194:0x0317, B:169:0x02ab, B:149:0x022d, B:152:0x023c, B:154:0x0249, B:90:0x0158), top: B:229:0x0158 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0249 A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:92:0x0163, B:95:0x016d, B:97:0x0175, B:100:0x017f, B:102:0x0187, B:104:0x018f, B:107:0x0199, B:110:0x01a3, B:113:0x01ad, B:116:0x01b7, B:119:0x01c1, B:122:0x01cb, B:125:0x01d5, B:128:0x01df, B:130:0x01e7, B:132:0x01ef, B:135:0x01f9, B:137:0x0201, B:140:0x020b, B:142:0x0213, B:144:0x021b, B:146:0x0223, B:155:0x024d, B:158:0x0257, B:160:0x025f, B:162:0x0267, B:164:0x0282, B:163:0x0280, B:166:0x0289, B:168:0x029e, B:170:0x02b3, B:174:0x02c0, B:175:0x02c9, B:178:0x02d3, B:179:0x02d8, B:181:0x02dc, B:183:0x02e4, B:184:0x02ee, B:186:0x02f4, B:189:0x0308, B:194:0x0317, B:169:0x02ab, B:149:0x022d, B:152:0x023c, B:154:0x0249, B:90:0x0158), top: B:229:0x0158 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0267 A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:92:0x0163, B:95:0x016d, B:97:0x0175, B:100:0x017f, B:102:0x0187, B:104:0x018f, B:107:0x0199, B:110:0x01a3, B:113:0x01ad, B:116:0x01b7, B:119:0x01c1, B:122:0x01cb, B:125:0x01d5, B:128:0x01df, B:130:0x01e7, B:132:0x01ef, B:135:0x01f9, B:137:0x0201, B:140:0x020b, B:142:0x0213, B:144:0x021b, B:146:0x0223, B:155:0x024d, B:158:0x0257, B:160:0x025f, B:162:0x0267, B:164:0x0282, B:163:0x0280, B:166:0x0289, B:168:0x029e, B:170:0x02b3, B:174:0x02c0, B:175:0x02c9, B:178:0x02d3, B:179:0x02d8, B:181:0x02dc, B:183:0x02e4, B:184:0x02ee, B:186:0x02f4, B:189:0x0308, B:194:0x0317, B:169:0x02ab, B:149:0x022d, B:152:0x023c, B:154:0x0249, B:90:0x0158), top: B:229:0x0158 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0280 A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:92:0x0163, B:95:0x016d, B:97:0x0175, B:100:0x017f, B:102:0x0187, B:104:0x018f, B:107:0x0199, B:110:0x01a3, B:113:0x01ad, B:116:0x01b7, B:119:0x01c1, B:122:0x01cb, B:125:0x01d5, B:128:0x01df, B:130:0x01e7, B:132:0x01ef, B:135:0x01f9, B:137:0x0201, B:140:0x020b, B:142:0x0213, B:144:0x021b, B:146:0x0223, B:155:0x024d, B:158:0x0257, B:160:0x025f, B:162:0x0267, B:164:0x0282, B:163:0x0280, B:166:0x0289, B:168:0x029e, B:170:0x02b3, B:174:0x02c0, B:175:0x02c9, B:178:0x02d3, B:179:0x02d8, B:181:0x02dc, B:183:0x02e4, B:184:0x02ee, B:186:0x02f4, B:189:0x0308, B:194:0x0317, B:169:0x02ab, B:149:0x022d, B:152:0x023c, B:154:0x0249, B:90:0x0158), top: B:229:0x0158 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x029e A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:92:0x0163, B:95:0x016d, B:97:0x0175, B:100:0x017f, B:102:0x0187, B:104:0x018f, B:107:0x0199, B:110:0x01a3, B:113:0x01ad, B:116:0x01b7, B:119:0x01c1, B:122:0x01cb, B:125:0x01d5, B:128:0x01df, B:130:0x01e7, B:132:0x01ef, B:135:0x01f9, B:137:0x0201, B:140:0x020b, B:142:0x0213, B:144:0x021b, B:146:0x0223, B:155:0x024d, B:158:0x0257, B:160:0x025f, B:162:0x0267, B:164:0x0282, B:163:0x0280, B:166:0x0289, B:168:0x029e, B:170:0x02b3, B:174:0x02c0, B:175:0x02c9, B:178:0x02d3, B:179:0x02d8, B:181:0x02dc, B:183:0x02e4, B:184:0x02ee, B:186:0x02f4, B:189:0x0308, B:194:0x0317, B:169:0x02ab, B:149:0x022d, B:152:0x023c, B:154:0x0249, B:90:0x0158), top: B:229:0x0158 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02ab A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:92:0x0163, B:95:0x016d, B:97:0x0175, B:100:0x017f, B:102:0x0187, B:104:0x018f, B:107:0x0199, B:110:0x01a3, B:113:0x01ad, B:116:0x01b7, B:119:0x01c1, B:122:0x01cb, B:125:0x01d5, B:128:0x01df, B:130:0x01e7, B:132:0x01ef, B:135:0x01f9, B:137:0x0201, B:140:0x020b, B:142:0x0213, B:144:0x021b, B:146:0x0223, B:155:0x024d, B:158:0x0257, B:160:0x025f, B:162:0x0267, B:164:0x0282, B:163:0x0280, B:166:0x0289, B:168:0x029e, B:170:0x02b3, B:174:0x02c0, B:175:0x02c9, B:178:0x02d3, B:179:0x02d8, B:181:0x02dc, B:183:0x02e4, B:184:0x02ee, B:186:0x02f4, B:189:0x0308, B:194:0x0317, B:169:0x02ab, B:149:0x022d, B:152:0x023c, B:154:0x0249, B:90:0x0158), top: B:229:0x0158 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02f4 A[Catch: Exception -> 0x031c, TryCatch #0 {Exception -> 0x031c, blocks: (B:92:0x0163, B:95:0x016d, B:97:0x0175, B:100:0x017f, B:102:0x0187, B:104:0x018f, B:107:0x0199, B:110:0x01a3, B:113:0x01ad, B:116:0x01b7, B:119:0x01c1, B:122:0x01cb, B:125:0x01d5, B:128:0x01df, B:130:0x01e7, B:132:0x01ef, B:135:0x01f9, B:137:0x0201, B:140:0x020b, B:142:0x0213, B:144:0x021b, B:146:0x0223, B:155:0x024d, B:158:0x0257, B:160:0x025f, B:162:0x0267, B:164:0x0282, B:163:0x0280, B:166:0x0289, B:168:0x029e, B:170:0x02b3, B:174:0x02c0, B:175:0x02c9, B:178:0x02d3, B:179:0x02d8, B:181:0x02dc, B:183:0x02e4, B:184:0x02ee, B:186:0x02f4, B:189:0x0308, B:194:0x0317, B:169:0x02ab, B:149:0x022d, B:152:0x023c, B:154:0x0249, B:90:0x0158), top: B:229:0x0158 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0385 A[Catch: all -> 0x03e8, TRY_ENTER, TryCatch #2 {all -> 0x03e8, blocks: (B:219:0x0379, B:222:0x0385, B:225:0x03ae), top: B:233:0x0379 }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x03ae A[Catch: all -> 0x03e8, TRY_LEAVE, TryCatch #2 {all -> 0x03e8, blocks: (B:219:0x0379, B:222:0x0385, B:225:0x03ae), top: B:233:0x0379 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject a(android.content.Context r18, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r19, org.json.JSONObject r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 1020
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a.a(android.content.Context, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d, org.json.JSONObject, java.lang.String):org.json.JSONObject");
    }

    public static JSONObject b(Context context, d dVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject a2 = a(context, dVar, jSONObject, "v1");
            a2.putOpt("device_info", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.m.b(context));
            return a2;
        } catch (Exception e) {
            try {
                String optString = jSONObject2.optString("event_extra");
                if (!TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject3 = new JSONObject(optString);
                    jSONObject3.putOpt("v1_err_msg", e.toString());
                    jSONObject2.putOpt("event_extra", jSONObject3.toString());
                }
                if (dVar != null) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.putOpt("v1_eventId", dVar.v.get("event_id"));
                    jSONObject4.putOpt("v1_err_msg", e.toString());
                    c0.a(jSONObject4);
                }
            } catch (Throwable unused) {
            }
            return jSONObject2;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.j
    public String a() {
        return this.f10946a;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.b
    public JSONObject a(String str) {
        return this.b;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.b
    public long b() {
        for (char c2 = 'I'; c2 != 'H' && c2 != 'J'; c2 = 'H') {
        }
        JSONObject jSONObject = this.b;
        if (jSONObject != null) {
            JSONObject optJSONObject = jSONObject.has("params") ? this.b.optJSONObject("params") : this.b;
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("event_extra");
                if (TextUtils.isEmpty(optString)) {
                    return 0L;
                }
                try {
                    return new JSONObject(optString).optLong("eventIndex");
                } catch (JSONException unused) {
                    return 0L;
                }
            }
            return 0L;
        }
        return 0L;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.b
    public long c() {
        JSONObject jSONObject = this.b;
        if (jSONObject != null) {
            JSONObject optJSONObject = jSONObject.has("params") ? this.b.optJSONObject("params") : this.b;
            if (optJSONObject != null) {
                return optJSONObject.optLong("timestamp");
            }
        }
        return 0L;
    }

    public String d() {
        if (TextUtils.isEmpty(this.f10946a) || this.b == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("localId", this.f10946a);
            jSONObject.putOpt("event", this.b);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("AdEvent{localId='");
        Cgoto.m987abstract(m1016super, this.f10946a, '\'', ", event=");
        m1016super.append(this.b);
        m1016super.append('}');
        return m1016super.toString();
    }
}
