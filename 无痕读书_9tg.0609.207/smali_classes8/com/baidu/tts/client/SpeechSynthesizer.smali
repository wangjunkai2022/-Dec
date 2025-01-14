.class public Lcom/baidu/tts/client/SpeechSynthesizer;
.super Ljava/lang/Object;
.source "SpeechSynthesizer.java"


# static fields
.field public static final AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_BV_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_PCM:Ljava/lang/String;

.field public static final AUDIO_ENCODE_AMR:Ljava/lang/String;

.field public static final AUDIO_ENCODE_BV:Ljava/lang/String;

.field public static final AUDIO_ENCODE_MP3:Ljava/lang/String;

.field public static final AUDIO_ENCODE_OPUS:Ljava/lang/String;

.field public static final AUDIO_ENCODE_PCM:Ljava/lang/String;

.field public static final AUDIO_SAMPLERATE_16K:I

.field public static final AUDIO_SAMPLERATE_24K:I

.field public static final AUDIO_SAMPLERATE_48K:I

.field public static final AUDIO_SAMPLERATE_8K:I

.field public static final ERROR_APP_ID_IS_INVALID:I

.field public static final ERROR_LIST_IS_TOO_LONG:I

.field public static final ERROR_QUEUE_IS_FULL:I

.field public static final ERROR_TEXT_ENCODE_IS_WRONG:I

.field public static final ERROR_TEXT_IS_EMPTY:I

.field public static final ERROR_TEXT_IS_TOO_LONG:I

.field public static final LANGUAGE_EN:Ljava/lang/String;

.field public static final LANGUAGE_ZH:Ljava/lang/String;

.field public static final MAX_LIST_SIZE:I = 0x64

.field public static final MAX_QUEUE_SIZE:I = 0x3a98

.field public static final MIX_MODE_DEFAULT:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_SYNTHESIZE:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

.field public static final PARAM_AUDIO_CTRL:Ljava/lang/String;

.field public static final PARAM_AUDIO_ENCODE:Ljava/lang/String;

.field public static final PARAM_AUDIO_RATE:Ljava/lang/String;

.field public static final PARAM_BILINGUAL_MODE:Ljava/lang/String;

.field public static final PARAM_CUSTOM_SYNTH:Ljava/lang/String;

.field public static final PARAM_KEY:Ljava/lang/String;

.field public static final PARAM_LANGUAGE:Ljava/lang/String;

.field public static final PARAM_MIX_MODE:Ljava/lang/String;

.field public static final PARAM_MIX_MODE_TIMEOUT:Ljava/lang/String;

.field public static final PARAM_MIX_TIMEOUT_FOUR_SECOND:Ljava/lang/String;

.field public static final PARAM_MIX_TIMEOUT_THREE_SECOND:Ljava/lang/String;

.field public static final PARAM_MIX_TIMEOUT_TWO_SECOND:Ljava/lang/String;

.field public static final PARAM_OPEN_XML:Ljava/lang/String;

.field public static final PARAM_PITCH:Ljava/lang/String;

.field public static final PARAM_PRODUCT_ID:Ljava/lang/String;

.field public static final PARAM_PROXY_HOST:Ljava/lang/String;

.field public static final PARAM_PROXY_PORT:Ljava/lang/String;

.field public static final PARAM_REQUEST_ENABLE_DNS:Ljava/lang/String;

.field public static final PARAM_REQUEST_PROTOCOL:Ljava/lang/String;

.field public static final PARAM_SPEAKER:Ljava/lang/String;

.field public static final PARAM_SPEC:Ljava/lang/String;

.field public static final PARAM_SPEED:Ljava/lang/String;

.field public static final PARAM_TEXT_CTRL:Ljava/lang/String;

.field public static final PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_URL:Ljava/lang/String;

.field public static final PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

.field public static final PARAM_VOLUME:Ljava/lang/String;

