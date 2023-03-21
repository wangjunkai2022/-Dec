package com.baidu.tts.f;

import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.RedBgImageBean;
/* compiled from: AudioEncoderFormat.java */
/* loaded from: classes8.dex */
public enum b {
    BV(SpeechSynthesizer.REQUEST_DNS_OFF) { // from class: com.baidu.tts.f.b.1
        @Override // com.baidu.tts.f.b
        public c[] b() {
            return c.c();
        }
    },
    AMR("1") { // from class: com.baidu.tts.f.b.2
        @Override // com.baidu.tts.f.b
        public c[] b() {
            return c.d();
        }
    },
    OPUS("2") { // from class: com.baidu.tts.f.b.3
        @Override // com.baidu.tts.f.b
        public c[] b() {
            return c.e();
        }
    },
    MP3("3") { // from class: com.baidu.tts.f.b.4
        @Override // com.baidu.tts.f.b
        public c[] b() {
            return c.f();
        }
    },
    PCM(RedBgImageBean.RED_BG_TYPE_COLOR) { // from class: com.baidu.tts.f.b.5
        @Override // com.baidu.tts.f.b
        public c[] b() {
            return c.g();
        }
    };
    
    public final String f;

    public String a() {
        return this.f;
    }

    public abstract c[] b();

    b(String str) {
        this.f = str;
    }

    public static b a(String str) {
        b[] values;
        for (b bVar : values()) {
            if (bVar.a().equals(str)) {
                return bVar;
            }
        }
        return null;
    }
}
