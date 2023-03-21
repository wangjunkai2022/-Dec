package com.baidu.tts.client;

import com.baidu.tts.f.n;
import com.baidu.tts.tools.ResourceTools;
/* loaded from: classes8.dex */
public class SpeechSynthesizeBag {

    /* renamed from: a  reason: collision with root package name */
    public String f11165a;
    public String b;

    public String getText() {
        return this.f11165a;
    }

    public String getUtteranceId() {
        return this.b;
    }

    public int setText(String str) {
        n isTextValid = ResourceTools.isTextValid(str);
        if (isTextValid == null) {
            this.f11165a = str;
            return 0;
        }
        return isTextValid.b();
    }

    public void setUtteranceId(String str) {
        this.b = str;
    }
}
