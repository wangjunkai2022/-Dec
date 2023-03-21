package bykvm_19do.bykvm_19do.bykvm_19do;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.apk.Cgoto;
import com.apk.ls;
import com.apk.ms;
import com.bytedance.mapplog.collector.Collector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes8.dex */
public class v1 implements Handler.Callback, Comparator<u> {
    public static v1 l;

    /* renamed from: a  reason: collision with root package name */
    public k1 f10654a;
    public boolean b;
    public Application c;
    public j2 d;
    public final ArrayList<u> e = new ArrayList<>(32);
    public v f;
    public k2 g;
    public Handler h;
    public b2 i;
    public ls j;
    public Handler k;

    public static void h() {
        v1 v1Var = l;
        if (v1Var != null) {
            v1Var.b(null);
        }
    }

    public static v1 i() {
        if (l == null) {
            synchronized (v1.class) {
                if (l == null) {
                    l = new v1();
                }
            }
        }
        return l;
    }

    public static String j() {
        b2 b2Var;
        v1 v1Var = l;
        if (v1Var == null || (b2Var = v1Var.i) == null) {
            return null;
        }
        return b2Var.e;
    }

    private void k() {
        if (this.d.N()) {
            if (this.f10654a == null) {
                k1 k1Var = new k1(this);
                this.f10654a = k1Var;
                this.h.obtainMessage(6, k1Var).sendToTarget();
                return;
            }
            return;
        }
        k1 k1Var2 = this.f10654a;
        if (k1Var2 != null) {
            k1Var2.f();
            this.f10654a = null;
        }
    }

    private void l() {
        if (l0.f10634a) {
            StringBuilder m1016super = Cgoto.m1016super("packAndSend once, ");
            m1016super.append(this.i.e);
            m1016super.append(", hadUI:");
            m1016super.append(this.i.b());
            l0.a(m1016super.toString(), null);
        }
        Handler handler = this.h;
        if (handler != null) {
            handler.sendMessage(this.k.obtainMessage(6, new w1(this)));
            this.h.sendMessage(this.k.obtainMessage(6, new x1(this)));
        }
    }

    public Context a() {
        return this.c;
    }

    public v b() {
        return this.f;
    }

    public j2 c() {
        return this.d;
    }

    public k2 d() {
        return this.g;
    }

    public b2 e() {
        return this.i;
    }

    public ls f() {
        if (this.j == null) {
            ls v = this.d.p().v();
            this.j = v;
            if (v == null) {
                this.j = ms.f3097do;
            }
        }
        return this.j;
    }