.field public static final REQUEST_DNS_OFF:Ljava/lang/String; = "0"

.field public static final REQUEST_DNS_ON:Ljava/lang/String; = "1"

.field public static final REQUEST_PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field public static final REQUEST_PROTOCOL_HTTPS:Ljava/lang/String; = "https"

.field public static final TEXT_ENCODE_BIG5:Ljava/lang/String;

.field public static final TEXT_ENCODE_GBK:Ljava/lang/String;

.field public static final TEXT_ENCODE_UTF8:Ljava/lang/String;

.field public static final VersionName:Ljava/lang/String; = "2.5.5.109"

.field public static final VersionName_CODE:Ljava/lang/String; = "2.5.5.109.3"

.field public static volatile a:Lcom/baidu/tts/client/SpeechSynthesizer;


# instance fields
.field public b:Lcom/baidu/tts/a/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/n;->U:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    .line 2
    sget-object v0, Lcom/baidu/tts/f/n;->V:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    .line 3
    sget-object v0, Lcom/baidu/tts/f/n;->P:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_EMPTY:I

    .line 4
    sget-object v0, Lcom/baidu/tts/f/n;->Q:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_TOO_LONG:I

    .line 5
    sget-object v0, Lcom/baidu/tts/f/n;->R:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_ENCODE_IS_WRONG:I

    .line 6
    sget-object v0, Lcom/baidu/tts/f/n;->X:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    .line 7
    sget-object v0, Lcom/baidu/tts/f/g;->ao:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_REQUEST_PROTOCOL:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/baidu/tts/f/g;->ap:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_REQUEST_ENABLE_DNS:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/baidu/tts/f/g;->am:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PROXY_HOST:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/baidu/tts/f/g;->an:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PROXY_PORT:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/baidu/tts/f/g;->e:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_URL:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/baidu/tts/f/g;->az:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_CTRL:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/baidu/tts/f/g;->aA:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TEXT_CTRL:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/baidu/tts/f/g;->D:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/baidu/tts/f/g;->F:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PITCH:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/baidu/tts/f/g;->E:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOLUME:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/baidu/tts/f/g;->ak:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEC:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/baidu/tts/f/g;->P:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/baidu/tts/f/g;->Q:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/baidu/tts/f/g;->R:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/baidu/tts/f/g;->U:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/baidu/tts/f/g;->S:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_CUSTOM_SYNTH:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/baidu/tts/f/g;->T:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_OPEN_XML:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/baidu/tts/f/g;->av:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_BILINGUAL_MODE:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/baidu/tts/f/g;->O:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PRODUCT_ID:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/baidu/tts/f/g;->al:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_KEY:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/baidu/tts/f/g;->G:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_LANGUAGE:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/baidu/tts/f/g;->J:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_ENCODE:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/baidu/tts/f/g;->K:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_RATE:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/baidu/tts/f/g;->L:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEAKER:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/baidu/tts/f/g;->x:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_DEFAULT:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/baidu/tts/f/j;->b:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/baidu/tts/f/g;->aw:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE_TIMEOUT:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/baidu/tts/f/l;->b:Lcom/baidu/tts/f/l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_TIMEOUT_TWO_SECOND:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/baidu/tts/f/l;->c:Lcom/baidu/tts/f/l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_TIMEOUT_THREE_SECOND:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/baidu/tts/f/l;->d:Lcom/baidu/tts/f/l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_TIMEOUT_FOUR_SECOND:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/baidu/tts/f/j;->c:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/baidu/tts/f/j;->d:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/baidu/tts/f/h;->a:Lcom/baidu/tts/f/h;

    invoke-virtual {v0}, Lcom/baidu/tts/f/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_ZH:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/baidu/tts/f/h;->b:Lcom/baidu/tts/f/h;

    invoke-virtual {v0}, Lcom/baidu/tts/f/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_EN:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/baidu/tts/f/d;->a:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_GBK:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/baidu/tts/f/d;->b:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_BIG5:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_UTF8:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/baidu/tts/f/b;->a:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_BV:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/baidu/tts/f/b;->b:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_AMR:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/baidu/tts/f/b;->c:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_OPUS:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/baidu/tts/f/b;->d:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_MP3:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/baidu/tts/f/b;->e:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_PCM:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/baidu/tts/f/k;->a:Lcom/baidu/tts/f/k;

    invoke-virtual {v0}, Lcom/baidu/tts/f/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_8K:I

    .line 51
    sget-object v0, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    invoke-virtual {v0}, Lcom/baidu/tts/f/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_16K:I

    .line 52
    sget-object v0, Lcom/baidu/tts/f/k;->c:Lcom/baidu/tts/f/k;

    invoke-virtual {v0}, Lcom/baidu/tts/f/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_24K:I

    .line 53
    sget-object v0, Lcom/baidu/tts/f/k;->d:Lcom/baidu/tts/f/k;

    invoke-virtual {v0}, Lcom/baidu/tts/f/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_48K:I

    .line 54
    sget-object v0, Lcom/baidu/tts/f/c;->a:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_BV_16K:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/baidu/tts/f/c;->b:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/baidu/tts/f/c;->c:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/baidu/tts/f/c;->d:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/baidu/tts/f/c;->e:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/baidu/tts/f/c;->f:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/baidu/tts/f/c;->g:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/baidu/tts/f/c;->h:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/baidu/tts/f/c;->i:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/baidu/tts/f/c;->j:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/baidu/tts/f/c;->k:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/baidu/tts/f/c;->l:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/baidu/tts/f/c;->m:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/baidu/tts/f/c;->n:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/baidu/tts/f/c;->o:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/baidu/tts/f/c;->p:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/baidu/tts/f/c;->v:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_PCM:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/a/b/a;

    invoke-direct {v0}, Lcom/baidu/tts/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    return-void
