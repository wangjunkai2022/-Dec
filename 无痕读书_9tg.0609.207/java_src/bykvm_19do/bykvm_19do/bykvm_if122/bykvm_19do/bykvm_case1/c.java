package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1;

import android.text.TextUtils;
import androidx.core.app.NotificationManagerCompat;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.k;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: AdsenseRitConfig.java */
/* loaded from: classes8.dex */
public class c {
    public int A;
    public double B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i I;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g J;
    public int K;

    /* renamed from: a  reason: collision with root package name */
    public String f10871a;
    public int b;
    public int c;
    public long d;
    public long e;
    public long f;
    public long g;
    public String h;
    public List<i> i = new CopyOnWriteArrayList();
    public Map<Integer, List<i>> j = new HashMap();
    public List<Integer> k = new ArrayList();
    public double l;
    public int m;
    public int n;
    public long o;
    public int p;
    public String q;
    public String r;
    public int s;
    public int t;
    public int u;
    public String v;
    public int w;
    public long x;
    public boolean y;
    public boolean z;

    /* JADX WARN: Can't wrap try/catch for region: R(19:27|28|(1:30)(1:82)|31|(5:33|(3:35|36|37)|38|(1:40)(1:42)|41)|43|44|45|46|47|48|49|(6:62|63|(2:74|75)(3:65|66|(2:68|(1:73)))|54|56|57)(1:51)|52|53|54|56|57|25) */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x03a9, code lost:
        r0 = e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c b(org.json.JSONObject r28) {
        /*
            Method dump skipped, instructions count: 1017
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c.b(org.json.JSONObject):bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c");
    }

    public static Map<String, String> c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        try {
            Iterator<String> keys = jSONObject.keys();
            if (keys == null) {
                return null;
            }
            while (keys.hasNext()) {
                String next = keys.next();
                String optString = jSONObject.optString(next);
                if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(optString)) {
                    hashMap.put(next, optString);
                }
            }
            if (hashMap.size() == 0) {
                return null;
            }
            return hashMap;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Long n(int i) {
        if (i != 1) {
            if (i != 2 && i != 3) {
                if (i != 5) {
                    if (i != 7 && i != 8) {
                        return 0L;
                    }
                }
            }
            return 0L;
        }
        return 1000L;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x002f A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0020 -> B:19:0x0024). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0024 -> B:31:0x003d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x002f -> B:31:0x003d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Long o(int r5) {
        /*
        L0:
            r0 = 1
            r1 = 10000(0x2710, double:4.9407E-320)
            if (r5 == r0) goto L42
            r0 = 2
            if (r5 == r0) goto L42
            r0 = 3
            r3 = 95
            if (r5 == r0) goto L20
            r0 = 5
            if (r5 == r0) goto L42
            r0 = 7
            if (r5 == r0) goto L18
            r0 = 8
            if (r5 == r0) goto L18
            goto L3d
        L18:
            r0 = 600000(0x927c0, double:2.964394E-318)
        L1b:
            java.lang.Long r5 = java.lang.Long.valueOf(r0)
            return r5
        L20:
            r0 = 95
            r4 = 95
        L24:
            switch(r0) {
                case 94: goto L33;
                case 95: goto L28;
                case 96: goto L2f;
                default: goto L27;
            }
        L27:
            goto L3d
        L28:
            switch(r4) {
                case 94: goto L20;
                case 95: goto L2c;
                case 96: goto L20;
                default: goto L2b;
            }
        L2b:
            goto L2f
        L2c:
            r0 = 5000(0x1388, double:2.4703E-320)
            goto L1b
        L2f:
            switch(r4) {
                case 55: goto L0;
                case 56: goto L3d;
                case 57: goto L0;
                default: goto L32;
            }
        L32:
            goto L38
        L33:
            r0 = 39
            if (r4 != r0) goto L38
            goto L20
        L38:
            java.lang.Long r5 = java.lang.Long.valueOf(r1)
            return r5
        L3d:
            r0 = 94
            r4 = 125(0x7d, float:1.75E-43)
            goto L24
        L42:
            java.lang.Long r5 = java.lang.Long.valueOf(r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c.o(int):java.lang.Long");
    }

    public List<i> A() {
        return this.i;
    }

    public String B() {
        return this.r;
    }

    public String C() {
        return this.v;
    }

    public long D() {
        long j = this.o;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return j;
    }

    public boolean E() {
        boolean z = this.z;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return z;
    }

    public boolean F() {
        boolean z = this.y;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return z;
    }

    public boolean G() {
        return this.H == 1;
    }

    public boolean H() {
        return this.K == 1;
    }

    public boolean I() {
        return this.E == 3;
    }

    public c a() {
        while (true) {
            char c = '\n';
            while (true) {
                switch (c) {
                    case '\n':
                        c = 11;
                    case 11:
                        List<String> b = k.b();
                        c cVar = new c();
                        cVar.f10871a = this.f10871a;
                        k.b(b, "mRitId");
                        cVar.b = this.b;
                        k.b(b, "mRitType");
                        cVar.c = this.c;
                        k.b(b, "mLookType");
                        cVar.d = this.d;
                        k.b(b, "mMinWaitTime");
                        cVar.e = this.e;
                        k.b(b, "mLayerTimeOut");
                        cVar.f = this.f;
                        k.b(b, "mTotalTimeOut");
                        cVar.g = this.g;
                        k.b(b, "mCacheTimeOut");
                        cVar.h = this.h;
                        k.b(b, "mVersion");
                        cVar.o = this.o;
                        k.b(b, "mWaterFallId");
                        cVar.u = this.u;
                        k.b(b, "reqType");
                        cVar.r = this.r;
                        k.b(b, "mWaterfallAbTestParam");
                        cVar.p = this.p;
                        k.b(b, "segmentId");
                        cVar.q = this.q;
                        k.b(b, "segmentVersion");
                        cVar.s = this.s;
                        k.b(b, "preLoadSortControl");
                        cVar.t = this.t;
                        k.b(b, "preShowSortControl");
                        cVar.v = this.v;
                        k.b(b, "waterfallExtra");
                        cVar.w = this.w;
                        k.b(b, "mMultilevelAfterP");
                        cVar.x = this.x;
                        k.b(b, "mMultilevelTimeOut");
                        cVar.A = this.A;
                        k.b(b, "mRefreshTime");
                        cVar.B = this.B;
                        k.b(b, "mBidFloor");
                        cVar.E = this.E;
                        k.b(b, "mParallelType");
                        cVar.F = this.F;
                        k.b(b, "mReqParallelNum");
                        cVar.G = this.G;
                        k.b(b, "mAdCount");
                        cVar.C = this.C;
                        k.b(b, "serverSideVerifyPreRequestTime");
                        cVar.D = this.D;
                        k.b(b, "serverSideRewardType");
                        cVar.K = this.K;
                        k.b(b, "mAdPrime");
                        cVar.J = this.J;
                        k.b(b, "mIntervalFreqctlBean");
                        cVar.I = this.I;
                        k.b(b, "mIntervalPacingBean");
                        cVar.H = this.H;
                        k.b(b, "mWaterFallTimingMode");
                        k.a(b, "AdsenseRitConfig");
                        return cVar;
                    case '\f':
                        while (true) {
                        }
                }
            }
        }
    }

    public i a(String str) {
        List<i> list;
        if (!TextUtils.isEmpty(str) && (list = this.i) != null && list.size() != 0) {
            for (i iVar : this.i) {
                if (str.equals(iVar.d())) {
                    return iVar;
                }
            }
        }
        return null;
    }

    public void a(double d) {
        this.B = d;
    }

    public void a(int i) {
        this.G = i;
    }

    public void a(long j) {
        this.g = j;
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g gVar) {
        this.J = gVar;
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i iVar) {
        this.I = iVar;
    }

    public void a(List<i> list) {
        ArrayList arrayList;
        int y;
        this.i = list;
        if (list == null) {
            return;
        }
        this.m = 0;
        this.j.clear();
        this.k.clear();
        this.n = this.i.size();
        int i = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            i iVar = list.get(i2);
            if (iVar != null) {
                if (iVar.f() == 100 || iVar.f() == 0) {
                    this.m++;
                    arrayList = new ArrayList();
                    y = iVar.y();
                } else if (iVar.p() != i) {
                    this.m++;
                    arrayList = new ArrayList();
                    y = iVar.p();
                } else {
                    y = i;
                    arrayList = this.j.get(Integer.valueOf(i));
                }
                if (arrayList != null) {
                    arrayList.add(iVar);
                    this.j.put(Integer.valueOf(y), arrayList);
                }
                i = y;
            }
        }
        this.k.addAll(this.j.keySet());
    }

    public void a(JSONObject jSONObject) {
    }

    public void a(boolean z) {
        this.z = z;
    }

    public int b() {
        int i = this.G;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return i;
    }

    public void b(double d) {
        this.l = d;
    }

    public void b(int i) {
        this.K = i;
    }

    public void b(long j) {
        this.e = j;
    }

    public void b(String str) {
        this.f10871a = str;
    }

    public void b(List<i> list) {
        int i;
        List<i> list2;
        this.i = list;
        if (list == null) {
            return;
        }
        this.m = 0;
        this.j.clear();
        this.k.clear();
        this.n = this.i.size();
        int i2 = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        for (int i3 = 0; i3 < this.i.size(); i3++) {
            i iVar = list.get(i3);
            if (iVar != null) {
                if (iVar.p() != i2) {
                    this.m++;
                    list2 = new ArrayList<>();
                    i = iVar.p();
                } else {
                    i = i2;
                    list2 = this.j.get(Integer.valueOf(i2));
                }
                if (list2 != null) {
                    list2.add(iVar);
                    this.j.put(Integer.valueOf(i), list2);
                }
                i2 = i;
            }
        }
        this.k.addAll(this.j.keySet());
    }

    public void b(boolean z) {
        this.y = z;
    }

    public double c() {
        double d = this.B;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return d;
    }

    public void c(int i) {
        this.c = i;
    }

    public void c(long j) {
        this.d = j;
    }

    public void c(String str) {
        this.q = str;
    }

    public long d() {
        long j = this.g;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return j;
    }

    public void d(int i) {
        this.w = i;
    }

    public void d(long j) {
        this.x = j;
    }

    public void d(String str) {
        this.h = str;
    }

    public double e() {
        double d = this.l;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return d;
    }

    public void e(int i) {
        this.E = i;
    }

    public void e(long j) {
        this.f = j;
    }

    public void e(String str) {
        this.r = str;
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g f() {
        return this.J;
    }

    public void f(int i) {
        this.A = i;
    }

    public void f(long j) {
        this.o = j;
    }

    public void f(String str) {
        this.v = str;
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i g() {
        return this.I;
    }

    public void g(int i) {
        this.F = i;
    }

    public long h() {
        long j = this.e;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return j;
    }

    public void h(int i) {
        this.u = i;
    }

    public List<Integer> i() {
        return this.k;
    }

    public void i(int i) {
        this.b = i;
    }

    public long j() {
        long j = this.d;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return j;
    }

    public void j(int i) {
        this.p = i;
    }

    public int k() {
        int i = this.w;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return i;
    }

    public void k(int i) {
        this.D = i;
    }

    public long l() {
        long j = this.x;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return j;
    }

    public void l(int i) {
        this.C = i;
    }

    public int m() {
        int i = this.E;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return i;
    }

    public void m(int i) {
        this.H = i;
    }

    public int n() {
        int i = this.A;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return i;
    }

    public int o() {
        int i = this.F;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return i;
    }

    public int p() {
        int i = this.u;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return i;
    }

    public String q() {
        return this.f10871a;
    }

    public int r() {
        int i = this.b;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return i;
    }

    public int s() {
        int i = this.p;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return i;
    }

    public String t() {
        return this.q;
    }

    public String toString() {
        char c;
        while (true) {
            while (c != 18) {
                c = c != 20 ? (char) 18 : (char) 19;
            }
            StringBuilder m1016super = Cgoto.m1016super("AdsenseRitConfig{mRitId='");
            Cgoto.m987abstract(m1016super, this.f10871a, '\'', ", mRitType=");
            m1016super.append(this.b);
            m1016super.append(", mLookType=");
            m1016super.append(this.c);
            m1016super.append(", mMinWaitTime=");
            m1016super.append(this.d);
            m1016super.append(", mLayerTimeOut=");
            m1016super.append(this.e);
            m1016super.append(", mTotalTimeOut=");
            m1016super.append(this.f);
            m1016super.append(", mWaterFallConfigList=");
            m1016super.append(this.i);
            m1016super.append(", mWaterFallConfMap=");
            m1016super.append(this.j);
            m1016super.append(", mLoadSortLevelList=");
            m1016super.append(this.k);
            m1016super.append(", mCurrentCommonAdMaxCpm=");
            m1016super.append(this.l);
            m1016super.append(", mTotalLoadLevelCount=");
            m1016super.append(this.m);
            m1016super.append(", mTotalWaterFallCount=");
            m1016super.append(this.n);
            m1016super.append(", mWaterfallAbTestParam=");
            m1016super.append(this.r);
            m1016super.append(", mServerSideVerifyPreRequestTime=");
            m1016super.append(this.C);
            m1016super.append(", mServerSideVerifyRewardType=");
            m1016super.append(this.D);
            m1016super.append('}');
            return m1016super.toString();
        }
    }

    public int u() {
        int i = this.D;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return i;
    }

    public int v() {
        int i = this.C;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return i;
    }

    public long w() {
        long j = this.f;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return j;
    }

    public int x() {
        int i = this.n;
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    break;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 > 4) {
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return i;
    }

    public String y() {
        return this.h;
    }

    public Map<Integer, List<i>> z() {
        HashMap hashMap = new HashMap();
        Map<Integer, List<i>> map = this.j;
        if (map != null) {
            for (Map.Entry<Integer, List<i>> entry : map.entrySet()) {
                hashMap.put(Integer.valueOf(entry.getKey().intValue()), new ArrayList(entry.getValue()));
            }
        }
        return hashMap;
    }
}
