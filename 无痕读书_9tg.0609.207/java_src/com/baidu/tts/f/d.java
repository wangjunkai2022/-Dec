package com.baidu.tts.f;

import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.RedBgImageBean;
/* compiled from: CharSetEnum.java */
/* loaded from: classes8.dex */
public enum d {
    GB18030("gb18030", SpeechSynthesizer.REQUEST_DNS_OFF),
    BIG5("big5", "1"),
    UTF8("utf-8", "2"),
    GBK("gbk", RedBgImageBean.RED_BG_TYPE_COLOR),
    UNICODE("unicode", RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR);
    
    public final String f;
    public final String g;

    d(String str, String str2) {
        this.f = str;
        this.g = str2;
    }

    public String a() {
        return this.f;
    }

    public String b() {
        return this.g;
    }

    public static d a(String str) {
        d[] values;
        for (d dVar : values()) {
            if (dVar.b().equals(str)) {
                return dVar;
            }
        }
        return null;
    }
}
