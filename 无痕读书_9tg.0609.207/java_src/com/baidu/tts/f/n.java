package com.baidu.tts.f;

import androidx.core.app.NotificationManagerCompat;
/* compiled from: TtsErrorEnum.java */
/* loaded from: classes8.dex */
public enum n {
    ONLINE_ENGINE_AUTH_FAILURE(a.ONLINE_ENGINE_ERROR, -1, "online engine auth failure"),
    ONLINE_ENGINE_HTTP_REQUEST_FAILURE(a.ONLINE_ENGINE_ERROR, -2, "request failure"),
    ONLINE_ENGINE_CANCEL_FAILURE(a.ONLINE_ENGINE_ERROR, -3, "cancel failure"),
    ONLINE_AUTH_INTERRUPTED_EXCEPTION(a.ONLINE_ENGINE_ERROR, -4, "InterruptedException"),
    ONLINE_AUTH_EXECUTION_EXCEPTION(a.ONLINE_ENGINE_ERROR, -5, "ExecutionException"),
    ONLINE_AUTH_TIMEOUT_EXCEPTION(a.ONLINE_ENGINE_ERROR, -6, "TimeoutException"),
    ONLINE_ENGINE_REQUEST_RESULT_ERROR(a.ONLINE_ENGINE_ERROR, -7, "request result contains error message"),
    ONLINE_TOKEN_IS_NULL(a.ONLINE_ENGINE_ERROR, -8, "access token is null, please check your apikey and secretkey or product id"),
    ONLINE_ENGINE_UNINITIALIZED(a.ONLINE_ENGINE_ERROR, -9, "online engine is not initial"),
    ONLINE_ENGINE_CALL_EXCEPTION(a.ONLINE_ENGINE_ERROR, -10, "online engine call synthesize exception"),
    ONLINE_UNSUPPORTED_OPERATION(a.ONLINE_ENGINE_ERROR, -11, "this method is not supported by online mode(please use other mode)"),
    ONLINE_ENGINE_HTTP_REQUEST_PARSE_ERROR(a.ONLINE_ENGINE_ERROR, -12, "request result parse error may responsebag is null"),
    ONLINE_ENGINE_GET_INTERRUPTED(a.ONLINE_ENGINE_ERROR, -13, "online synthesize get was interrupted"),
    ONLINE_ENGINE_GET_EXECUTION_EXCEPTION(a.ONLINE_ENGINE_ERROR, -14, "online synthesize get exception"),
    ONLINE_ENGINE_GET_TIMEOUT(a.ONLINE_ENGINE_ERROR, -15, "online synthesize get was timeout"),
    ONLINE_AUTH_CANCELLATION_EXCEPTION(a.ONLINE_ENGINE_ERROR, -16, "CancellationException"),
    ONLINE_ENGINE_SERVER_IP_IS_NULL(a.ONLINE_ENGINE_ERROR, -17, "online engine server ip is null"),
    OFFLINE_ENGINE_AUTH_FAILURE(a.OFFLINE_ENGINE_ERROR, -100, "offline engine auth failure,please check you offline auth params"),
    OFFLINE_ENGINE_CANCEL_FAILURE(a.OFFLINE_ENGINE_ERROR, -101, "offline engine cancel failure"),
    OFFLINE_ENGINE_DOWNLOAD_LICENSE_FAILED(a.OFFLINE_ENGINE_ERROR, -102, "offline engine download license failure"),
    OFFLINE_ENGINE_AUTH_NULL(a.OFFLINE_ENGINE_ERROR, -103, "offline engine auth authinfo is null"),
    OFFLINE_AUTH_INTERRUPTED_EXCEPTION(a.OFFLINE_ENGINE_ERROR, -105, "InterruptedException"),
    OFFLINE_AUTH_EXECUTION_EXCEPTION(a.OFFLINE_ENGINE_ERROR, -106, "ExecutionException"),
    OFFLINE_AUTH_TIMEOUT_EXCEPTION(a.OFFLINE_ENGINE_ERROR, -107, "TimeoutException"),
    OFFLINE_ENGINE_INIT_FAILED(a.OFFLINE_ENGINE_ERROR, -108, "bdTTSEngineInit failed,please check you offline params"),
    OFFLINE_ENGINE_UNINITIALIZED(a.OFFLINE_ENGINE_ERROR, -109, "offline engine is uninitialized,please invoke initTts() method"),
    OFFLINE_ENGINE_CALL_EXCEPTION(a.OFFLINE_ENGINE_ERROR, -110, "offline engine call synthesize exception"),
    OFFLINE_ENGINE_SYNTHESIZE_ERROR(a.OFFLINE_ENGINE_ERROR, -111, "offline engine synthesize result not 0"),
    OFFLINE_ENGINE_AUTH_EXPIRED(a.OFFLINE_ENGINE_ERROR, -112, "offline engine auth verify expired,formal expired or temp expired"),
    OFFLINE_ENGINE_AUTH_PACKAGE_UNMATCH(a.OFFLINE_ENGINE_ERROR, -113, "package name is unmatch"),
    OFFLINE_ENGINE_AUTH_SIGN_UNMATCH(a.OFFLINE_ENGINE_ERROR, -114, "app sign is unmatch"),
    OFFLINE_ENGINE_AUTH_CUID_UNMATCH(a.OFFLINE_ENGINE_ERROR, -115, "devices cuid is unmatch"),
    OFFLINE_ENGINE_AUTH_PLATFORM_ERROR(a.OFFLINE_ENGINE_ERROR, -116, "platform is unmatch"),
    OFFLINE_ENGINE_AUTH_LICENSE_FILE_INVALID(a.OFFLINE_ENGINE_ERROR, -117, "license file not exist or file length is 0 (download license fail)"),
    OFFLINE_AUTH_CANCELLATION_EXCEPTION(a.ONLINE_ENGINE_ERROR, -118, "CancellationException"),
    MIX_ENGINE_AUTH_FAILURE(a.MIX_ERROR, -200, "both online and offline engine auth failue"),
    MIX_AUTH_INTERRUPTED_EXCEPTION(a.MIX_ERROR, -201, "InterruptedException"),
    MIX_AUTH_EXECUTION_EXCEPTION(a.MIX_ERROR, -202, "ExecutionException"),
    MIX_AUTH_TIMEOUT_EXCEPTION(a.MIX_ERROR, -203, "TimeoutException"),
    MIX_ENGINE_OFFLINE_INIT_FAILURE(a.MIX_ERROR, -204, "mix engine initTTS, the offline init failure"),
    MIX_AUTH_CANCELLATION_EXCEPTION(a.MIX_ERROR, -205, "CancellationException"),
    TEXT_IS_EMPTY(a.TEXT, -300, "text is null or empty double quotation marks"),
    TEXT_IS_TOO_LONG(a.TEXT, -301, "text length in gbk is more than 1024, the text is too long, cut it short than 1024"),
    TEXT_ENCODE_IS_WRONG(a.TEXT, -302, "text encode is not gbk, please use gbk text"),
    TTS_UNINITIAL(a.TTS, -400, "tts has not been initialized,invoke in a wrong state"),
    TTS_MODE_ILLEGAL(a.TTS, -401, "tts mode unset or not the spechified value"),
    TTS_QUEUE_IS_FULL(a.TTS, -402, "队列长度小于MAX_QUEUE_SIZE时才能加入合成队列"),
    TTS_LIST_IS_TOO_LONG(a.TTS, -403, "list的size小于MAX_LIST_SIZE时才有效"),
    TTS_ENGINE_STOP_FAILURE(a.TTS, -404, "引擎停止失败"),
    TTS_APP_ID_IS_INVALID(a.TTS, -405, "app id is invalid,must be less than int(11)"),
    TTS_PARAMETER_INVALID(a.TTS, -406, "arguments of the method is invalid"),
    APP_RESOURCE_IS_NULL(a.APP, -500, "context was released or persistent app value is null"),
    PLAYER_IS_NULL(a.PLAYER, -600, "player is null"),
    MODEL_PARAMS_ERROR(a.MODEL, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, "params is wrong"),
    MODEL_REQUEST_ERROR(a.MODEL, -1001, "request error"),
    MODEL_SERVER_ERROR(a.MODEL, -1002, "server error"),
    MODEL_DB_MODEL_INVALID(a.MODEL, -1003, "model item in db is invalid(fileids is empty)"),
    MODEL_DB_MODEL_FILE_PATHS_INVALID(a.MODEL, -1004, "model file in db is invalid(abspath is empty)"),
    MODEL_EXISTS(a.MODEL, -1005, "this model exists(have downloaded success ever)"),
    MODEL_BAGS_EMPTY(a.MODEL, -1006, "can't get server model info,maybe modelid invalid or request failure"),
    MODEL_FILE_BAG_EMPTY(a.MODEL, -1007, "can't get server file info,maybe fileid invalid or request failure"),
    MODEL_CHECK_EXCEPTION(a.MODEL, -1008, "CheckWork exception happened"),
    MODEL_FILE_DOWNLOAD_EXCEPTION(a.MODEL, -1009, "exception happens when file downloadwork execute"),
    TTS_ERROR_UNKNOW(a.UNKNOW, -9999, "unknow");
    
    public final a am;
    public final int an;
    public final String ao;

    /* compiled from: TtsErrorEnum.java */
    /* loaded from: classes8.dex */
    public enum a {
        MIX_ERROR,
        ONLINE_ENGINE_ERROR,
        OFFLINE_ENGINE_ERROR,
        TEXT,
        TTS,
        APP,
        PLAYER,
        MODEL,
        UNKNOW
    }

    n(a aVar, int i, String str) {
        this.am = aVar;
        this.an = i;
        this.ao = str;
    }

    public a a() {
        return this.am;
    }

    public int b() {
        return this.an;
    }

    public String c() {
        return this.ao;
    }
}
