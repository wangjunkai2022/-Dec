package com.qq.e.comm.managers.plugin;

import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.umeng.analytics.pro.ak;
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f11539a = {SpeechSynthesizer.REQUEST_DNS_OFF, "1", "2", "3", RedBgImageBean.RED_BG_TYPE_COLOR, RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR, RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE, "7", "8", "9", "a", "b", ak.aF, "d", "e", "f"};

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i : bArr) {
            if (i < 0) {
                i += 256;
            }
            stringBuffer.append(f11539a[i / 16] + f11539a[i % 16]);
        }
        return stringBuffer.toString();
    }
}
