package com.baidu.tts.f;

import androidx.core.app.NotificationCompat;
import androidx.core.app.Person;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.umeng.analytics.pro.ak;
import org.litepal.parser.LitePalParser;
/* compiled from: KeyEnum.java */
/* loaded from: classes8.dex */
public enum g {
    STATE(null, "state", null),
    CODE(null, PluginConstants.KEY_ERROR_CODE, null),
    DATA(null, "data", null),
    IVERSION(null, "iversion", null),
    URL("url", "url", null),
    MD5(null, "md5", null),
    LENGTH(null, "length", null),
    ABS_PATH(null, "absPath", null),
    ID("id", "id", null),
    GENDER(null, "gender", null),
    DOMAIN(null, "domain", null),
    QUALITY(null, "quality", null),
    DATA_COUNT(null, "data_count", null),
    DATA_LIST(null, "data_list", null),
    NAME(null, "name", null),
    VERSION_MIN(null, "version_min", null),
    VERSION_MAX(null, "version_max", null),
    TEXT_DATA_ID(null, "text_data_id", null),
    SPEECH_DATA_ID(null, "speech_data_id", null),
    FUNCTION("func", "function", ""),
    MODELSINFO("modelsinfo", "modelsinfo", ""),
    ERROR_NUMBER("err_no", "errorNumber", ""),
    ERROR_MESSAGE("err_msg", "errorMessage", ""),
    MIX_MODE(null, "mixMode", null),
    NOTIFICATION_COUNT_PER_SECOND("ncps", "notificationCountPerSecond", ""),
    PERCENT("pct", "percent", ""),
    APP_CODE("ac", "appCode", ""),
    PACKAGE_NAME("pn", "packageName", "app_name"),
    PLATFORM("", "platform", ""),
    SPEED("spd", "speed", ""),
    VOLUME("vol", "volume", ""),
    PITCH("pit", "pitch", ""),
    LANGUAGE("lan", ak.N, ""),
    TEXT_ENCODE("cod", "textEncode", ""),
    STREAM_TYPE("st", "streamType", ""),
    AUDIO_ENCODE("aue", "audioEncode", ""),
    BITRATE("rate", "audioRate", ""),
    SPEAKER("per", "speaker", ""),
    STYLE("sty", "style", ""),
    BACKGROUND("bcg", NotificationCompat.WearableExtender.KEY_BACKGROUND, ""),
    PRODUCT_ID("pdt", "productId", ""),
    TEXT_DAT_PATH("tdp", "textDatPath", ""),
    SPEECH_DAT_PATH("sdp", "speechDatPath", ""),
    TTS_LICENSE_FILE_PATH("tlfp", "ttsLicenseFilePath", ""),
    CUSTOM_SYNTH("cs", "custom_synth", ""),
    OPEN_XML("xml", "open_xml", ""),
    TTS_VOCODER_OPTIMIZATION("tvo", "ttsVocoderOptimzation", ""),
    SAMPLE_RATE("sr", "sampleRate", ""),
    SERIAL_NUMBER("sn", "serialNumber", ""),
    INDEX("idx", "index", ""),
    TEXT("tex", "text", ""),
    CTP("ctp", "clientPath", ""),
    CUID("cuid", "deviceId", "wise_cuid"),
    VERSION("ver", LitePalParser.NODE_VERSION, "sdkversion"),
    NUMBER("num", "number", ""),
    ENGINE("en", "engine", ""),
    TERRITORY("ter", "territory", ""),
    PUNCTUATION("puc", "punctuation", ""),
    CONTEXT("ctx", "context", ""),
    API_KEY("", "apiKey", ""),
    SECRET_KEY("", "secretKey", ""),
    TOKEN("tok", "token", ""),
    SPEC("spec", "spec", ""),
    KEY(Person.KEY_KEY, Person.KEY_KEY, ""),
    PROXY_HOST("ph", "proxyHost", ""),
    PROXY_PORT("pp", "proxyPort", ""),
    REQUEST_PROTOCOL("rp", "requestProtocol", ""),
    REQUEST_ENABLE_DNS("dns", "dns", ""),
    SIGN("sign", "", "appidmd5"),
    APPNAME("app", "", "app_package_name"),
    SELFDEF("selfDef", "", ""),
    STA("sta", "", ""),
    GETLICENSE_ERRNO("errno", "", ""),
    BILINGUAL_MODE("bmode", "bilingualmode", ""),
    MIX_ONLINE_REQUEST_TIMEOUT(null, "mix_online_request_timeout", null),
    RESPONSE_CHANNEL("channel", "channel", ""),
    RESPONSE_SAMPLE_RATE("samplerate", "samplerate", ""),
    AUDIO_CTRL("audio_ctrl", "audio_ctrl", ""),
    TEXT_CTRL("text_ctrl", "text_ctrl", "");
    
    public final String aB;
    public final String aC;
    public final String aD;

    g(String str, String str2, String str3) {
        this.aB = str;
        this.aC = str2;
        this.aD = str3;
    }

    public String a() {
        return this.aB;
    }

    public String b() {
        return this.aC;
    }

    public String c() {
        return this.aD;
    }

    public static String a(g gVar) {
        if (gVar == null) {
            return null;
        }
        return gVar.name();
    }
}
