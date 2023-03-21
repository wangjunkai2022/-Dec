package com.baidu.tts.j;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: ASafeLife.java */
/* loaded from: classes8.dex */
public abstract class a implements b {
    public final Lock d;
    public final Condition e;

    /* compiled from: ASafeLife.java */
    /* renamed from: com.baidu.tts.j.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0082a {
        void a();
    }

    public a() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.d = reentrantLock;
        this.e = reentrantLock.newCondition();
    }

    public synchronized void A() {
        h();
    }

    public void B() {
        Thread.currentThread().interrupt();
    }

    public boolean C() {
        try {
            a(null);
        } catch (InterruptedException unused) {
            B();
        }
        return !n();
    }

    public void a(InterfaceC0082a interfaceC0082a) throws InterruptedException {
        while (m()) {
            b(interfaceC0082a);
        }
    }

    @Override // com.baidu.tts.j.b
    public synchronized TtsError b() {
        return g();
    }

    @Override // com.baidu.tts.j.b
    public synchronized void c() {
        Lock lock;
        i();
        try {
            this.d.lock();
            this.e.signalAll();
            lock = this.d;
        } catch (Exception e) {
            e.printStackTrace();
            lock = this.d;
        }
        lock.unlock();
    }

    @Override // com.baidu.tts.j.b
    public synchronized void d() {
        j();
    }

    @Override // com.baidu.tts.j.b
    public synchronized void e() {
        k();
    }

    @Override // com.baidu.tts.j.b
    public synchronized void f() {
        l();
    }

    public abstract TtsError g();

    public abstract void h();

    public abstract void i();

    public abstract void j();

    public abstract void k();

    public abstract void l();

    public abstract boolean m();

    public abstract boolean n();

    public void b(InterfaceC0082a interfaceC0082a) throws InterruptedException {
        try {
            this.d.lock();
            if (interfaceC0082a != null) {
                interfaceC0082a.a();
            }
            LoggerProxy.d("ASafeLife", "before await");
            this.e.await();
            LoggerProxy.d("ASafeLife", "after await");
        } finally {
            this.d.unlock();
        }
    }
}
