package com.baidu.tts.b.b.b;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.e;
import com.baidu.tts.f.k;
import com.baidu.tts.m.h;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: AudioTrackPlayer.java */
/* loaded from: classes8.dex */
public class b extends com.baidu.tts.b.b.b.a {
    public final Lock b;
    public final Condition c;
    public volatile AudioTrack d;
    public a e;
    public com.baidu.tts.i.a.b f = new com.baidu.tts.i.a.b();
    public boolean g;
    public int h;
    public d i;

    /* compiled from: AudioTrackPlayer.java */
    /* loaded from: classes8.dex */
    public static class a extends com.baidu.tts.m.c<a> {

        /* renamed from: a  reason: collision with root package name */
        public int f11160a = k.HZ16K.a();
        public int b = 4;
        public int c = 2;
        public int d = 1;
        public float e = 1.0f;
        public float f = 1.0f;
        public int g = 1;
        public int h = 2;

        public int a() {
            return this.f11160a;
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }

        public int d() {
            return this.d;
        }

        public float e() {
            return this.e;
        }

        public float f() {
            return this.f;
        }

        public int g() {
            return this.g;
        }

        public int h() {
            return this.h;
        }

        public void a(int i) {
            this.f11160a = i;
        }

        public void b(float f) {
            this.f = f;
        }

        public void c(int i) {
            this.h = i;
        }

        public void a(float f) {
            this.e = f;
        }

        public void b(int i) {
            this.g = i;
        }
    }

