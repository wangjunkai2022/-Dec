package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.k;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.bytedance.msdk.adapter.util.Logger;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: WaterFallConfig.java */
/* loaded from: classes8.dex */
public class i implements Comparable<i> {

    /* renamed from: a  reason: collision with root package name */
    public String f10877a;
    public String b;
    public String c;
    public String d = "1";
    public String e = SpeechSynthesizer.REQUEST_DNS_OFF;
    public int f;
    public int g;
    public int h;
    public int i;
    public String j;
    public String k;
    public String l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public g r;
    public Map<String, String> s;
    public int t;
    public String u;
    public int v;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i w;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g x;

    public String A() {
        return this.k;
    }

    public boolean B() {
        return this.f == 1;
    }

    public boolean C() {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().g(this.f10877a);
    }

    public boolean D() {
        return this.v == 1;
    }

    public boolean E() {
        return this.f == 3;
    }

    public boolean F() {
        return this.f == 100;
    }

    public boolean G() {
        return this.f == 2;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(i iVar) {
        if (iVar != null && this.g <= iVar.p()) {
            return this.g < iVar.p() ? -1 : 0;
        }
        return 1;
    }

    public void a(int i) {
        this.m = i;
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g gVar) {
        this.x = gVar;
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i iVar) {
        this.w = iVar;
    }

    public void a(g gVar) {
        this.r = gVar;
    }

    public void a(String str) {
        this.c = str;
    }

    public void a(Map<String, String> map) {
        this.s = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0023 A[PHI: r0 r2 
      PHI: (r0v6 int) = (r0v3 int), (r0v0 int) binds: [B:7:0x000f, B:4:0x0004] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r2v2 char) = (r2v1 char), (r2v3 char) binds: [B:7:0x000f, B:4:0x0004] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x000b -> B:7:0x000f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x000f -> B:19:0x0023). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a() {
        /*
            r3 = this;
            int r0 = r3.f
            if (r0 == 0) goto L9
            r1 = 92
            r2 = 92
            goto L23
        L9:
            r0 = 20
        Lb:
            r1 = 15
            r2 = 95
        Lf:
            switch(r1) {
                case 13: goto L20;
                case 14: goto L19;
                case 15: goto L13;
                default: goto L12;
            }
        L12:
            goto L23
        L13:
            switch(r2) {
                case 94: goto Lb;
                case 95: goto L17;
                case 96: goto Lb;
                default: goto L16;
            }
        L16:
            goto Lb
        L17:
            r0 = 1
            return r0
        L19:
            r1 = 100
            if (r0 != r1) goto L1e
            goto Lb
        L1e:
            r0 = 0
            return r0
        L20:
            r1 = 72
            goto Lb
        L23:
            r1 = 14
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i.a():boolean");
    }

    public i b() {
        List<String> c = k.c();
        i iVar = new i();
        iVar.f10877a = this.f10877a;
        k.b(c, "mAdnetworkName");
        iVar.c = this.c;
        k.b(c, "mAdnetwokrSlotId");
        iVar.d = this.d;
        k.b(c, "mExchangeRate");
        iVar.e = this.e;
        k.b(c, "mEcpm");
        iVar.f = this.f;
        k.b(c, "mAdnetworkSlotType");
        iVar.g = this.g;
        k.b(c, "mLoadSort");
        iVar.h = this.h;
        k.b(c, "mShowSort");
        iVar.i = this.i;
        k.b(c, "mRitType");
        iVar.o = this.o;
        k.b(c, "originType");
        iVar.t = this.t;
        k.b(c, "mSubAdType");
        iVar.j = this.j;
        k.b(c, "mLoaderAdapterName");
        iVar.k = this.k;
        k.b(c, "mWaterfallAbTestParam");
        iVar.l = this.l;
        k.b(c, "mServerBiddingExtra");
        iVar.m = this.m;
        k.b(c, "adExpiredTime");
        iVar.n = this.n;
        k.b(c, "ifReuseAds");
        iVar.p = this.p;
        k.b(c, "ifPreRequest");
        iVar.q = this.q;
        k.b(c, "ifIsReady");
        iVar.b = this.b;
        k.b(c, "mCustomAdnetworkName");
        ConcurrentHashMap concurrentHashMap = null;
        Map<String, String> map = this.s;
        if (map != null && map.size() > 0) {
            concurrentHashMap = new ConcurrentHashMap();
            concurrentHashMap.putAll(this.s);
        }
        iVar.s = concurrentHashMap;
        k.b(c, "mMultilevelSlotCpm");
        iVar.u = this.u;
        k.b(c, "mCustomAdapterJson");
        iVar.v = this.v;
        k.b(c, "mAdnRitTimingMode");
        iVar.x = this.x;
        k.b(c, "mIntervalFreqctlBean");
        iVar.w = this.w;
        k.b(c, "mIntervalPacingBean");
        k.a(c, "WaterFallConfig");
        return iVar;
    }

    public void b(int i) {
        this.v = i;
    }

    public void b(String str) {
        this.f10877a = str;
    }

    public int c() {
        int i = this.m;
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

    public void c(int i) {
        this.f = i;
    }

    public void c(String str) {
        this.u = str;
    }

    public String d() {
        return this.c;
    }

    public void d(int i) {
        this.q = i;
    }

    public void d(String str) {
        this.b = str;
    }

    public String e() {
        return this.f10877a;
    }

    public void e(int i) {
        this.p = i;
    }

    public void e(String str) {
        if (TextUtils.isEmpty(str)) {
            str = SpeechSynthesizer.REQUEST_DNS_OFF;
        }
        this.e = str;
    }

    public int f() {
        int i = this.f;
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

    public void f(int i) {
        this.n = i;
    }

    public void f(String str) {
        this.d = str;
    }

    public String g() {
        return this.u;
    }

    public void g(int i) {
        this.g = i;
    }

    public void g(String str) {
        this.j = str;
    }

    public String h() {
        return this.b;
    }

    public void h(int i) {
        this.o = i;
    }

    public void h(String str) {
        this.l = str;
    }

    public double i() {
        try {
            return Double.valueOf(this.e).doubleValue() * Double.valueOf(this.d).doubleValue();
        } catch (Exception e) {
            StringBuilder m1016super = Cgoto.m1016super("getEcpm error ");
            m1016super.append(e.toString());
            Logger.e("WaterFallConfig", m1016super.toString());
            return 0.0d;
        }
    }

    public void i(int i) {
        this.i = i;
    }

    public void i(String str) {
        this.k = str;
    }

    public String j() {
        return this.d;
    }

    public void j(int i) {
        this.h = i;
    }

    public int k() {
        int i = this.q;
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
        this.t = i;
    }

    public int l() {
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

    public int m() {
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

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g n() {
        return this.x;
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i o() {
        return this.w;
    }

    public int p() {
        int i = this.g;
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

    public String q() {
        return this.j;
    }

    public Map<String, String> r() {
        return this.s;
    }

    public int s() {
        int i = this.o;
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

    public int t() {
        int i = this.i;
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

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("WaterFallConfig{mAdnetworkName='");
        Cgoto.m987abstract(m1016super, this.f10877a, '\'', ", mCustomAdnetworkName='");
        Cgoto.m987abstract(m1016super, this.b, '\'', ", mAdnetwokrSlotId='");
        Cgoto.m987abstract(m1016super, this.c, '\'', ", mExchangeRate=");
        m1016super.append(this.d);
        m1016super.append(", mSlotEcpm=");
        m1016super.append(this.e);
        m1016super.append(", mAdnetworkSlotType=");
        m1016super.append(this.f);
        m1016super.append(", mLoadSort=");
        m1016super.append(this.g);
        m1016super.append(", mShowSort=");
        m1016super.append(this.h);
        m1016super.append('}');
        return m1016super.toString();
    }

    public String u() {
        return this.l;
    }

    public double v() {
        g gVar = this.r;
        if (gVar != null && !TextUtils.isEmpty(gVar.f())) {
            try {
                return Double.valueOf(this.r.f()).doubleValue();
            } catch (Exception e) {
                StringBuilder m1016super = Cgoto.m1016super("getServerBiddingLoadEcpm error ");
                m1016super.append(e.toString());
                Logger.e("WaterFallConfig", m1016super.toString());
            }
        }
        return -1.0d;
    }

    public double w() {
        g gVar = this.r;
        if (gVar != null && !TextUtils.isEmpty(gVar.g())) {
            try {
                return Double.valueOf(this.r.g()).doubleValue();
            } catch (Exception e) {
                StringBuilder m1016super = Cgoto.m1016super("getServerBiddingShowEcpm error ");
                m1016super.append(e.toString());
                Logger.e("WaterFallConfig", m1016super.toString());
            }
        }
        return -1.0d;
    }

    public g x() {
        return this.r;
    }

    public int y() {
        int i = this.h;
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

    public int z() {
        int i = this.t;
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
}
