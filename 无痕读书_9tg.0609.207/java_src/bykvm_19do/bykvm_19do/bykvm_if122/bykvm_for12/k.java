package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: GroMoreEventUploadImpl.java */
/* loaded from: classes8.dex */
public class k implements bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.c {

    /* renamed from: a  reason: collision with root package name */
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> f10960a;

    /* compiled from: GroMoreEventUploadImpl.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ List f10961a;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.b b;
        public final /* synthetic */ List c;

        public a(List list, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.b bVar, List list2) {
            this.f10961a = list;
            this.b = bVar;
            this.c = list2;
        }

        @Override // java.lang.Runnable
        public void run() {
            g a2 = k.this.a(this.f10961a);
            if (this.b == null || a2 == null) {
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b bVar = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b(a2.f10958a, a2.b, a2.c, a2.d, "");
            ArrayList arrayList = new ArrayList();
            arrayList.add(new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a(bVar, this.c));
            this.b.a(arrayList);
        }
    }

    private void b(JSONObject jSONObject, int i, long j, int i2, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                JSONObject optJSONObject = jSONObject.optJSONObject("params");
                if (optJSONObject != null) {
                    a(optJSONObject, i, j, i2, jSONObject2 != null ? jSONObject2.optJSONObject("params") : null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.c
    public void a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list, @Nullable bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.b bVar) {
        if (list != null && list.size() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = null;
            int i = 0;
            for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
                JSONObject d = aVar.d();
                byte e = aVar.e();
                byte b = aVar.b();
                if (e == 2 && b == 3) {
                    b(d, list.size(), currentTimeMillis, i, jSONObject);
                    arrayList.add(new i(aVar.i(), d));
                } else if (e == 2 && b == 0) {
                    a(d, list.size(), currentTimeMillis, i, jSONObject);
                    arrayList.add(new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a(aVar.i(), d));
                } else {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("not_v1v3", d);
                        jSONObject2.putOpt("batchId", Long.valueOf(currentTimeMillis));
                        jSONObject2.putOpt("batchIndex", Integer.valueOf(i));
                        c0.a(jSONObject2);
                    } catch (Throwable unused) {
                    }
                }
                i++;
                jSONObject = d;
            }
            if (arrayList.size() > 0) {
                ThreadHelper.getLogUploadExecutor().execute(new a(arrayList, bVar, list));
            }
        }
    }

    private void a(JSONObject jSONObject, int i, long j, int i2, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                String optString = jSONObject.optString("event_extra");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                JSONObject jSONObject3 = new JSONObject(optString);
                jSONObject3.putOpt("size", Integer.valueOf(i));
                jSONObject3.putOpt("batchId", Long.valueOf(j));
                jSONObject3.putOpt("batchIndex", Integer.valueOf(i2));
                jSONObject3.putOpt("preEventId", jSONObject2 != null ? jSONObject2.optString("event_id") : "-1");
                jSONObject.put("event_extra", jSONObject3.toString());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g a(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        try {
            if (this.f10960a == null) {
                this.f10960a = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.e();
            }
        } catch (Exception unused) {
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> aVar = this.f10960a;
        if (aVar == null) {
            return null;
        }
        return aVar.a(list);
    }
}
