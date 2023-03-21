package com.baidu.tts.i.a;

import com.apk.Cgoto;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.Iterator;
/* compiled from: UtteranceSubpackager.java */
/* loaded from: classes8.dex */
public class b implements Iterator<a> {

    /* renamed from: a  reason: collision with root package name */
    public int f11231a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;

    private int e() {
        return (this.f11231a + this.b) - 1;
    }

    private int f() {
        return (this.d + this.c) - 1;
    }

    public void a(int i) {
        this.c = i;
    }

    public void b() {
    }

    public void b(int i) {
        this.b += i;
        this.f = 0;
    }

    @Override // java.util.Iterator
    /* renamed from: c */
    public a next() {
        a aVar = new a();
        int f = f();
        if (f <= e()) {
            int i = (f - this.e) + 1;
            aVar.a(this.f);
            aVar.b(i);
            int i2 = f + 1;
            this.e = i2;
            this.d = i2;
            this.f += i;
            float f2 = i2 / this.b;
            StringBuilder m1016super = Cgoto.m1016super("mCurrentProgressStartIndex=");
            m1016super.append(this.d);
            m1016super.append("--mCurrentAllUtteranceLenght=");
            m1016super.append(this.b);
            m1016super.append("--percent=");
            m1016super.append(f2);
            LoggerProxy.d("UtteranceSubpackager", m1016super.toString());
            aVar.a(f2);
            aVar.a(true);
        } else {
            int i3 = this.b - this.e;
            aVar.a(this.f);
            aVar.b(i3);
            this.e += i3;
            this.f += i3;
        }
        return aVar;
    }

    public int d() {
        return this.g;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.e < e();
    }

    @Override // java.util.Iterator
    public void remove() {
    }

    public void a() {
        this.f11231a = 0;
        this.b = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
    }

    public void c(int i) {
        this.g = i;
    }
}
