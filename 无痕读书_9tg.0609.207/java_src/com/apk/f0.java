package com.apk;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.tts.client.SpeechError;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.client.SpeechSynthesizerListener;
import com.baidu.tts.client.TtsMode;
import com.biquge.ebook.app.bean.BaiduTtsConfigBean;
import com.biquge.ebook.app.bean.RedBgImageBean;
import java.util.List;
/* compiled from: BaiduPlayerManager.java */
/* loaded from: classes8.dex */
public class f0 {

    /* renamed from: do  reason: not valid java name */
    public final e1 f1161do;

    /* renamed from: for  reason: not valid java name */
    public String f1162for;

    /* renamed from: if  reason: not valid java name */
    public final Context f1163if;

    /* renamed from: new  reason: not valid java name */
    public SpeechSynthesizer f1164new;

    /* renamed from: try  reason: not valid java name */
    public final SpeechSynthesizerListener f1165try = new Cdo();

    /* compiled from: BaiduPlayerManager.java */
    /* renamed from: com.apk.f0$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements SpeechSynthesizerListener {
        public Cdo() {
        }

        @Override // com.baidu.tts.client.SpeechSynthesizerListener
        public void onError(String str, SpeechError speechError) {
            int i = speechError.code;
            f0.this.f1161do.onError();
        }

        @Override // com.baidu.tts.client.SpeechSynthesizerListener
        public void onSpeechFinish(String str) {
            f0.this.f1161do.mo533do();
        }

        @Override // com.baidu.tts.client.SpeechSynthesizerListener
        public void onSpeechProgressChanged(String str, int i) {
            f0.this.f1161do.mo535if(str, i);
        }

        @Override // com.baidu.tts.client.SpeechSynthesizerListener
        public void onSpeechStart(String str) {
            f0.this.f1161do.onStart();
        }

        @Override // com.baidu.tts.client.SpeechSynthesizerListener
        public void onSynthesizeDataArrived(String str, byte[] bArr, int i, int i2) {
        }

        @Override // com.baidu.tts.client.SpeechSynthesizerListener
        public void onSynthesizeFinish(String str) {
        }

        @Override // com.baidu.tts.client.SpeechSynthesizerListener
        public void onSynthesizeStart(String str) {
        }
    }

    public f0(Context context, e1 e1Var) {
        String str;
        String str2;
        String str3;
        StringBuilder sb;
        String str4;
        List<BaiduTtsConfigBean.YyconfBean> yyconf;
        BaiduTtsConfigBean.YyconfBean yyconfBean;
        this.f1163if = context;
        this.f1161do = e1Var;
        if (this.f1162for == null) {
            this.f1162for = a6.m18else().m24this() + "/BaiduPlugin";
        }
        String m423for = da.m423for();
        String valueOf = String.valueOf(ze.m3174instanceof("baidu_tt_speed", 5));
        SpeechSynthesizer speechSynthesizer = SpeechSynthesizer.getInstance();
        this.f1164new = speechSynthesizer;
        speechSynthesizer.setContext(this.f1163if.getApplicationContext());
        this.f1164new.setSpeechSynthesizerListener(this.f1165try);
        BaiduTtsConfigBean baiduTtsConfigBean = Ccontinue.m379if().f713final;
        String str5 = null;
        if (baiduTtsConfigBean == null || (yyconf = baiduTtsConfigBean.getYyconf()) == null || yyconf.size() <= 0 || (yyconfBean = yyconf.get(baiduTtsConfigBean.getIndex() % yyconf.size())) == null) {
            str = "24792355";
            str2 = "Gt0FKiilHhLRrEVk8i49OAKWjnervDeT";
            str3 = "rxZOGtcROFxarcKspUEQvvaH";
        } else {
            str = yyconfBean.getYyappid();
            str2 = yyconfBean.getYyskey();
            str3 = yyconfBean.getYyapikey();
            baiduTtsConfigBean.setIndex(baiduTtsConfigBean.getIndex() + 1);
            Ccontinue m379if = Ccontinue.m379if();
            if (m379if != null) {
                m379if.f713final = baiduTtsConfigBean;
            } else {
                throw null;
            }
        }
        this.f1164new.setAppId(str);
        this.f1164new.setApiKey(str3, str2);
        this.f1164new.setParam(SpeechSynthesizer.PARAM_TTS_TEXT_MODEL_FILE, Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_text.dat"));
        SpeechSynthesizer speechSynthesizer2 = this.f1164new;
        String str6 = SpeechSynthesizer.PARAM_TTS_SPEECH_MODEL_FILE;
        if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(m423for)) {
            sb = new StringBuilder();
            sb.append(this.f1162for);
            sb.append("/");
            str4 = "bd_etts_speech_female.dat";
        } else {
            sb = new StringBuilder();
            sb.append(this.f1162for);
            sb.append("/");
            str4 = "bd_etts_speech_male.dat";
        }
        sb.append(str4);
        speechSynthesizer2.setParam(str6, sb.toString());
        this.f1164new.setParam(SpeechSynthesizer.PARAM_SPEAKER, m423for);
        this.f1164new.setParam(SpeechSynthesizer.PARAM_SPEED, valueOf);
        this.f1164new.setParam(SpeechSynthesizer.PARAM_PITCH, RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR);
        this.f1164new.setParam(SpeechSynthesizer.PARAM_VOLUME, "9");
        if (ze.m3179private("BAIDU_TTS_WIFI_OFFLINE_ON", true)) {
            this.f1164new.setParam(SpeechSynthesizer.PARAM_URL, "http://aaa.com");
            this.f1164new.setParam(SpeechSynthesizer.PARAM_MIX_MODE_TIMEOUT, "0.2");
        }
        String str7 = SpeechSynthesizer.MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI;
        if (baiduTtsConfigBean != null && TextUtils.isEmpty(baiduTtsConfigBean.getYyonline())) {
            str5 = baiduTtsConfigBean.getYyonline();
            if (!TextUtils.isEmpty(str5)) {
                str7 = "WIFI".equals(str5) ? SpeechSynthesizer.MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI : SpeechSynthesizer.MIX_MODE_HIGH_SPEED_NETWORK;
            }
        }
        if (baiduTtsConfigBean != null) {
            StringBuilder m1004import = Cgoto.m1004import(str, " && ", str2, " && ", str3);
            m1004import.append(" && ");
            m1004import.append(str5);
            baiduTtsConfigBean.setTagStr(m1004import.toString());
        }
        this.f1164new.setParam(SpeechSynthesizer.PARAM_MIX_MODE, str7);
        this.f1164new.setParam(SpeechSynthesizer.PARAM_AUDIO_ENCODE, SpeechSynthesizer.AUDIO_ENCODE_AMR);
        this.f1164new.setParam(SpeechSynthesizer.PARAM_AUDIO_RATE, SpeechSynthesizer.AUDIO_BITRATE_AMR_12K65);
        try {
            this.f1164new.initTts(TtsMode.MIX);
            m692do(m423for);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m692do(String str) {
        this.f1164new.setParam(SpeechSynthesizer.PARAM_SPEAKER, str);
        String m998final = Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_speech_male.dat");
        if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(str)) {
            m998final = Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_common_speech_f7_mand_eng_high_am-mix_v3.0.0_20170512.dat");
        } else if ("1".equals(str)) {
            m998final = Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_common_speech_m15_mand_eng_high_am-mix_v3.0.0_20170505.dat");
        } else if ("3".equals(str)) {
            m998final = Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_common_speech_yyjw_mand_eng_high_am-mix_v3.0.0_20170512.dat");
        } else if (RedBgImageBean.RED_BG_TYPE_COLOR.equals(str)) {
            m998final = Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_common_speech_as_mand_eng_high_am_v3.0.0_20170516.dat");
        }
        if (!Cgoto.m1024volatile(m998final)) {
            if (!"1".equals(str) && !"3".equals(str)) {
                m998final = Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_speech_female.dat");
            } else {
                m998final = Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_speech_male.dat");
            }
        }
        this.f1164new.loadModel(m998final, Cgoto.m998final(new StringBuilder(), this.f1162for, "/", "bd_etts_text.dat"));
    }
}
