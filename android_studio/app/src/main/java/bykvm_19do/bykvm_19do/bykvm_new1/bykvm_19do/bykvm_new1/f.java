package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Printer;
import android.util.SparseArray;
import androidx.appcompat.widget.ActivityChooserView;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;

/* compiled from: LooperMessageManager.java */
/* loaded from: classes8.dex */
public class f implements Handler.Callback {
    public static Printer i;
    public static f j;
    public static final Printer k = new a();
    public long c;
    public boolean h;
    public int b = 0;
    public final SparseArray<List<Runnable>> d = new SparseArray<>();
    public final List<Printer> e = new LinkedList();
    public final List<Printer> f = new LinkedList();
    public boolean g = false;

    /* renamed from: a  reason: collision with root package name */
    public Handler f11085a = new Handler(h.b().getLooper(), this);

    /* compiled from: LooperMessageManager.java */
    /* loaded from: classes8.dex */
    public static class a implements Printer {
        @Override // android.util.Printer
        public void println(String str) {
            if (str == null) {
                return;
            }
            if (str.startsWith(">>>>> Dispatching")) {
                f.e().a(str);
            } else if (str.startsWith("<<<<< Finished")) {
                f.e().b(str);
            }
            if (f.i == null || f.i == f.k) {
                return;
            }
            f.i.println(str);
        }
    }

    public f() {
        a();
    }

    private Printer d() {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception e) {
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j.b(e);
            return null;
        }
    }

    public static f e() {
        if (j == null) {
            synchronized (f.class) {
                if (j == null) {
                    j = new f();
                }
            }
        }
        return j;
    }

    public void a() {
        if (this.g) {
            return;
        }
        this.g = true;
        Printer d = d();
        i = d;
        if (d == k) {
            i = null;
        }
        Looper.getMainLooper().setMessageLogging(k);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f11085a.hasMessages(0)) {
            return true;
        }
        int i2 = message.what;
        if (i2 == 0) {
            this.b = 0;
            if (this.d.size() != 0 && this.d.keyAt(0) == 0) {
                a(this.d.valueAt(0));
                this.b++;
            }
        } else if (i2 == 1) {
            this.f11085a.removeMessages(2);
            if (this.d.size() != 0) {
                SparseArray<List<Runnable>> sparseArray = this.d;
                if (sparseArray.keyAt(sparseArray.size() - 1) == 0) {
                    a(this.d.get(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
                }
            }
            return true;
        } else if (i2 == 2) {
            a(this.d.valueAt(this.b));
            this.b++;
        }
        if (this.b >= this.d.size()) {
            return true;
        }
        long keyAt = this.d.keyAt(this.b);
        if (keyAt != 2147483647L) {
            this.f11085a.sendEmptyMessageAtTime(2, this.c + keyAt);
        }
        return true;
    }

    public synchronized void b(Printer printer) {
        this.e.add(printer);
    }

    public void b(String str) {
        SystemClock.uptimeMillis();
        try {
            this.f11085a.removeMessages(2);
            a(this.f, str);
            this.f11085a.sendEmptyMessage(1);
        } catch (Exception e) {
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j.b(e);
        }
    }

    public void a(long j2, Runnable runnable) {
        a(j2, runnable, 1, 0L);
    }

    public void a(long j2, Runnable runnable, int i2, long j3) {
        if (j2 < 0) {
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = (int) j2;
            List<Runnable> list = this.d.get(i4);
            if (list == null) {
                synchronized (this.d) {
                    list = this.d.get(i4);
                    if (list == null) {
                        list = new LinkedList<>();
                        this.d.put(i4, list);
                    }
                }
            }
            list.add(runnable);
            j2 += j3;
        }
    }

    public void a(Printer printer) {
        this.f.add(printer);
    }

    public void a(String str) {
        if (!this.h) {
            g.a(32L);
            this.h = true;
        }
        this.c = SystemClock.uptimeMillis();
        try {
            a(this.e, str);
            this.f11085a.sendEmptyMessage(0);
        } catch (Exception e) {
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j.a(e);
        }
    }

    public static void a(List<? extends Runnable> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (Runnable runnable : list) {
                runnable.run();
            }
        } catch (Exception e) {
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j.a(e);
        }
    }

    private synchronized void a(List<? extends Printer> list, String str) {
        if (list != null) {
            if (!list.isEmpty()) {
                try {
                    for (Printer printer : list) {
                        printer.println(str);
                    }
                } catch (Exception e) {
                    bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j.a(e);
                }
            }
        }
    }
}
