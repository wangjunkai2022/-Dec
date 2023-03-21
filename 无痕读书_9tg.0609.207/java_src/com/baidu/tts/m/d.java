package com.baidu.tts.m;

import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.RedBgImageBean;
/* compiled from: BaseSynthesizerParams.java */
/* loaded from: classes8.dex */
public class d<T> extends com.baidu.tts.n.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public String f11247a = RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR;
    public String b = RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR;
    public String c = RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR;
    public String d = com.baidu.tts.f.h.ZH.a();
    public com.baidu.tts.f.d e = com.baidu.tts.f.d.UTF8;
    public String f = SpeechSynthesizer.REQUEST_DNS_OFF;

    public String A() {
        return this.d;
    }

    public String B() {
        return this.f;
    }

    public long C() {
        try {
            return Long.parseLong(this.f);
        } catch (Exception unused) {
            return 0L;
        }
    }

    public String D() {
        return this.f11247a;
    }

    public String E() {
        return this.b;
    }

    public String F() {
        return this.c;
    }

    public void a(com.baidu.tts.f.d dVar) {
        this.e = dVar;
    }

    public void p(String str) {
        this.d = str;
    }

    public void q(String str) {
        this.f = str;
    }

    public void r(String str) {
        this.f11247a = str;
    }

    public void s(String str) {
        this.b = str;
    }

    public void t(String str) {
        this.c = str;
    }

    public String y() {
        return this.e.a();
    }

    public String z() {
        return this.e.b();
    }
}
