package com.baidu.tts.f;

import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.RedBgImageBean;
/* compiled from: Bitrate.java */
/* loaded from: classes8.dex */
public enum c {
    BV_16K("BV_16K", SpeechSynthesizer.REQUEST_DNS_OFF, 16000.0d),
    AMR_6K6("AMR_6K6", SpeechSynthesizer.REQUEST_DNS_OFF, 6600.0d),
    AMR_8K85("AMR_8K85", "1", 8850.0d),
    AMR_12K65("AMR_12K65", "2", 12650.0d),
    AMR_14K25("AMR_14K25", "3", 14250.0d),
    AMR_15K85("AMR_15K85", RedBgImageBean.RED_BG_TYPE_COLOR, 15850.0d),
    AMR_18K25("AMR_18K25", RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR, 18250.0d),
    AMR_19K85("AMR_19K85", RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE, 19850.0d),
    AMR_23K05("AMR_23K05", "7", 23050.0d),
    AMR_23K85("AMR_23K85", "8", 23850.0d),
    OPUS_8K("OPUS_8K", SpeechSynthesizer.REQUEST_DNS_OFF, 8000.0d),
    OPUS_16K("OPUS_16K", "1", 16000.0d),
    OPUS_18K("OPUS_18K", "2", 18000.0d),
    OPUS_20K("OPUS_20K", "3", 20000.0d),
    OPUS_24K("OPUS_24K", RedBgImageBean.RED_BG_TYPE_COLOR, 24000.0d),
    OPUS_32K("OPUS_32K", RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR, 32000.0d),
    MP3_8K("MP3_8K", SpeechSynthesizer.REQUEST_DNS_OFF, 8000.0d),
    MP3_11K("MP3_11K", "1", 11000.0d),
    MP3_16K("MP3_16K", "2", 16000.0d),
    MP3_24K("MP3_24K", "3", 24000.0d),
    MP3_32K("MP3_32K", RedBgImageBean.RED_BG_TYPE_COLOR, 32000.0d),
    PCM("PCM", SpeechSynthesizer.REQUEST_DNS_OFF, 0.0d);
    
    public final String w;
    public final String x;
    public final double y;

    c(String str, String str2, double d) {
        this.w = str;
        this.x = str2;
        this.y = d;
    }

    public static c[] c() {
        return new c[]{BV_16K};
    }

    public static c[] d() {
        return new c[]{AMR_6K6, AMR_8K85, AMR_12K65, AMR_14K25, AMR_15K85, AMR_18K25, AMR_19K85, AMR_23K05, AMR_23K85};
    }

    public static c[] e() {
        return new c[]{OPUS_8K, OPUS_16K, OPUS_18K, OPUS_20K, OPUS_24K, OPUS_32K};
    }

    public static c[] f() {
        return new c[]{MP3_8K, MP3_11K, MP3_16K, MP3_24K, MP3_32K};
    }

    public static c[] g() {
        return new c[]{PCM};
    }

    public String a() {
        return this.x;
    }

    public double b() {
        return this.y;
    }

    public static c a(String str) {
        c[] values;
        for (c cVar : values()) {
            if (cVar.a().equals(str)) {
                return cVar;
            }
        }
        return null;
    }
}
