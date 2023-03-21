package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Process;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.j;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.w;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.umeng.analytics.pro.ao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

/* compiled from: AdEventThread.java */
/* loaded from: classes8.dex */
public class f<T extends j> extends HandlerThread implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public String f10956a;
    public final bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a<T> b;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<T> c;
    public final List<T> d;
    public long e;
    public boolean f;
    public int g;
    public Handler h;
    public final a i;
    public final b j;
    public boolean k;

    /* compiled from: AdEventThread.java */
    /* loaded from: classes8.dex */
    public interface a {
        boolean a();
    }

    /* compiled from: AdEventThread.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f10957a;
        public final long b;
        public final long c;
        public final int d;
        public final long e;
        public final long f;

        public b(int i, long j, long j2, int i2, long j3, long j4) {
            this.f10957a = i;
            this.b = j;
            this.c = j2;
            this.d = i2;
            this.e = j3;
            this.f = j4;
        }

        public static b b() {
            StringBuilder m1016super = Cgoto.m1016super("AdEventThread- policy: batchSize: ");
            m1016super.append(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().k());
            m1016super.append(", routineInterval: ");
            m1016super.append(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().n());
            Logger.d("TTMediationSDK", m1016super.toString());
            return new b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().k(), bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().n(), 60000L, 5, 604800000L, 300000L);
        }

        public int a() {
            if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l.f10998a) {
                return 1;
            }
            return this.f10957a;
        }
    }

    public f(String str, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a<T> aVar, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<T> aVar2, b bVar, a aVar3) {
        super(Cgoto.m989case("gm_t_adevent_", str), -4);
        this.f10956a = "AdEventThread-【";
        this.f10956a = Cgoto.m998final(new StringBuilder(), this.f10956a, str, "】");
        this.k = "V3".equals(str);
        a(Cgoto.m989case("tag=", str));
        this.j = bVar;
        this.i = aVar3;
        this.b = aVar;
        this.c = aVar2;
        this.d = Collections.synchronizedList(new LinkedList());
    }

    private void a(List<T> list) {
        int a2 = this.j.a();
        if (list == null) {
            return;
        }
        if (list.size() <= a2) {
            StringBuilder m1016super = Cgoto.m1016super("start and return, checkAndDeleteEvent local size:");
            m1016super.append(list.size());
            m1016super.append("小于:");
            m1016super.append(a2);
            a(m1016super.toString());
            return;
        }
        int size = list.size() - a2;
        StringBuilder m1016super2 = Cgoto.m1016super("start checkAndDeleteEvent local size,deleteCnt:");
        m1016super2.append(list.size());
        m1016super2.append(",");
        m1016super2.append(size);
        a(m1016super2.toString());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(list.get(i));
        }
        list.removeAll(arrayList);
        a("end checkAndDeleteEvent local size:" + list.size());
    }

    private void b(List<T> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    HashSet hashSet = new HashSet();
                    for (T t : this.d) {
                        hashSet.add(t.a());
                    }
                    for (T t2 : list) {
                        if (!hashSet.contains(t2.a())) {
                            this.d.add(t2);
                        }
                    }
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        a("reloadCacheList adEventList is empty======");
    }

    private g c(List<T> list) {
        try {
            if (this.c == null) {
                this.c = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.e();
            }
        } catch (Exception unused) {
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<T> aVar = this.c;
        if (aVar == null) {
            return null;
        }
        return aVar.a(list);
    }

    private void d() {
        a(4, g());
    }

    private void e() {
        StringBuilder m1016super = Cgoto.m1016super("普通失败 ，触发重试机制：");
        m1016super.append(this.j.c);
        m1016super.append("毫秒后 重试.....");
        a(m1016super.toString());
        a(3, this.j.c);
    }

    private void f() {
        this.h.removeMessages(3);
        this.h.removeMessages(2);
        if (w.a(this.d)) {
            this.e = System.currentTimeMillis();
            c();
        } else if (!this.i.a()) {
            a("doRoutineUpload no net, wait retry");
            e();
        } else {
            g c = c(this.d);
            if (c != null) {
                if (c.f10958a) {
                    StringBuilder m1016super = Cgoto.m1016super("doRoutineUpload success: ");
                    m1016super.append(this.d.size());
                    m1016super.append(" events");
                    a(m1016super.toString());
                    a();
                    o();
                    p();
                } else if (b(c)) {
                    a("doRoutineUpload serverbusy");
                    i();
                } else if (a(c)) {
                    a("服务端返回data error 抛弃数据 , 清空本次日志，重置上传状态....");
                    a();
                    o();
                } else if (this.f) {
                } else {
                    e();
                    a("doRoutineUpload net fail retry");
                }
            }
        }
    }

    private long g() {
        long j = ((this.g % 3) + 1) * this.j.f;
        a("服务器繁忙，" + j + "毫秒后进行重试,当前重试次数：mServerBusyRetryCount=" + this.g + "，mServerBusyRetryBaseInternal=" + this.j.f);
        return ((this.g % 3) + 1) * this.j.f;
    }

    private int h() {
        return this.k ? 2 : 1;
    }

    private void i() {
        this.f = true;
        this.b.a(h(), true);
        this.d.clear();
        this.h.removeMessages(3);
        this.h.removeMessages(2);
        d();
    }

    private boolean j() {
        StringBuilder m1016super = Cgoto.m1016super("mCacheList.size():");
        m1016super.append(this.d.size());
        m1016super.append(",mPolicy.mMaxCacheCount=");
        m1016super.append(this.j.a());
        m1016super.append(",System.currentTimeMillis() - mLastSuccessUploadTime =");
        m1016super.append(System.currentTimeMillis() - this.e);
        m1016super.append(",mPolicy.mMaxCacheTime=");
        m1016super.append(this.j.b);
        a(m1016super.toString());
        return !this.f && (this.d.size() >= this.j.a() || System.currentTimeMillis() - this.e >= this.j.b);
    }

    private void k() {
        StringBuilder m1016super = Cgoto.m1016super("onHandleInitEvent 初始化日志组件.....线程优先级：");
        m1016super.append(Process.getThreadPriority(0));
        a(m1016super.toString());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a<T> aVar = this.b;
        b bVar = this.j;
        aVar.a(2, bVar.d, bVar.e);
        this.f = this.b.a(h());
        this.g = this.b.b(h());
        if (this.f) {
            StringBuilder m1016super2 = Cgoto.m1016super("onHandleInitEvent serverBusy, retryCount = ");
            m1016super2.append(this.g);
            a(m1016super2.toString());
            d();
            return;
        }
        List<T> a2 = this.b.a(h(), this.j.a(), ao.d);
        if (Logger.isDebug()) {
            for (T t : a2) {
            }
        }
        b(a2);
        StringBuilder m1016super3 = Cgoto.m1016super("onHandleInitEvent cacheData count = ");
        m1016super3.append(this.d.size());
        a(m1016super3.toString());
        f();
    }

    private void l() {
        if (this.f) {
            StringBuilder m1016super = Cgoto.m1016super("如果在容灾状态，直接返回, 安全起见这里判断一下,mIsServerBusy=");
            m1016super.append(this.f);
            a(m1016super.toString());
            return;
        }
        a("onHandleRoutineRetryEvent");
        f();
    }

    private void m() {
        if (this.f) {
            StringBuilder m1016super = Cgoto.m1016super("如果在容灾状态，直接返回, 安全起见这里判断一下,mIsServerBusy=");
            m1016super.append(this.f);
            a(m1016super.toString());
            return;
        }
        a("onHandleRoutineUploadEvent");
        f();
    }

    private void n() {
        if (!this.i.a()) {
            a(4, this.j.c);
            a("onHandleServerBusyRetryEvent, no net");
            return;
        }
        List<T> a2 = this.b.a(h(), this.j.a(), ao.d);
        a(a2);
        StringBuilder m1016super = Cgoto.m1016super("数据库查询出来的size=");
        m1016super.append(a2 != null ? a2.size() : 0);
        a(m1016super.toString());
        if (w.a(a2)) {
            a("onHandleServerBusyRetryEvent, empty list start routine");
            b();
            c();
            return;
        }
        g c = c(a2);
        if (c != null) {
            if (c.f10958a) {
                a("onHandleServerBusyRetryEvent, success");
                a();
                o();
                p();
            } else if (b(c)) {
                this.g++;
                this.b.a(h(), this.g);
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a<T> aVar = this.b;
                int h = h();
                b bVar = this.j;
                aVar.a(h, a2, bVar.d, bVar.e);
                d();
                StringBuilder m1016super2 = Cgoto.m1016super("onHandleServerBusyRetryEvent, serverbusy, count = ");
                m1016super2.append(this.g);
                a(m1016super2.toString());
            } else if (a(c)) {
                a("onHandleServerBusyRetryEvent, ---》 data Error直接抛弃数据 ");
                a();
                o();
            } else {
                e();
                a("onHandleServerBusyRetryEvent, net fail");
            }
        }
    }

    private void o() {
        this.e = System.currentTimeMillis();
        b();
        c();
    }

    private void p() {
        int a2 = this.j.a() / 2;
        if (a2 < 1) {
            a2 = 1;
        }
        List<T> a3 = this.b.a(h(), a2, ao.d);
        if (a3 != null && a3.size() > 0) {
            this.d.addAll(a3);
            if (a3.size() >= a2) {
                this.h.removeMessages(2);
                this.h.sendEmptyMessage(2);
                a("数据库日志数量: " + this.d.size() + ", 大于等于batchSize/2（" + a2 + "），继续上传.");
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("数据库日志数量: ");
            m1016super.append(this.d.size());
            m1016super.append(", 小于batchSize/2（");
            m1016super.append(a2);
            m1016super.append("），停止上传，等待新产生的事件");
            a(m1016super.toString());
            return;
        }
        a(Cgoto.m1005instanceof("数据库日志数量: 0, 小于batchSize/2（", a2, "），停止上传，等待新产生的事件"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            a((f<T>) ((j) message.obj));
        } else if (i == 2) {
            m();
        } else if (i == 3) {
            a("routine触发失败重试.....");
            l();
        } else if (i == 4) {
            a("触发服务器繁忙重试机制.....");
            n();
        } else if (i == 5) {
            k();
        }
        return true;
    }

    @Override // android.os.HandlerThread
    public void onLooperPrepared() {
        this.e = System.currentTimeMillis();
        this.h = new Handler(getLooper(), this);
    }

    private void c() {
        a(2, this.j.b);
    }

    public static boolean b(g gVar) {
        return gVar.b == 509;
    }

    private void b() {
        this.f = false;
        this.b.a(h(), false);
        this.g = 0;
        this.b.a(h(), 0);
        this.h.removeMessages(4);
    }

    private void a(T t) {
        this.b.a(h(), (int) t);
        if (this.f) {
            StringBuilder m1016super = Cgoto.m1016super("如果在容灾状态，直接返回.......mIsServerBusy=");
            m1016super.append(this.f);
            a(m1016super.toString());
            return;
        }
        a("onHandleReceivedAdEvent");
        this.d.add(t);
        a(this.d);
        if (j()) {
            a("onHandleReceivedAdEvent upload");
            f();
        }
    }

    private void a() {
        this.b.a(h(), this.d);
        this.d.clear();
    }

    private void a(int i, long j) {
        Message obtainMessage = this.h.obtainMessage();
        obtainMessage.what = i;
        this.h.sendMessageDelayed(obtainMessage, j);
    }

    public static boolean a(g gVar) {
        return gVar.d;
    }

    private void a(String str) {
        Logger.i(this.f10956a, str);
    }
}
