package com.baidu.tts.auth;

import com.baidu.tts.auth.d;
import com.baidu.tts.auth.e;
import com.baidu.tts.b.a.b.e;
import com.baidu.tts.b.a.b.f;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.l;
import com.baidu.tts.f.m;
import com.baidu.tts.f.n;
import com.baidu.tts.m.j;
import com.baidu.tts.tools.StringTool;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: AuthClient.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile a f11122a;
    public com.baidu.tts.k.c<e, e.a> b = new com.baidu.tts.k.c<>();
    public com.baidu.tts.k.c<d, d.a> c = new com.baidu.tts.k.c<>();

    /* compiled from: AuthClient.java */
    /* renamed from: com.baidu.tts.auth.a$3  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11125a;

        static {
            int[] iArr = new int[m.values().length];
            f11125a = iArr;
            try {
                m mVar = m.ONLINE;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11125a;
                m mVar2 = m.OFFLINE;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11125a;
                m mVar3 = m.MIX;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: AuthClient.java */
    /* renamed from: com.baidu.tts.auth.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class CallableC0080a implements Callable<d.a> {
        public e.a b;

        public CallableC0080a(e.a aVar) {
            this.b = aVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public d.a call() throws Exception {
            d.a aVar = new d.a();
            com.baidu.tts.h.b.a g = com.baidu.tts.h.b.b.a().g();
            if (g == null) {
                aVar.a(com.baidu.tts.h.a.c.a().b(n.APP_RESOURCE_IS_NULL));
                return aVar;
            }
            String e = this.b.e();
            String d = this.b.d();
            if (StringTool.isEmpty(d)) {
                d = g.b();
            }
            LoggerProxy.d("AuthClient", "appCode=" + e);
            LoggerProxy.d("AuthClient", "licenseFilePath=" + d);
            d dVar = new d();
            dVar.a(e);
            dVar.b(d);
            return (d.a) a.this.c.a(dVar);
        }
    }

    /* compiled from: AuthClient.java */
    /* loaded from: classes8.dex */
    public class b implements Callable<e.a> {
        public f.b b;

        public b(f.b bVar) {
            this.b = bVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public e.a call() throws Exception {
            String i = this.b.i();
            String e = this.b.e();
            String f = this.b.f();
            String j = this.b.j();
            String b = this.b.b();
            LoggerProxy.d("AuthClient", "pid=" + i);
            LoggerProxy.d("AuthClient", "key=" + j);
            LoggerProxy.d("AuthClient", "ak=" + e);
            LoggerProxy.d("AuthClient", "sk=" + f);
            e eVar = new e();
            eVar.b(i);
            eVar.c(e);
            eVar.d(f);
            eVar.a(b);
            return (e.a) a.this.b.a(eVar);
        }
    }

    public static a a() {
        if (f11122a == null) {
            synchronized (a.class) {
                if (f11122a == null) {
                    f11122a = new a();
                }
            }
        }
        return f11122a;
    }

    public void b() {
        com.baidu.tts.k.c<e, e.a> cVar = this.b;
        if (cVar != null) {
            cVar.a();
        }
        com.baidu.tts.k.c<d, d.a> cVar2 = this.c;
        if (cVar2 != null) {
            cVar2.a();
        }
    }

    public AuthInfo a(m mVar, j jVar) {
        com.baidu.tts.m.b a2 = jVar.a();
        AuthInfo authInfo = new AuthInfo();
        authInfo.setTtsEnum(mVar);
        int i = AnonymousClass3.f11125a[mVar.ordinal()];
        if (i == 1) {
            authInfo.setOnlineResult(a(a2.a()));
            return authInfo;
        } else if (i != 2) {
            return i != 3 ? authInfo : a(a2);
        } else {
            authInfo.setOfflineResult(a(a2.b()));
            return authInfo;
        }
    }

    public e.a a(f.b bVar) {
        e.a aVar = new e.a();
        try {
            return (e.a) a(new b(bVar), l.DEFAULT.a());
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_AUTH_INTERRUPTED_EXCEPTION, e));
            return aVar;
        } catch (CancellationException e2) {
            aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_AUTH_CANCELLATION_EXCEPTION, e2));
            return aVar;
        } catch (ExecutionException e3) {
            aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_AUTH_EXECUTION_EXCEPTION, e3.getCause()));
            return aVar;
        } catch (TimeoutException e4) {
            aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_AUTH_TIMEOUT_EXCEPTION, e4));
            return aVar;
        }
    }

    public d.a a(e.a aVar) {
        d.a aVar2 = new d.a();
        try {
            return (d.a) a(new CallableC0080a(aVar), l.DEFAULT.a());
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            aVar2.a(com.baidu.tts.h.a.c.a().a(n.OFFLINE_AUTH_INTERRUPTED_EXCEPTION, e));
            return aVar2;
        } catch (CancellationException e2) {
            aVar2.a(com.baidu.tts.h.a.c.a().a(n.OFFLINE_AUTH_CANCELLATION_EXCEPTION, e2));
            return aVar2;
        } catch (ExecutionException e3) {
            aVar2.a(com.baidu.tts.h.a.c.a().a(n.OFFLINE_AUTH_EXECUTION_EXCEPTION, e3.getCause()));
            return aVar2;
        } catch (TimeoutException e4) {
            aVar2.a(com.baidu.tts.h.a.c.a().a(n.OFFLINE_AUTH_TIMEOUT_EXCEPTION, e4));
            return aVar2;
        }
    }

    public AuthInfo a(final com.baidu.tts.m.b bVar) {
        LoggerProxy.d("AuthClient", "enter authMix");
        final CountDownLatch countDownLatch = new CountDownLatch(2);
        FutureTask futureTask = new FutureTask(new Callable<e.a>() { // from class: com.baidu.tts.auth.a.1
            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public e.a call() throws Exception {
                try {
                    return a.this.a(bVar.a());
                } finally {
                    countDownLatch.countDown();
                }
            }
        });
        FutureTask futureTask2 = new FutureTask(new Callable<d.a>() { // from class: com.baidu.tts.auth.a.2
            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public d.a call() throws Exception {
                try {
                    return a.this.a(bVar.b());
                } finally {
                    countDownLatch.countDown();
                }
            }
        });
        Thread thread = new Thread(futureTask);
        thread.setName("bdtts-onlineThread");
        thread.start();
        Thread thread2 = new Thread(futureTask2);
        thread2.setName("bdtts-offlineThread");
        thread2.start();
        try {
            LoggerProxy.d("AuthClient", "+ await");
            countDownLatch.await();
            LoggerProxy.d("AuthClient", "- await");
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            futureTask.cancel(true);
            futureTask2.cancel(true);
        }
        e.a aVar = new e.a();
        LoggerProxy.d("AuthClient", "+ mix online get onlineResult=" + aVar);
        try {
            aVar = (e.a) futureTask.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            futureTask.cancel(true);
            aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_AUTH_INTERRUPTED_EXCEPTION, e));
        } catch (CancellationException e2) {
            aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_AUTH_CANCELLATION_EXCEPTION, e2));
        } catch (ExecutionException e3) {
            aVar.a(com.baidu.tts.h.a.c.a().a(n.ONLINE_AUTH_EXECUTION_EXCEPTION, e3.getCause()));
        }
        LoggerProxy.d("AuthClient", "- online get");
        d.a aVar2 = new d.a();
        LoggerProxy.d("AuthClient", "+ mix offline get offlineResult=" + aVar2);
        try {
            aVar2 = (d.a) futureTask2.get();
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            futureTask2.cancel(true);
            aVar2.a(com.baidu.tts.h.a.c.a().a(n.OFFLINE_AUTH_INTERRUPTED_EXCEPTION, e4));
        } catch (CancellationException e5) {
            aVar2.a(com.baidu.tts.h.a.c.a().a(n.OFFLINE_AUTH_CANCELLATION_EXCEPTION, e5));
        } catch (ExecutionException e6) {
            aVar2.a(com.baidu.tts.h.a.c.a().a(n.OFFLINE_AUTH_EXECUTION_EXCEPTION, e6.getCause()));
        }
        LoggerProxy.d("AuthClient", "- offline get");
        AuthInfo authInfo = new AuthInfo();
        authInfo.setTtsEnum(m.MIX);
        authInfo.setOnlineResult(aVar);
        authInfo.setOfflineResult(aVar2);
        LoggerProxy.d("AuthClient", "end authMix");
        return authInfo;
    }

    private <T> T a(Callable<T> callable, long j) throws InterruptedException, ExecutionException, TimeoutException {
        return a(callable).get(j, TimeUnit.MILLISECONDS);
    }

    private <T> FutureTask<T> a(Callable<T> callable) {
        FutureTask<T> futureTask = new FutureTask<>(callable);
        Thread thread = new Thread(futureTask);
        thread.setName("bdtts-AuthClient");
        thread.start();
        return futureTask;
    }
}
