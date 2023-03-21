package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.Process;
import android.os.SystemClock;
import android.util.Printer;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.h;
import com.apk.Cgoto;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LooperMonitor.java */
/* loaded from: classes8.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11049a = false;
    public static boolean b = true;
    public static int c;
    public static List<d> d;
    public static long g;
    public static HandlerThread h;
    public static long i;
    public static long j;
    public static Handler k;
    public static int l;
    public static boolean m;
    public static volatile AtomicLong e = new AtomicLong(-1);
    public static long f = 100;
    public static volatile String n = null;
    public static volatile boolean o = false;
    public static int p = -1;
    public static long q = -1;
    public static long r = -1;
    public static int s = -1;
    public static MessageQueue t = null;
    public static Field u = null;
    public static Field v = null;

    /* compiled from: LooperMonitor.java */
    /* loaded from: classes8.dex */
    public static class a implements Printer {
        @Override // android.util.Printer
        public void println(String str) {
            int i;
            if (g.b) {
                String unused = g.n = str;
                if (!g.m) {
                    boolean unused2 = g.m = true;
                    int unused3 = g.p = Process.myTid();
                    g.v();
                }
                g.q = g.e.get();
                if (g.r == -1) {
                    return;
                }
                long j = g.q - g.r;
                if (j > 0) {
                    if (j == 1) {
                        if (g.l > 1) {
                            i = 7;
                        } else {
                            i = g.l == 1 ? 3 : 0;
                        }
                    } else if (g.l > 1) {
                        i = 5;
                    } else {
                        i = g.l == 1 ? 6 : 1;
                    }
                    long s = g.s();
                    long uptimeMillis = SystemClock.uptimeMillis();
                    if (!g.o) {
                        g.b(g.t(), s - g.i, uptimeMillis - g.j, j, i, g.l, null);
                    }
                    long unused4 = g.i = s;
                    long unused5 = g.j = uptimeMillis;
                    int unused6 = g.l = 1;
                    return;
                }
                g.k();
            }
        }
    }

    /* compiled from: LooperMonitor.java */
    /* loaded from: classes8.dex */
    public static class b implements Printer {
        @Override // android.util.Printer
        public void println(String str) {
            int i;
            g.r = g.e.get();
            if (g.q <= 0) {
                return;
            }
            long j = g.r - g.q;
            if (j <= 0) {
                return;
            }
            long s = g.s();
            long uptimeMillis = SystemClock.uptimeMillis();
            int i2 = (j > 1L ? 1 : (j == 1L ? 0 : -1));
            if (i2 == 0 && g.l > 1) {
                i = 9;
            } else if (i2 == 0 && g.l == 1) {
                i = 2;
            } else if (i2 <= 0 || g.l <= 1) {
                i = (i2 <= 0 || g.l != 1) ? 0 : 8;
            } else {
                i = 4;
            }
            if (!g.o) {
                g.b(g.t(), s - g.i, uptimeMillis - g.j, j, i, g.l, str);
            }
            long unused = g.i = s;
            long unused2 = g.j = uptimeMillis;
            int unused3 = g.l = 0;
            g.q = -1L;
        }
    }

    /* compiled from: LooperMonitor.java */
    /* loaded from: classes8.dex */
    public static class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            long j;
            g.e.set((SystemClock.uptimeMillis() - g.g) / g.f);
            long uptimeMillis = (SystemClock.uptimeMillis() - g.g) % g.f;
            if (uptimeMillis >= 95) {
                g.e.incrementAndGet();
                j = g.f << 1;
            } else {
                j = g.f;
            }
            g.k.postDelayed(this, j - uptimeMillis);
        }
    }

    /* compiled from: LooperMonitor.java */
    /* loaded from: classes8.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public int f11050a;
        public int b;
        public long c;
        public long d;
        public long e;
        public boolean f;
        public String g;

        public String toString() {
            int i = this.b;
            if (i == 0) {
                StringBuilder m1016super = Cgoto.m1016super("[[[ IDLE  ]]] cost ");
                m1016super.append(this.c);
                m1016super.append(" tick , mDuration：");
                m1016super.append(this.d);
                m1016super.append(",cpuTime:");
                m1016super.append(this.e);
                return m1016super.toString();
            } else if (i == 1) {
                StringBuilder m1016super2 = Cgoto.m1016super("[[[ Long IDLE  ]]] cost ");
                m1016super2.append(this.c);
                m1016super2.append(" tick , mDuration：");
                m1016super2.append(this.d);
                m1016super2.append(",cpuTime:");
                m1016super2.append(this.e);
                return m1016super2.toString();
            } else if (i == 2) {
                StringBuilder m1016super3 = Cgoto.m1016super("[[[  1 msg  ]]] cost ");
                m1016super3.append(this.c);
                m1016super3.append(" tick , mDuration：");
                m1016super3.append(this.d);
                m1016super3.append(",cpuTime:");
                m1016super3.append(this.e);
                m1016super3.append(", msg:");
                m1016super3.append(this.g);
                return m1016super3.toString();
            } else if (i == 3) {
                StringBuilder m1016super4 = Cgoto.m1016super("[[[ 1 msg + IDLE  ]]] cost ");
                m1016super4.append(this.c);
                m1016super4.append(" tick , mDuration：");
                m1016super4.append(this.d);
                m1016super4.append(",cpuTime:");
                m1016super4.append(this.e);
                return m1016super4.toString();
            } else if (i == 4) {
                StringBuilder m1016super5 = Cgoto.m1016super("[[[ ");
                m1016super5.append(this.f11050a - 1);
                m1016super5.append(" msgs  ]]] cost less than 1 tick, [[[  last msg ]]] cost more than ");
                m1016super5.append(this.c - 1);
                m1016super5.append("tick ,, mDuration：");
                m1016super5.append(this.d);
                m1016super5.append("cpuTime:");
                m1016super5.append(this.e);
                m1016super5.append(" msg:");
                m1016super5.append(this.g);
                return m1016super5.toString();
            } else if (i == 5) {
                StringBuilder m1016super6 = Cgoto.m1016super("[[[ ");
                m1016super6.append(this.f11050a);
                m1016super6.append(" msgs ]]] cost less than 1 tick but [[[  IDLE ]]] cost more than");
                m1016super6.append(this.c - 1);
                m1016super6.append(" ticks, , mDuration：");
                m1016super6.append(this.d);
                m1016super6.append("cpuTime:");
                m1016super6.append(this.e);
                return m1016super6.toString();
            } else if (i == 6) {
                StringBuilder m1016super7 = Cgoto.m1016super("[[[  1 msg  ]]] cost less than 1 tick , but [[[  IDLE ]]] cost more than");
                m1016super7.append(this.c - 1);
                m1016super7.append(", , mDuration：");
                m1016super7.append(this.d);
                m1016super7.append("cpuTime:");
                m1016super7.append(this.e);
                return m1016super7.toString();
            } else if (i == 7) {
                StringBuilder m1016super8 = Cgoto.m1016super("[[[ ");
                m1016super8.append(this.f11050a);
                m1016super8.append(" msgs + IDLE  ]]] cost 1 tick , mDuration：");
                m1016super8.append(this.d);
                m1016super8.append(" cost cpuTime:");
                m1016super8.append(this.e);
                return m1016super8.toString();
            } else if (i == 8) {
                StringBuilder m1016super9 = Cgoto.m1016super("[[[ 1 msgs ]]] cost ");
                m1016super9.append(this.c);
                m1016super9.append(" ticks , mDuration：");
                m1016super9.append(this.d);
                m1016super9.append(" cost cpuTime:");
                m1016super9.append(this.e);
                m1016super9.append(" msg:");
                m1016super9.append(this.g);
                return m1016super9.toString();
            } else if (i == 9) {
                StringBuilder m1016super10 = Cgoto.m1016super("[[[ ");
                m1016super10.append(this.f11050a);
                m1016super10.append(" msgs ]]] cost 1 tick , mDuration：");
                m1016super10.append(this.d);
                m1016super10.append(" cost cpuTime:");
                m1016super10.append(this.e);
                return m1016super10.toString();
            } else {
                StringBuilder m1016super11 = Cgoto.m1016super("=========   UNKNOW =========  Type:");
                m1016super11.append(this.b);
                m1016super11.append(" cost ticks ");
                m1016super11.append(this.c);
                m1016super11.append(" msgs:");
                m1016super11.append(this.f11050a);
                return m1016super11.toString();
            }
        }
    }

    public static /* synthetic */ int k() {
        int i2 = l;
        l = i2 + 1;
        return i2;
    }

    public static long o() {
        long uptimeMillis;
        long j2;
        long j3;
        if (q < 0) {
            uptimeMillis = SystemClock.uptimeMillis() - g;
            j2 = r;
            j3 = f;
        } else {
            uptimeMillis = SystemClock.uptimeMillis() - g;
            j2 = q;
            j3 = f;
        }
        return uptimeMillis - (j2 * j3);
    }

    public static List<d> p() {
        if (d == null) {
            return null;
        }
        o = true;
        ArrayList arrayList = new ArrayList();
        if (d.size() == c) {
            for (int i2 = s; i2 < d.size(); i2++) {
                arrayList.add(d.get(i2));
            }
            for (int i3 = 0; i3 < s; i3++) {
                arrayList.add(d.get(i3));
            }
        } else {
            arrayList.addAll(d);
        }
        o = false;
        return arrayList;
    }

    public static JSONArray q() {
        JSONArray jSONArray = new JSONArray();
        List<d> p2 = p();
        if (p2 == null) {
            return jSONArray;
        }
        int i2 = 0;
        for (d dVar : p2) {
            if (dVar != null) {
                i2++;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, dVar.g);
                    jSONObject.put("cpuDuration", dVar.e);
                    jSONObject.put("duration", dVar.d);
                    jSONObject.put("tick", dVar.c);
                    jSONObject.put("type", dVar.b);
                    jSONObject.put("count", dVar.f11050a);
                    jSONObject.put("id", i2);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    public static MessageQueue r() {
        if (t == null && Looper.getMainLooper() != null) {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper == Looper.myLooper()) {
                t = Looper.myQueue();
            } else if (Build.VERSION.SDK_INT >= 23) {
                t = mainLooper.getQueue();
            } else {
                try {
                    Field declaredField = mainLooper.getClass().getDeclaredField("mQueue");
                    declaredField.setAccessible(true);
                    t = (MessageQueue) declaredField.get(mainLooper);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return t;
    }

    public static long s() {
        return bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.c.a(p);
    }

    public static d t() {
        int size = d.size();
        int i2 = c;
        if (size == i2) {
            int i3 = (s + 1) % i2;
            s = i3;
            return d.get(i3);
        }
        d dVar = new d();
        d.add(dVar);
        s++;
        return dVar;
    }

    public static void u() {
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.g.a(4L);
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.f.e().a();
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.f.e().b(new a());
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.f.e().a(new b());
        i = s();
        j = SystemClock.uptimeMillis();
    }

    public static void v() {
        h = h.b();
        g = SystemClock.uptimeMillis();
        k = new Handler(h.getLooper());
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.g.a(8L);
        k.postDelayed(new c(), f);
    }

    public static JSONObject c(long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("message", n);
            jSONObject.put("currentMessageCost", o());
            jSONObject.put("currentMessageCpu", s() - i);
            jSONObject.put("currentTick", e.get());
        } catch (Throwable th) {
            j.a(th);
        }
        return jSONObject;
    }

    public static void b(d dVar, long j2, long j3, long j4, int i2, int i3, String str) {
        dVar.e = j2;
        dVar.c = j4;
        dVar.d = j3;
        dVar.f = false;
        dVar.f11050a = i3;
        if (str != null) {
            dVar.g = str;
        }
        dVar.b = i2;
    }

    public static void a(int i2, int i3) {
        if (b) {
            if (i2 > 10) {
                c = i2;
            }
            if (i3 > 10) {
                f = i3;
            }
            d = new ArrayList();
            u();
            a(r());
        }
    }

    public static Message a(MessageQueue messageQueue) {
        Field field = u;
        if (field == null) {
            try {
                Field declaredField = Class.forName("android.os.MessageQueue").getDeclaredField("mMessages");
                u = declaredField;
                declaredField.setAccessible(true);
                return (Message) u.get(messageQueue);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            return (Message) field.get(messageQueue);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static JSONArray a(int i2, long j2) {
        MessageQueue r2 = r();
        JSONArray jSONArray = new JSONArray();
        if (r2 == null) {
            return jSONArray;
        }
        synchronized (r2) {
            Message a2 = a(r2);
            if (a2 == null) {
                return jSONArray;
            }
            int i3 = 0;
            int i4 = 0;
            while (a2 != null && i3 < i2) {
                i3++;
                i4++;
                JSONObject a3 = a(a2, j2);
                try {
                    a3.put("id", i4);
                } catch (JSONException unused) {
                }
                jSONArray.put(a3);
                a2 = a(a2);
            }
            return jSONArray;
        }
    }

    public static JSONObject a(Message message, long j2) {
        JSONObject jSONObject = new JSONObject();
        if (message == null) {
            return jSONObject;
        }
        try {
            jSONObject.put("when", message.getWhen() - j2);
            if (message.getCallback() != null) {
                jSONObject.put("callback", message.getCallback());
            }
            jSONObject.put("what", message.what);
            if (message.getTarget() != null) {
                jSONObject.put(AnimatedVectorDrawableCompat.TARGET, message.getTarget());
            } else {
                jSONObject.put("barrier", message.arg1);
            }
            jSONObject.put("arg1", message.arg1);
            jSONObject.put("arg2", message.arg2);
            if (message.obj != null) {
                jSONObject.put(IconCompat.EXTRA_OBJ, message.obj);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public static Message a(Message message) {
        Field field = v;
        if (field == null) {
            try {
                Field declaredField = Class.forName("android.os.Message").getDeclaredField("next");
                v = declaredField;
                declaredField.setAccessible(true);
                Message message2 = (Message) v.get(message);
                if (f11049a) {
                    String str = "[getNextMessage] success get next msg :" + message2;
                }
                return message2;
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            return (Message) field.get(message);
        } catch (Exception unused2) {
            return null;
        }
    }
}