    public boolean g() {
        this.b = true;
        s1 s1Var = new s1(this);
        Handler handler = this.h;
        if (handler != null) {
            handler.obtainMessage(6, s1Var).sendToTarget();
            return true;
        }
        return false;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.d.O();
            if (this.g.e()) {
                if (this.d.J()) {
                    HandlerThread handlerThread = new HandlerThread("bd_tracker_n");
                    handlerThread.start();
                    Handler handler = new Handler(handlerThread.getLooper(), this);
                    this.h = handler;
                    handler.sendEmptyMessage(2);
                    if (this.e.size() > 0) {
                        this.k.removeMessages(4);
                        this.k.sendEmptyMessageDelayed(4, 1000L);
                    }
                    l0.d("net|worker start", null);
                }
            } else {
                this.k.removeMessages(1);
                this.k.sendEmptyMessageDelayed(1, 1000L);
            }
            d2.a();
        } else if (i == 2) {
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(new z1(this));
            arrayList.add(new u1(this));
            arrayList.add(new y1(this));
            arrayList.add(new a2(this));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                t1 t1Var = (t1) it.next();
                long h = t1Var.h();
                if (h < 864000000) {
                    this.h.sendMessageDelayed(this.k.obtainMessage(6, t1Var), h);
                }
            }
            k();
        } else if (i == 4) {
            b(null);
        } else if (i == 5) {
            b((String[]) message.obj);
        } else if (i == 6) {
            t1 t1Var2 = (t1) message.obj;
            if (!t1Var2.g()) {
                long h2 = t1Var2.h();
                if (h2 < 864000000) {
                    this.h.sendMessageDelayed(this.k.obtainMessage(6, t1Var2), h2);
                }
                k();
            }
        } else if (i != 7) {
            l0.a(null);
        } else {
            synchronized (this.e) {
                this.e.add(b2.d());
            }
            b(null);
        }
        return true;
    }

    private void b(String[] strArr) {
        ArrayList<u> arrayList;
        synchronized (this.e) {
            arrayList = (ArrayList) this.e.clone();
            this.e.clear();
        }
        int i = 0;
        if (strArr != null) {
            arrayList.ensureCapacity(arrayList.size() + strArr.length);
            for (String str : strArr) {
                arrayList.add(u.a(str));
            }
        }
        boolean a2 = this.d.a(arrayList);
        if (arrayList.size() > 0) {
            if (this.d.J()) {
                if (!a2 && arrayList.size() <= 100) {
                    synchronized (this.e) {
                        this.e.addAll(arrayList);
                    }
                    return;
                }
                Collections.sort(arrayList, this);
                ArrayList<u> arrayList2 = new ArrayList<>(arrayList.size());
                Iterator<u> it = arrayList.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    u next = it.next();
                    if (this.i.a(next, arrayList2)) {
                        l();
                    }
                    if (next instanceof b0) {
                        z = b2.b(next);
                        i = 1;
                    }
                }
                if (i != 0) {
                    if (z) {
                        this.k.removeMessages(7);
                    } else {
                        this.k.sendEmptyMessageDelayed(7, this.d.P());
                    }
                }
                this.f.a(arrayList2);
                if (this.b || !this.i.b() || this.h == null || !a.e()) {
                    return;
                }
                g();
                return;
            }
            Intent intent = new Intent(this.c, Collector.class);
            int size = arrayList.size();
            String[] strArr2 = new String[size];
            int i2 = 0;
            while (i < size) {
                strArr2[i] = arrayList.get(i).e().toString();
                i2 += strArr2[i].length();
                i++;
            }
            if (i2 >= 307200) {
                l0.a(null);
            }
            intent.putExtra("EMBED_K_DATA", strArr2);
            try {
                this.c.sendBroadcast(intent);
            } catch (Exception e) {
                l0.a(e);
            }
        }
    }

    public void a(Application application, j2 j2Var, k2 k2Var, j0 j0Var) {
        this.c = application;
        this.f = new v(application, k2Var, j2Var);
        this.d = j2Var;
        this.g = k2Var;
        this.i = new b2(k2Var, j2Var);
        this.c.registerActivityLifecycleCallbacks(j0Var);
        HandlerThread handlerThread = new HandlerThread("bd_tracker_w");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.k = handler;
        handler.sendEmptyMessage(1);
        k0.a(j2Var.A() != 0);
    }

    public static void a(u uVar) {
        int size;
        Handler handler;
        v1 v1Var = l;
        if (v1Var == null) {
            l0.b("Init comes First!", null);
            d2.a(uVar);
            return;
        }
        if (uVar.f10650a == 0) {
            l0.a(null);
        }
        if (uVar instanceof c0) {
            ((c0) uVar).k = v1Var.d.A();
        }
        synchronized (v1Var.e) {
            size = v1Var.e.size();
            v1Var.e.add(uVar);
        }
        if (size % 10 != 0 || (handler = v1Var.k) == null) {
            return;
        }
        handler.removeMessages(4);
        v1Var.k.sendEmptyMessageDelayed(4, size == 0 ? 500L : 250L);
    }

    public static void a(String[] strArr) {
        v1 v1Var = l;
        if (v1Var == null) {
            l0.a(new RuntimeException("Init comes First!"));
            return;
        }
        Handler handler = v1Var.k;
        if (handler != null) {
            handler.removeMessages(4);
            v1Var.k.obtainMessage(5, strArr).sendToTarget();
        }
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(u uVar, u uVar2) {
        int i = ((uVar.f10650a - uVar2.f10650a) > 0L ? 1 : ((uVar.f10650a - uVar2.f10650a) == 0L ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        return i > 0 ? 1 : 0;
    }
}
