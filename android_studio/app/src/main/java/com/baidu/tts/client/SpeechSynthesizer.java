package com.baidu.tts.client;

import android.content.Context;
import android.os.Bundle;
import com.apk.Cgoto;
import com.baidu.tts.a.b.a;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.auth.AuthInfo;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.b;
import com.baidu.tts.f.c;
import com.baidu.tts.f.d;
import com.baidu.tts.f.g;
import com.baidu.tts.f.h;
import com.baidu.tts.f.j;
import com.baidu.tts.f.k;
import com.baidu.tts.f.l;
import com.baidu.tts.f.n;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.StringTool;
import java.util.List;

/* loaded from: classes8.dex */
public class SpeechSynthesizer {
    public static final int MAX_LIST_SIZE = 100;
    public static final int MAX_QUEUE_SIZE = 15000;
    public static final String REQUEST_DNS_OFF = "0";
    public static final String REQUEST_DNS_ON = "1";
    public static final String REQUEST_PROTOCOL_HTTP = "http";
    public static final String REQUEST_PROTOCOL_HTTPS = "https";
    public static final String VersionName = "2.5.5.109";
    public static final String VersionName_CODE = "2.5.5.109.3";
    public a b = new a();
    public static final int ERROR_QUEUE_IS_FULL = n.TTS_QUEUE_IS_FULL.b();
    public static final int ERROR_LIST_IS_TOO_LONG = n.TTS_LIST_IS_TOO_LONG.b();
    public static final int ERROR_TEXT_IS_EMPTY = n.TEXT_IS_EMPTY.b();
    public static final int ERROR_TEXT_IS_TOO_LONG = n.TEXT_IS_TOO_LONG.b();
    public static final int ERROR_TEXT_ENCODE_IS_WRONG = n.TEXT_ENCODE_IS_WRONG.b();
    public static final int ERROR_APP_ID_IS_INVALID = n.TTS_APP_ID_IS_INVALID.b();
    public static final String PARAM_REQUEST_PROTOCOL = g.a(g.REQUEST_PROTOCOL);
    public static final String PARAM_REQUEST_ENABLE_DNS = g.a(g.REQUEST_ENABLE_DNS);
    public static final String PARAM_PROXY_HOST = g.a(g.PROXY_HOST);
    public static final String PARAM_PROXY_PORT = g.a(g.PROXY_PORT);
    public static final String PARAM_URL = g.a(g.URL);
    public static final String PARAM_AUDIO_CTRL = g.a(g.AUDIO_CTRL);
    public static final String PARAM_TEXT_CTRL = g.a(g.TEXT_CTRL);
    public static final String PARAM_SPEED = g.a(g.SPEED);
    public static final String PARAM_PITCH = g.a(g.PITCH);
    public static final String PARAM_VOLUME = g.a(g.VOLUME);
    public static final String PARAM_SPEC = g.a(g.SPEC);
    public static final String PARAM_TTS_TEXT_MODEL_FILE = g.a(g.TEXT_DAT_PATH);
    public static final String PARAM_TTS_SPEECH_MODEL_FILE = g.a(g.SPEECH_DAT_PATH);
    public static final String PARAM_TTS_LICENCE_FILE = g.a(g.TTS_LICENSE_FILE_PATH);
    public static final String PARAM_VOCODER_OPTIM_LEVEL = g.a(g.TTS_VOCODER_OPTIMIZATION);
    public static final String PARAM_CUSTOM_SYNTH = g.a(g.CUSTOM_SYNTH);
    public static final String PARAM_OPEN_XML = g.a(g.OPEN_XML);
    public static final String PARAM_BILINGUAL_MODE = g.a(g.BILINGUAL_MODE);
    public static final String PARAM_PRODUCT_ID = g.a(g.PRODUCT_ID);
    public static final String PARAM_KEY = g.a(g.KEY);
    public static final String PARAM_LANGUAGE = g.a(g.LANGUAGE);
    public static final String PARAM_AUDIO_ENCODE = g.a(g.AUDIO_ENCODE);
    public static final String PARAM_AUDIO_RATE = g.a(g.BITRATE);
    public static final String PARAM_SPEAKER = g.a(g.SPEAKER);
    public static final String PARAM_MIX_MODE = g.a(g.MIX_MODE);
    public static final String MIX_MODE_DEFAULT = j.DEFAULT.name();
    public static final String MIX_MODE_HIGH_SPEED_NETWORK = j.HIGH_SPEED_NETWORK.name();
    public static final String PARAM_MIX_MODE_TIMEOUT = g.a(g.MIX_ONLINE_REQUEST_TIMEOUT);
    public static final String PARAM_MIX_TIMEOUT_TWO_SECOND = l.TWO_SECOND.name();
    public static final String PARAM_MIX_TIMEOUT_THREE_SECOND = l.THREE_SECOND.name();
    public static final String PARAM_MIX_TIMEOUT_FOUR_SECOND = l.FOUR_SECOND.name();
    public static final String MIX_MODE_HIGH_SPEED_SYNTHESIZE = j.HIGH_SPEED_SYNTHESIZE.name();
    public static final String MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI = j.HIGH_SPEED_SYNTHESIZE_WIFI.name();
    public static final String LANGUAGE_ZH = h.ZH.a();
    public static final String LANGUAGE_EN = h.EN.a();
    public static final String TEXT_ENCODE_GBK = d.GB18030.b();
    public static final String TEXT_ENCODE_BIG5 = d.BIG5.b();
    public static final String TEXT_ENCODE_UTF8 = d.UTF8.b();
    public static final String AUDIO_ENCODE_BV = b.BV.a();
    public static final String AUDIO_ENCODE_AMR = b.AMR.a();
    public static final String AUDIO_ENCODE_OPUS = b.OPUS.a();
    public static final String AUDIO_ENCODE_MP3 = b.MP3.a();
    public static final String AUDIO_ENCODE_PCM = b.PCM.a();
    public static final int AUDIO_SAMPLERATE_8K = k.HZ8K.a();
    public static final int AUDIO_SAMPLERATE_16K = k.HZ16K.a();
    public static final int AUDIO_SAMPLERATE_24K = k.HZ24K.a();
    public static final int AUDIO_SAMPLERATE_48K = k.HZ48K.a();
    public static final String AUDIO_BITRATE_BV_16K = c.BV_16K.a();
    public static final String AUDIO_BITRATE_AMR_6K6 = c.AMR_6K6.a();
    public static final String AUDIO_BITRATE_AMR_8K85 = c.AMR_8K85.a();
    public static final String AUDIO_BITRATE_AMR_12K65 = c.AMR_12K65.a();
    public static final String AUDIO_BITRATE_AMR_14K25 = c.AMR_14K25.a();
    public static final String AUDIO_BITRATE_AMR_15K85 = c.AMR_15K85.a();
    public static final String AUDIO_BITRATE_AMR_18K25 = c.AMR_18K25.a();
    public static final String AUDIO_BITRATE_AMR_19K85 = c.AMR_19K85.a();
    public static final String AUDIO_BITRATE_AMR_23K05 = c.AMR_23K05.a();
    public static final String AUDIO_BITRATE_AMR_23K85 = c.AMR_23K85.a();
    public static final String AUDIO_BITRATE_OPUS_8K = c.OPUS_8K.a();
    public static final String AUDIO_BITRATE_OPUS_16K = c.OPUS_16K.a();
    public static final String AUDIO_BITRATE_OPUS_18K = c.OPUS_18K.a();
    public static final String AUDIO_BITRATE_OPUS_20K = c.OPUS_20K.a();
    public static final String AUDIO_BITRATE_OPUS_24K = c.OPUS_24K.a();
    public static final String AUDIO_BITRATE_OPUS_32K = c.OPUS_32K.a();
    public static final String AUDIO_BITRATE_PCM = c.PCM.a();

