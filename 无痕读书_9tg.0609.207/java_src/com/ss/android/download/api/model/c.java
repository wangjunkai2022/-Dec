package com.ss.android.download.api.model;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadlib.addownload.j;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public String f11559a;
    public final String b;
    public final String c;
    public final boolean d;
    public final long e;
    public final String f;
    public final long g;
    public final JSONObject h;
    public final JSONObject i;
    public final List<String> j;
    public final int k;
    public final Object l;
    public final String m;
    public final boolean n;
    public final String o;
    public final JSONObject p;

    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f11560a;
        public String b;
        public String c;
        public long e;
        public String f;
        public long g;
        public JSONObject h;
        public JSONObject i;
        public Map<String, Object> j;
        public List<String> k;
        public int l;
        public Object m;
        public String n;
        public String p;
        public JSONObject q;
        public boolean d = false;
        public boolean o = false;

        public a a(boolean z) {
            this.o = z;
            return this;
        }

        public a b(String str) {
            this.c = str;
            return this;
        }

        public a c(String str) {
            this.f = str;
            return this;
        }

        public a d(String str) {
            this.n = str;
            return this;
        }

        public a a(String str) {
            this.b = str;
            return this;
        }

        public a b(long j) {
            this.g = j;
            return this;
        }

        public a a(long j) {
            this.e = j;
            return this;
        }

        public a b(boolean z) {
            this.d = z;
            return this;
        }

        public a a(JSONObject jSONObject) {
            this.h = jSONObject;
            return this;
        }

        public a b(JSONObject jSONObject) {
            this.i = jSONObject;
            return this;
        }

        public a a(List<String> list) {
            this.k = list;
            return this;
        }

        public a a(int i) {
            this.l = i;
            return this;
        }

        public a a(Object obj) {
            this.m = obj;
            return this;
        }

        public c a() {
            if (TextUtils.isEmpty(this.f11560a)) {
                this.f11560a = BaseConstants.CATEGORY_UMENG;
            }
            JSONObject jSONObject = new JSONObject();
            if (this.h == null) {
                this.h = new JSONObject();
            }
            try {
                if (this.j != null && !this.j.isEmpty()) {
                    for (Map.Entry<String, Object> entry : this.j.entrySet()) {
                        if (!this.h.has(entry.getKey())) {
                            this.h.putOpt(entry.getKey(), entry.getValue());
                        }
                    }
                }
                if (this.o) {
                    this.p = this.c;
                    JSONObject jSONObject2 = new JSONObject();
                    this.q = jSONObject2;
                    if (this.d) {
                        jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.h.toString());
                    } else {
                        Iterator<String> keys = this.h.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            this.q.put(next, this.h.get(next));
                        }
                    }
                    this.q.put("category", this.f11560a);
                    this.q.put("tag", this.b);
                    this.q.put(LitePalParser.ATTR_VALUE, this.e);
                    this.q.put("ext_value", this.g);
                    if (!TextUtils.isEmpty(this.n)) {
                        this.q.put("refer", this.n);
                    }
                    if (this.i != null) {
                        this.q = com.ss.android.download.api.c.b.a(this.i, this.q);
                    }
                    if (this.d) {
                        if (!this.q.has(BaseConstants.EVENT_LABEL_LOG_EXTRA) && !TextUtils.isEmpty(this.f)) {
                            this.q.put(BaseConstants.EVENT_LABEL_LOG_EXTRA, this.f);
                        }
                        this.q.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                    }
                }
                if (this.d) {
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.h.toString());
                    if (!jSONObject.has(BaseConstants.EVENT_LABEL_LOG_EXTRA) && !TextUtils.isEmpty(this.f)) {
                        jSONObject.put(BaseConstants.EVENT_LABEL_LOG_EXTRA, this.f);
                    }
                    jSONObject.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                } else {
                    jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, this.h);
                }
                if (!TextUtils.isEmpty(this.n)) {
                    jSONObject.putOpt("refer", this.n);
                }
                if (this.i != null) {
                    jSONObject = com.ss.android.download.api.c.b.a(this.i, jSONObject);
                }
                this.h = jSONObject;
            } catch (Exception e) {
                j.s().a(e, "DownloadEventModel build");
            }
            return new c(this);
        }
    }

    public c(a aVar) {
        this.f11559a = aVar.f11560a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.k;
        this.k = aVar.l;
        this.l = aVar.m;
        this.n = aVar.o;
        this.o = aVar.p;
        this.p = aVar.q;
        this.m = aVar.n;
    }

    public String a() {
        return this.f11559a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public long e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public long g() {
        return this.g;
    }

    public JSONObject h() {
        return this.h;
    }

    public JSONObject i() {
        return this.i;
    }

    public List<String> j() {
        return this.j;
    }

    public int k() {
        return this.k;
    }

    public Object l() {
        return this.l;
    }

    public boolean m() {
        return this.n;
    }

    public String n() {
        return this.o;
    }

    public JSONObject o() {
        return this.p;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("category: ");
        m1016super.append(this.f11559a);
        m1016super.append("\ttag: ");
        m1016super.append(this.b);
        m1016super.append("\tlabel: ");
        m1016super.append(this.c);
        m1016super.append("\nisAd: ");
        m1016super.append(this.d);
        m1016super.append("\tadId: ");
        m1016super.append(this.e);
        m1016super.append("\tlogExtra: ");
        m1016super.append(this.f);
        m1016super.append("\textValue: ");
        m1016super.append(this.g);
        m1016super.append("\nextJson: ");
        m1016super.append(this.h);
        m1016super.append("\nparamsJson: ");
        m1016super.append(this.i);
        m1016super.append("\nclickTrackUrl: ");
        List<String> list = this.j;
        m1016super.append(list != null ? list.toString() : "");
        m1016super.append("\teventSource: ");
        m1016super.append(this.k);
        m1016super.append("\textraObject: ");
        Object obj = this.l;
        m1016super.append(obj != null ? obj.toString() : "");
        m1016super.append("\nisV3: ");
        m1016super.append(this.n);
        m1016super.append("\tV3EventName: ");
        m1016super.append(this.o);
        m1016super.append("\tV3EventParams: ");
        JSONObject jSONObject = this.p;
        m1016super.append(jSONObject != null ? jSONObject.toString() : "");
        return m1016super.toString();
    }
}