.end method

.method public static getInstance()Lcom/baidu/tts/client/SpeechSynthesizer;
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "SpeechSynthesizer getInstance versionName:2.5.5.109"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/baidu/tts/client/SpeechSynthesizer;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-direct {v1}, Lcom/baidu/tts/client/SpeechSynthesizer;-><init>()V

    sput-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-object v0
.end method


# virtual methods
.method public auth(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/auth/AuthInfo;
    .locals 2

    const-string v0, "auth  ttsMode: "

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object p1

    return-object p1
.end method

.method public batchSpeak(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public freeCustomResource()I
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "freeCustomResource: "

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->f()I

    move-result v0

    return v0
.end method

.method public declared-synchronized initTts(Lcom/baidu/tts/client/TtsMode;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionName: 2.5.5.109 initTts ttsMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public libVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomResource(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCustomResource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loadEnglishModel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loadModel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized pause()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "pause"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->b()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->e()I

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "resume"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApiKey(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/g;->ah:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object p1, Lcom/baidu/tts/f/g;->ai:Lcom/baidu/tts/f/g;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setAppId(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isAllNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/baidu/tts/f/g;->A:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    sget p1, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    return p1
.end method

.method public setAudioAttributes(II)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioAttributes usage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " contentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->a(II)I

    move-result p1

    return p1
.end method

.method public setAudioSampleRate(I)I
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "setAudioSampleRate "

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->b(I)I

    move-result p1

    return p1
.end method

.method public setAudioStreamType(I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioStreamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(I)I

    move-result p1

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "setContext"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setEnableAECPlay(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableAECPlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/baidu/tts/b/b/b/d;->a(Z)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParam key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setSpeechSynthesizerListener(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "setSpeechSynthesizerListener"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStereoVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->a(FF)I

    move-result p1

    return p1
.end method

.method public speak(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 5
    :catch_0
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speak  text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized stop()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "stop"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthesize(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 5
    :catch_0
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public synthesize(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synthesize  text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method