    /* renamed from: a  reason: collision with root package name */
    public static volatile SpeechSynthesizer f11166a = null;

    public static SpeechSynthesizer getInstance() {
        LoggerProxy.d("SpeechSynthesizer==", "SpeechSynthesizer getInstance versionName:2.5.5.109");
        if (f11166a == null) {
            synchronized (SpeechSynthesizer.class) {
                if (f11166a == null) {
                    f11166a = new SpeechSynthesizer();
                }
            }
        }
        return f11166a;
    }

    public AuthInfo auth(TtsMode ttsMode) {
        StringBuilder m1016super = Cgoto.m1016super("auth  ttsMode: ");
        m1016super.append(ttsMode.getMode());
        LoggerProxy.d("SpeechSynthesizer==", m1016super.toString());
        return this.b.b(ttsMode);
    }

    public int batchSpeak(List<SpeechSynthesizeBag> list) {
        if (DataTool.isListEmpty(list)) {
            return n.TTS_PARAMETER_INVALID.b();
        }
        return this.b.a(list);
    }

    public int freeCustomResource() {
        LoggerProxy.d("SpeechSynthesizer==", "freeCustomResource: ");
        return this.b.f();
    }

    public synchronized int initTts(TtsMode ttsMode) {
        TtsError a2;
        LoggerProxy.d("SpeechSynthesizer==", "VersionName: 2.5.5.109 initTts ttsMode:" + ttsMode);
        a2 = this.b.a(ttsMode);
        return a2 == null ? 0 : a2.getDetailCode();
    }

