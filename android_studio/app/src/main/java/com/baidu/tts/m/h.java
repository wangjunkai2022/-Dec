package com.baidu.tts.m;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.f.k;

/* compiled from: ResponseBag.java */
/* loaded from: classes8.dex */
public class h extends com.baidu.tts.n.a<h> {

    /* renamed from: a  reason: collision with root package name */
    public int f11251a;
    public com.baidu.tts.f.e b;
    public int c;
    public int d;
    public String e;
    public int f;
    public int g;
    public byte[] h;
    public com.baidu.tts.f.a i;
    public i j;
    public TtsError k;
    public k l = k.HZ16K;

    public int a() {
        return this.d;
    }

    public int b() {
        return this.f;
    }

    public void c(int i) {
        this.f11251a = i;
    }

    public void d(int i) {
        this.g = i;
    }

    public int e() {
        return this.c;
    }

    public i f() {
        return this.j;
    }

    public TtsError g() {
        return this.k;
    }

    public com.baidu.tts.f.e h() {
        return this.b;
    }

    public k i() {
        return this.l;
    }

    public void a(int i) {
        this.d = i;
    }

    public void b(int i) {
        this.f = i;
    }

    public int c() {
        return this.g;
    }

    public byte[] d() {
        return this.h;
    }

    public void e(int i) {
        this.c = i;
    }

    public static h b(i iVar) {
        h hVar = new h();
        hVar.a(iVar);
        return hVar;
    }

    public void a(String str) {
        this.e = str;
    }

    public void a(byte[] bArr) {
        this.h = bArr;
    }

    public static h b(TtsError ttsError) {
        h hVar = new h();
        hVar.a(ttsError);
        return hVar;
    }

    public void a(com.baidu.tts.f.a aVar) {
        this.i = aVar;
    }

    public void a(i iVar) {
        this.j = iVar;
    }

    public void a(TtsError ttsError) {
        this.k = ttsError;
    }

    public void a(com.baidu.tts.f.e eVar) {
        this.b = eVar;
    }

    public void a(k kVar) {
        this.l = kVar;
    }

    public static h a(i iVar, TtsError ttsError) {
        h b = b(iVar);
        b.a(ttsError);
        return b;
    }
}
