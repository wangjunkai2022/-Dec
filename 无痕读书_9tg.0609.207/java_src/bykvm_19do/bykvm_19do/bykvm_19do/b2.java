package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.UUID;
/* loaded from: classes8.dex */
public class b2 {
    public static long n;
    public static b o;

    /* renamed from: a  reason: collision with root package name */
    public final j2 f10614a;
    public final k2 b;
    public b0 c;
    public b0 d;
    public String e;
    public long f;
    public int g;
    public long h = -1;
    public volatile boolean i;
    public long j;
    public int k;
    public String l;
    public z m;

    /* loaded from: classes8.dex */
    public static class b extends d0 {
        public b() {
        }
    }

    public b2(k2 k2Var, j2 j2Var) {
        this.b = k2Var;
        this.f10614a = j2Var;
    }

    public static b d() {
        if (o == null) {
            o = new b();
        }
        o.f10650a = System.currentTimeMillis();
        return o;
    }

    public synchronized z a() {
        return this.m;
    }

    public boolean b() {
        return this.i;
    }

    public boolean c() {
        return b() && this.j == 0;
    }

    public static boolean b(u uVar) {
        if (uVar instanceof b0) {
            return ((b0) uVar).j();
        }
        return false;
    }

    public synchronized Bundle a(long j, long j2) {
        Bundle bundle;
        bundle = null;
        if (this.f10614a.x() && c() && j - this.f > j2) {
            bundle = new Bundle();
            bundle.putInt("session_no", this.k);
            int i = this.g + 1;
            this.g = i;
            bundle.putInt("send_times", i);
            bundle.putLong("current_duration", (j - this.f) / 1000);
            bundle.putString(com.umeng.analytics.pro.u.f12220a, u.a(this.h));
            this.f = j;
        }
        return bundle;
    }

    private synchronized void a(u uVar, ArrayList<u> arrayList, boolean z) {
        long j = uVar instanceof b ? -1L : uVar.f10650a;
        this.e = UUID.randomUUID().toString();
        n = this.f10614a.b();
        this.h = j;
        this.i = z;
        this.j = 0L;
        if (l0.f10634a) {
            l0.a("startSession, " + this.e + ", hadUi:" + z + " data:" + uVar, null);
        }
        if (z) {
            Calendar calendar = Calendar.getInstance();
            String str = "" + calendar.get(1) + calendar.get(2) + calendar.get(5);
            if (TextUtils.isEmpty(this.l)) {
                this.l = this.f10614a.u();
                this.k = this.f10614a.v();
            }
            if (!str.equals(this.l)) {
                this.l = str;
                this.k = 1;
            } else {
                this.k++;
            }
            this.f10614a.a(str, this.k);
            this.g = 0;
        }
        if (j != -1) {
            z zVar = new z();
            zVar.c = this.e;
            zVar.b = a(this.f10614a);
            zVar.f10650a = this.h;
            zVar.j = this.b.d();
            zVar.i = this.b.c();
            if (this.f10614a.N()) {
                zVar.e = bykvm_19do.bykvm_19do.bykvm_19do.a.c();
                zVar.f = bykvm_19do.bykvm_19do.bykvm_19do.a.d();
            }
            arrayList.add(zVar);
            this.m = zVar;
            if (l0.f10634a) {
                l0.a("gen launch, " + zVar.c + ", hadUi:" + z, null);
            }
        }
    }

    public boolean a(u uVar, ArrayList<u> arrayList) {
        boolean z = uVar instanceof b0;
        boolean b2 = b(uVar);
        boolean z2 = true;
        if (this.h == -1) {
            a(uVar, arrayList, b(uVar));
        } else if (!this.i && b2) {
            a(uVar, arrayList, true);
        } else {
            long j = this.j;
            if (j != 0 && uVar.f10650a > this.f10614a.P() + j) {
                a(uVar, arrayList, b2);
            } else if (this.h > uVar.f10650a + 7200000) {
                a(uVar, arrayList, b2);
            } else {
                z2 = false;
            }
        }
        if (z) {
            b0 b0Var = (b0) uVar;
            if (b0Var.j()) {
                this.f = uVar.f10650a;
                this.j = 0L;
                arrayList.add(uVar);
                if (TextUtils.isEmpty(b0Var.j)) {
                    b0 b0Var2 = this.d;
                    if (b0Var2 != null && (b0Var.f10650a - b0Var2.f10650a) - b0Var2.i < 500) {
                        b0Var.j = b0Var2.k;
                    } else {
                        b0 b0Var3 = this.c;
                        if (b0Var3 != null && (b0Var.f10650a - b0Var3.f10650a) - b0Var3.i < 500) {
                            b0Var.j = b0Var3.k;
                        }
                    }
                }
            } else {
                Bundle a2 = a(uVar.f10650a, 0L);
                if (a2 != null) {
                    bykvm_19do.bykvm_19do.bykvm_19do.a.a("play_session", a2);
                }
                this.f = 0L;
                this.j = b0Var.f10650a;
                arrayList.add(uVar);
                if (b0Var.k()) {
                    this.c = b0Var;
                } else {
                    this.d = b0Var;
                    this.c = null;
                }
            }
        } else if (!(uVar instanceof b)) {
            arrayList.add(uVar);
        }
        a(uVar);
        return z2;
    }

    public void a(u uVar) {
        if (uVar != null) {
            uVar.d = this.b.f();
            uVar.c = this.e;
            uVar.b = a(this.f10614a);
            if (this.f10614a.N()) {
                uVar.e = bykvm_19do.bykvm_19do.bykvm_19do.a.c();
                uVar.f = bykvm_19do.bykvm_19do.bykvm_19do.a.d();
            }
        }
    }

    public static long a(j2 j2Var) {
        long j = n + 1;
        n = j;
        if (j % 1000 == 0) {
            j2Var.a(j + 1000);
        }
        return n;
    }
}