    public b() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.b = reentrantLock;
        this.c = reentrantLock.newCondition();
        this.g = false;
    }

    private void g() {
        try {
            try {
                this.b.lock();
                this.c.signalAll();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.b.unlock();
        }
    }

    private int h() {
        return (this.e.a() * 2) / this.e.j();
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public void a(com.baidu.tts.b.b.a aVar) {
        this.f11159a = aVar;
    }

    @Override // com.baidu.tts.b.b.b.c
    public int b(int i) {
        try {
            if (this.d == null) {
                return -2;
            }
            LoggerProxy.d("AudioTrackPlayer", "sampleRate:" + i + " mAudioTrack sampleRate:" + this.d.getSampleRate());
            if (i != this.d.getSampleRate()) {
                this.e.i();
                int b = this.e.b();
                int c = this.e.c();
                int d = this.e.d();
                int g = this.e.g();
                int h = this.e.h();
                int a2 = a(i, b, c);
                if (this.d.getState() == 1) {
                    this.d.release();
                }
                this.d = new AudioTrack(new AudioAttributes.Builder().setUsage(g).setContentType(h).build(), new AudioFormat.Builder().setSampleRate(i).setEncoding(c).setChannelMask(b).build(), a2, d, 0);
                this.d.setStereoVolume(this.e.e(), this.e.f());
                this.d.play();
                return 0;
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public void c() {
        try {
            this.g = true;
            if (this.d != null) {
                this.d.pause();
            }
            if (this.i != null) {
                this.i.a();
                this.i = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public void d() {
        try {
            this.g = false;
            if (this.d != null) {
                this.d.play();
            }
            g();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public void e() {
        try {
            if (this.g) {
                this.g = false;
                g();
            }
            if (this.d != null) {
                this.d.pause();
                this.d.flush();
                this.d.stop();
            }
            if (this.i != null) {
                this.i.a();
                this.i = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public TtsError f() {
        e();
        try {
            if (this.d != null) {
                this.d.release();
            }
            this.d = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public <AudioTrackPlayerParams> void a(AudioTrackPlayerParams audiotrackplayerparams) {
        this.e = (a) audiotrackplayerparams;
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public TtsError a() {
        int a2 = this.e.a();
        int b = this.e.b();
        int c = this.e.c();
        this.e.i();
        int d = this.e.d();
        int g = this.e.g();
        int h = this.e.h();
        this.d = new AudioTrack(new AudioAttributes.Builder().setUsage(g).setContentType(h).build(), new AudioFormat.Builder().setSampleRate(a2).setEncoding(c).setChannelMask(b).build(), a(a2, b, c), d, 0);
        this.d.setStereoVolume(this.e.e(), this.e.f());
        return null;
    }

    private void d(h hVar) {
        com.baidu.tts.b.b.a aVar = this.f11159a;
        if (aVar != null) {
            aVar.a(hVar);
        }
    }

    private void f(h hVar) {
        com.baidu.tts.b.b.a aVar = this.f11159a;
        if (aVar != null) {
            aVar.c(hVar);
        }
    }

    private void c(h hVar) {
        this.f.b();
        f(hVar);
    }

    private int c(int i) {
        if (i > this.h) {
            this.h = i;
        }
        return this.h;
    }

    private void e(h hVar) {
        com.baidu.tts.b.b.a aVar = this.f11159a;
        if (aVar != null) {
            aVar.b(hVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0027 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int a(int r5, int r6, int r7) {
        /*
            r4 = this;
            int r5 = android.media.AudioTrack.getMinBufferSize(r5, r6, r7)
            r0 = 2
            int r5 = r5 * 2
            r1 = 3
            r2 = 1
            if (r6 == r2) goto L1d
            if (r6 == r0) goto L1d
            if (r6 == r1) goto L1b
            r3 = 4
            if (r6 == r3) goto L1d
            r3 = 12
            if (r6 == r3) goto L1b
            int r6 = java.lang.Integer.bitCount(r6)
            goto L1e
        L1b:
            r6 = 2
            goto L1e
        L1d:
            r6 = 1
        L1e:
            if (r7 != r1) goto L21
            r0 = 1
        L21:
            int r6 = r6 * r0
            int r6 = r5 % r6
            if (r6 != 0) goto L29
            if (r5 >= r2) goto L2b
        L29:
            r5 = 5120(0x1400, float:7.175E-42)
        L2b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.b.b.b.b.a(int, int, int):int");
    }

    @Override // com.baidu.tts.b.b.b.c
    public int a(int i) {
        LoggerProxy.d("AudioTrackPlayer", "setAudioStreamType:" + i);
        if (this.d != null) {
            return -2;
        }
        synchronized (this.d) {
            try {
                if (i != this.e.i()) {
                    int a2 = this.e.a();
                    int b = this.e.b();
                    int c = this.e.c();
                    int d = this.e.d();
                    int a3 = a(a2, b, c);
                    if (this.d.getState() == 1) {
                        this.d.release();
                    }
                    this.d = new AudioTrack(i, a2, b, c, a3, d);
                    this.e.d(i);
                    this.d.setStereoVolume(this.e.e(), this.e.f());
                    this.d.play();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public void b() {
        try {
            if (this.d != null) {
                this.d.play();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b(h hVar) {
        this.f.a(h());
        this.f.a();
        this.h = 0;
        d(hVar);
    }

    @Override // com.baidu.tts.b.b.b.c
    public int a(int i, int i2) {
        LoggerProxy.d("AudioTrackPlayer", " setAudioAttributes   mUsage:" + i + " mContentType:" + i2);
        if (this.d == null) {
            return -2;
        }
        synchronized (this.d) {
            try {
                try {
                    if (i != this.e.g() || i2 != this.e.h()) {
                        int a2 = this.e.a();
                        int b = this.e.b();
                        int c = this.e.c();
                        int d = this.e.d();
                        int a3 = a(a2, b, c);
                        if (this.d.getState() == 1) {
                            this.d.release();
                        }
                        this.d = new AudioTrack(new AudioAttributes.Builder().setUsage(i).setContentType(i2).build(), new AudioFormat.Builder().setSampleRate(a2).setEncoding(c).setChannelMask(b).build(), a3, d, 0);
                        this.e.b(i);
                        this.e.c(i2);
                        this.d.setStereoVolume(this.e.e(), this.e.f());
                        this.d.play();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return -2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return 0;
    }

    @Override // com.baidu.tts.b.b.b.c
    public int a(float f, float f2) {
        int stereoVolume = this.d.setStereoVolume(f, f2);
        this.e.a(f);
        this.e.b(f2);
        return stereoVolume;
    }

    @Override // com.baidu.tts.b.b.b.a, com.baidu.tts.b.b.b.c
    public TtsError a(h hVar) {
        Lock lock;
        synchronized (this.d) {
            LoggerProxy.d("AudioTrackPlayer", "enter put");
            if (hVar != null) {
                e h = hVar.h();
                if (h == e.SYN_START) {
                    this.d.setPositionNotificationPeriod(0);
                    b(hVar);
                }
                if (h == e.SYN_DATA) {
                    int a2 = hVar.i().a();
                    if (a2 != this.d.getSampleRate()) {
                        b(a2);
                    }
                    this.f.c(hVar.c());
                }
                byte[] d = hVar.d();
                if (d != null) {
                    this.f.b(d.length);
                }
                while (this.f.hasNext()) {
                    com.baidu.tts.i.a.a next = this.f.next();
                    int a3 = next.a();
                    int b = next.b();
                    int i = 0;
                    while (i < b && this.d.getPlayState() != 1 && d != null) {
                        int i2 = b - i;
                        LoggerProxy.d("AudioTrackPlayer", "before write");
                        int i3 = i + a3;
                        if (d.b()) {
                            if (this.i == null) {
                                this.i = new d(System.currentTimeMillis());
                            }
                            d dVar = this.i;
                            if (dVar != null) {
                                dVar.a(d, i3, i2);
                            }
                        }
                        int write = this.d.write(d, i3, i2);
                        LoggerProxy.d("AudioTrackPlayer", "writtenbytes=" + write + "--offset=" + i + "--dataLength=" + b);
                        if (write < 0) {
                            return null;
                        }
                        i += write;
                        while (this.g) {
                            try {
                                this.b.lock();
                                LoggerProxy.d("AudioTrackPlayer", "await before" + System.currentTimeMillis());
                                this.c.await();
                                LoggerProxy.d("AudioTrackPlayer", "await after" + System.currentTimeMillis());
                                lock = this.b;
                            } catch (Exception e) {
                                e.printStackTrace();
                                lock = this.b;
                            }
                            lock.unlock();
                        }
                    }
                    if (this.d.getPlayState() == 1) {
                        return null;
                    }
                    if (next.c()) {
                        int c = hVar.c();
                        float d2 = next.d();
                        int round = Math.round(c * d2);
                        int c2 = c(round);
                        LoggerProxy.d("AudioTrackPlayer", "percent=" + d2 + "--currentProgress=" + round + "--progress=" + c2);
                        h G = hVar.G();
                        G.d(c2);
                        e(G);
                    }
                }
                if (h == e.SYN_FINISH) {
                    int d3 = this.f.d();
                    h G2 = hVar.G();
                    G2.d(d3);
                    e(G2);
                    c(hVar);
                }
            } else {
                LoggerProxy.d("AudioTrackPlayer", "put responseBag=null");
            }
            LoggerProxy.d("AudioTrackPlayer", "end put");
            return null;
        }
    }
}
