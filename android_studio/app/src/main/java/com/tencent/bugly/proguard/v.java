package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static v f12106a;
    public final Context c;
    public long e;
    public long f;
    public Map<Integer, Long> d = new HashMap();
    public LinkedBlockingQueue<Runnable> g = new LinkedBlockingQueue<>();
    public LinkedBlockingQueue<Runnable> h = new LinkedBlockingQueue<>();
    public final Object i = new Object();
    public int j = 0;
    public final o b = o.a();

    public v(Context context) {
        this.c = context;
    }

    public static /* synthetic */ int b(v vVar) {
        int i = vVar.j - 1;
        vVar.j = i;
        return i;
    }

    private void c(int i) {
        x a2 = x.a();
        LinkedBlockingQueue<Runnable> linkedBlockingQueue = new LinkedBlockingQueue<>();
        final LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
        synchronized (this.i) {
            y.c("[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            int size = this.g.size();
            final int size2 = this.h.size();
            if (size == 0 && size2 == 0) {
                y.c("[UploadManager] There is no upload task in queue.", new Object[0]);
                return;
            }
            size2 = (a2 == null || !a2.c()) ? 0 : 0;
            a(this.g, linkedBlockingQueue, size);
            a(this.h, linkedBlockingQueue2, size2);
            a(size, linkedBlockingQueue);
            if (size2 > 0) {
                y.c("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size2), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            x a3 = x.a();
            if (a3 != null) {
                a3.a(new Runnable(this) { // from class: com.tencent.bugly.proguard.v.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable;
                        for (int i2 = 0; i2 < size2 && (runnable = (Runnable) linkedBlockingQueue2.poll()) != null; i2++) {
                            runnable.run();
                        }
                    }
                });
            }
        }
    }

    public static synchronized v a(Context context) {
        v vVar;
        synchronized (v.class) {
            if (f12106a == null) {
                f12106a = new v(context);
            }
            vVar = f12106a;
        }
        return vVar;
    }

    public final boolean b(int i) {
        if (com.tencent.bugly.b.c) {
            y.c("Uploading frequency will not be checked if SDK is in debug mode.", new Object[0]);
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis() - a(i);
        y.c("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", Long.valueOf(currentTimeMillis / 1000), Integer.valueOf(i));
        if (currentTimeMillis < 30000) {
            y.a("[UploadManager] Data only be uploaded once in %d seconds.", 30L);
            return false;
        }
        return true;
    }

    public static synchronized v a() {
        v vVar;
        synchronized (v.class) {
            vVar = f12106a;
        }
        return vVar;
    }

    public final void a(int i, an anVar, String str, String str2, u uVar, long j, boolean z) {
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            a(new w(this.c, i, anVar.g, a.a((Object) anVar), str, str2, uVar, true, z), true, true, j);
        } catch (Throwable th2) {
            th = th2;
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final void a(int i, an anVar, String str, String str2, u uVar, boolean z) {
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            a(new w(this.c, i, anVar.g, a.a((Object) anVar), str, str2, uVar, 0, 0, false, null), z, false, 0L);
        } catch (Throwable th2) {
            th = th2;
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final long a(boolean z) {
        long j;
        long b = ab.b();
        int i = z ? 5 : 3;
        List<q> a2 = this.b.a(i);
        if (a2 != null && a2.size() > 0) {
            j = 0;
            try {
                q qVar = a2.get(0);
                if (qVar.e >= b) {
                    j = ab.b(qVar.g);
                    if (i == 3) {
                        this.e = j;
                    } else {
                        this.f = j;
                    }
                    a2.remove(qVar);
                }
            } catch (Throwable th) {
                y.a(th);
            }
            if (a2.size() > 0) {
                this.b.a(a2);
            }
        } else {
            j = z ? this.f : this.e;
        }
        y.c("[UploadManager] Local network consume: %d KB", Long.valueOf(j / 1024));
        return j;
    }

    public final synchronized void a(long j, boolean z) {
        int i = z ? 5 : 3;
        q qVar = new q();
        qVar.b = i;
        qVar.e = ab.b();
        qVar.c = "";
        qVar.d = "";
        qVar.g = ab.c(j);
        this.b.b(i);
        this.b.a(qVar);
        if (z) {
            this.f = j;
        } else {
            this.e = j;
        }
        y.c("[UploadManager] Network total consume: %d KB", Long.valueOf(j / 1024));
    }

    public final synchronized void a(int i, long j) {
        if (i < 0) {
            y.e("[UploadManager] Unknown uploading ID: %d", Integer.valueOf(i));
            return;
        }
        this.d.put(Integer.valueOf(i), Long.valueOf(j));
        q qVar = new q();
        qVar.b = i;
        qVar.e = j;
        qVar.c = "";
        qVar.d = "";
        qVar.g = new byte[0];
        this.b.b(i);
        this.b.a(qVar);
        y.c("[UploadManager] Uploading(ID:%d) time: %s", Integer.valueOf(i), ab.a(j));
    }

    public final synchronized long a(int i) {
        if (i >= 0) {
            Long l = this.d.get(Integer.valueOf(i));
            if (l != null) {
                return l.longValue();
            }
        } else {
            y.e("[UploadManager] Unknown upload ID: %d", Integer.valueOf(i));
        }
        return 0L;
    }

    public static void a(LinkedBlockingQueue<Runnable> linkedBlockingQueue, LinkedBlockingQueue<Runnable> linkedBlockingQueue2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            Runnable peek = linkedBlockingQueue.peek();
            if (peek == null) {
                return;
            }
            try {
                linkedBlockingQueue2.put(peek);
                linkedBlockingQueue.poll();
            } catch (Throwable th) {
                y.e("[UploadManager] Failed to add upload task to temp urgent queue: %s", th.getMessage());
            }
        }
    }

    private void a(int i, LinkedBlockingQueue<Runnable> linkedBlockingQueue) {
        x a2 = x.a();
        if (i > 0) {
            y.c("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(i), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        }
        for (int i2 = 0; i2 < i; i2++) {
            final Runnable poll = linkedBlockingQueue.poll();
            if (poll == null) {
                return;
            }
            synchronized (this.i) {
                if (this.j >= 2 && a2 != null) {
                    a2.a(poll);
                } else {
                    y.a("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
                    if (ab.a(new Runnable() { // from class: com.tencent.bugly.proguard.v.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            poll.run();
                            synchronized (v.this.i) {
                                v.b(v.this);
                            }
                        }
                    }, "BUGLY_ASYNC_UPLOAD") != null) {
                        synchronized (this.i) {
                            this.j++;
                        }
                    } else {
                        y.d("[UploadManager] Failed to start a thread to execute asynchronous upload task,will try again next time.", new Object[0]);
                        a(poll, true);
                    }
                }
            }
        }
    }

    private boolean a(Runnable runnable, boolean z) {
        if (runnable == null) {
            y.a("[UploadManager] Upload task should not be null", new Object[0]);
            return false;
        }
        try {
            y.c("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            synchronized (this.i) {
                if (z) {
                    this.g.put(runnable);
                } else {
                    this.h.put(runnable);
                }
            }
            return true;
        } catch (Throwable th) {
            y.e("[UploadManager] Failed to add upload task to queue: %s", th.getMessage());
            return false;
        }
    }

    private void a(Runnable runnable, boolean z, boolean z2, long j) {
        if (runnable == null) {
            y.d("[UploadManager] Upload task should not be null", new Object[0]);
        }
        y.c("[UploadManager] Add upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (!z2) {
            a(runnable, z);
            c(0);
        } else if (runnable == null) {
            y.d("[UploadManager] Upload task should not be null", new Object[0]);
        } else {
            y.c("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            Thread a2 = ab.a(runnable, "BUGLY_SYNC_UPLOAD");
            if (a2 == null) {
                y.e("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new Object[0]);
                a(runnable, true);
                return;
            }
            try {
                a2.join(j);
            } catch (Throwable th) {
                y.e("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th.getMessage());
                a(runnable, true);
                c(0);
            }
        }
    }
}