    public String libVersion() {
        return this.b.a();
    }

    public int loadCustomResource(String str) {
        LoggerProxy.d("SpeechSynthesizer==", "loadCustomResource: " + str);
        return this.b.a(str);
    }

    public int loadEnglishModel(String str, String str2) {
        return this.b.c(str, str2);
    }

    public int loadModel(String str, String str2) {
        LoggerProxy.d("SpeechSynthesizer==", "loadModel: " + str + " " + str2);
        return this.b.b(str, str2);
    }

    public synchronized int pause() {
        LoggerProxy.d("SpeechSynthesizer==", "pause");
        return this.b.b();
    }

    public synchronized int release() {
        LoggerProxy.d("SpeechSynthesizer==", "release");
        this.b.e();
        f11166a = null;
        return 0;
    }

    public synchronized int resume() {
        LoggerProxy.d("SpeechSynthesizer==", "resume");
        return this.b.c();
    }

    public int setApiKey(String str, String str2) {
        setParam(g.API_KEY.name(), str);
        setParam(g.SECRET_KEY.name(), str2);
        return 0;
    }

    public int setAppId(String str) {
        if (StringTool.isAllNumber(str)) {
            setParam(g.APP_CODE.name(), str);
            return 0;
        }
        return ERROR_APP_ID_IS_INVALID;
    }

    public int setAudioAttributes(int i, int i2) {
        LoggerProxy.d("SpeechSynthesizer==", "setAudioAttributes usage:" + i + " contentType:" + i2);
        return this.b.a(i, i2);
    }

    public int setAudioSampleRate(int i) {
        LoggerProxy.d("SpeechSynthesizer==", "setAudioSampleRate ");
        return this.b.b(i);
    }

    public int setAudioStreamType(int i) {
        LoggerProxy.d("SpeechSynthesizer==", "setAudioStreamType: " + i);
        return this.b.a(i);
    }

    public void setContext(Context context) {
        LoggerProxy.d("SpeechSynthesizer==", "setContext");
        this.b.a(context);
    }

    public void setEnableAECPlay(boolean z) {
        LoggerProxy.d("SpeechSynthesizer==", "setEnableAECPlay " + z);
        com.baidu.tts.b.b.b.d.a(z);
    }

    public int setParam(String str, String str2) {
        LoggerProxy.d("SpeechSynthesizer==", "setParam key: " + str + " value:" + str2);
        return this.b.a(str, str2);
    }

    public void setSpeechSynthesizerListener(SpeechSynthesizerListener speechSynthesizerListener) {
        LoggerProxy.d("SpeechSynthesizer==", "setSpeechSynthesizerListener");
        this.b.a(speechSynthesizerListener);
    }

    public int setStereoVolume(float f, float f2) {
        LoggerProxy.d("SpeechSynthesizer==", "setStereoVolume: " + f + " " + f2);
        return this.b.a(f, f2);
    }

    public int speak(String str) {
        return speak(str, null);
    }

    public synchronized int stop() {
        LoggerProxy.d("SpeechSynthesizer==", "stop");
        return this.b.d();
    }

    public int synthesize(String str) {
        return synthesize(str, null);
    }

    public int speak(SpeechSynthesizeBag speechSynthesizeBag) {
        try {
            return speak(speechSynthesizeBag.getText(), speechSynthesizeBag.getUtteranceId());
        } catch (Exception unused) {
            return n.TTS_PARAMETER_INVALID.b();
        }
    }

    public int synthesize(SpeechSynthesizeBag speechSynthesizeBag) {
        try {
            return synthesize(speechSynthesizeBag.getText(), speechSynthesizeBag.getUtteranceId());
        } catch (Exception unused) {
            return n.TTS_PARAMETER_INVALID.b();
        }
    }

    public int speak(String str, String str2) {
        return speak(str, str2, null);
    }

    public int synthesize(String str, String str2) {
        return synthesize(str, str2, null);
    }

    public int speak(String str, String str2, Bundle bundle) {
        LoggerProxy.d("SpeechSynthesizer==", "speak  text: " + str);
        return this.b.a(str, str2, bundle);
    }

    public int synthesize(String str, String str2, Bundle bundle) {
        LoggerProxy.d("SpeechSynthesizer==", "synthesize  text: " + str);
        return this.b.b(str, str2, bundle);
    }
}
