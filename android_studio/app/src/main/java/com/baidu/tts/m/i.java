package com.baidu.tts.m;

import android.text.TextUtils;
import com.baidu.tts.client.SpeechSynthesizer;
import java.io.UnsupportedEncodingException;

/* compiled from: TextParams.java */
/* loaded from: classes8.dex */
public class i extends com.baidu.tts.n.a<i> {

    /* renamed from: a  reason: collision with root package name */
    public String f11252a;
    public String b;
    public String c = SpeechSynthesizer.REQUEST_DNS_OFF;
    public com.baidu.tts.f.i d;
    public String e;

    public i(String str, String str2) {
        b(str);
        d(str2);
    }

    public void a() {
        if (TextUtils.isEmpty(this.e)) {
            return;
        }
        this.f11252a = this.e + this.f11252a;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.f11252a;
    }

    public String d() {
        return this.b;
    }

    public byte[] e() {
        try {
            return this.f11252a.getBytes(this.b);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String f() {
        return this.c;
    }

    public com.baidu.tts.f.i g() {
        return this.d;
    }

    public void b(String str) {
        this.f11252a = str;
    }

    public void c(String str) {
        this.b = str;
    }

    public void d(String str) {
        if (str == null) {
            str = SpeechSynthesizer.REQUEST_DNS_OFF;
        }
        this.c = str;
    }

    public void a(String str) {
        this.e = str;
    }

    public void a(com.baidu.tts.f.i iVar) {
        this.d = iVar;
    }
}
