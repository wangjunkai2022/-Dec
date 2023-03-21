.class public Lcom/apk/f0;
.super Ljava/lang/Object;
.source "BaiduPlayerManager.java"


# instance fields
.field public final do:Lcom/apk/e1;

.field public for:Ljava/lang/String;

.field public final if:Landroid/content/Context;

.field public new:Lcom/baidu/tts/client/SpeechSynthesizer;

.field public final try:Lcom/baidu/tts/client/SpeechSynthesizerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/e1;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/f0$do;

    invoke-direct {v0, p0}, Lcom/apk/f0$do;-><init>(Lcom/apk/f0;)V

    iput-object v0, p0, Lcom/apk/f0;->try:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    .line 3
    iput-object p1, p0, Lcom/apk/f0;->if:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/apk/f0;->do:Lcom/apk/e1;

    .line 5
    iget-object p1, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string p2, "/"

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/a6;->this()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BaiduPlugin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/da;->for()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "baidu_tt_speed"

    .line 8
    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/baidu/tts/client/SpeechSynthesizer;->getInstance()Lcom/baidu/tts/client/SpeechSynthesizer;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    .line 11
    iget-object v2, p0, Lcom/apk/f0;->if:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setContext(Landroid/content/Context;)V

    .line 12
    iget-object v1, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    iget-object v2, p0, Lcom/apk/f0;->try:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setSpeechSynthesizerListener(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    .line 13
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/apk/continue;->final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->getYyconf()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 17
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->getIndex()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->getYyappid()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->getYyskey()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->getYyapikey()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->getIndex()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1, v7}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->setIndex(I)V

    .line 22
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 23
    iput-object v1, v7, Lcom/apk/continue;->final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    goto :goto_0

    .line 24
    :cond_1
    throw v2

    :cond_2
    const-string v5, "24792355"

    const-string v6, "Gt0FKiilHhLRrEVk8i49OAKWjnervDeT"

    const-string v4, "rxZOGtcROFxarcKspUEQvvaH"

    .line 25
    :goto_0
    iget-object v7, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v7, v5}, Lcom/baidu/tts/client/SpeechSynthesizer;->setAppId(Ljava/lang/String;)I

    .line 26
    iget-object v7, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v7, v4, v6}, Lcom/baidu/tts/client/SpeechSynthesizer;->setApiKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v7, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v8, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v11, "bd_etts_text.dat"

    invoke-static {v9, v10, p2, v11}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v7, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v8, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

    const-string v9, "0"

    .line 29
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bd_etts_speech_female.dat"

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bd_etts_speech_male.dat"

    :goto_1
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-virtual {v7, v8, p2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v7, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEAKER:Ljava/lang/String;

    invoke-virtual {p2, v7, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v7, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    invoke-virtual {p2, v7, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PITCH:Ljava/lang/String;

    const-string v7, "5"

    invoke-virtual {p2, v0, v7}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOLUME:Ljava/lang/String;

    const-string v7, "9"

    invoke-virtual {p2, v0, v7}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "BAIDU_TTS_WIFI_OFFLINE_ON"

    .line 35
    invoke-static {p2, v3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 36
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_URL:Ljava/lang/String;

    const-string v3, "http://aaa.com"

    invoke-virtual {p2, v0, v3}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE_TIMEOUT:Ljava/lang/String;

    const-string v3, "0.2"

    invoke-virtual {p2, v0, v3}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_4
    sget-object p2, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 39
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->getYyonline()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->getYyonline()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p2, "WIFI"

    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 43
    sget-object p2, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

    goto :goto_2

    .line 44
    :cond_5
    sget-object p2, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    const-string v0, " && "

    .line 45
    invoke-static {v5, v0, v6, v0, v4}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->setTagStr(Ljava/lang/String;)V

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_ENCODE:Ljava/lang/String;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_AMR:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_RATE:Ljava/lang/String;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    iget-object p2, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v0, Lcom/baidu/tts/client/TtsMode;->MIX:Lcom/baidu/tts/client/TtsMode;

    invoke-virtual {p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->initTts(Lcom/baidu/tts/client/TtsMode;)I

    .line 51
    invoke-virtual {p0, p1}, Lcom/apk/f0;->do(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catchall_0
    :goto_3
    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEAKER:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v2, "/"

    const-string v3, "bd_etts_speech_male.dat"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "3"

    const-string v5, "1"

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v6, "bd_etts_common_speech_f7_mand_eng_high_am-mix_v3.0.0_20170512.dat"

    invoke-static {v0, v1, v2, v6}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v6, "bd_etts_common_speech_m15_mand_eng_high_am-mix_v3.0.0_20170505.dat"

    invoke-static {v0, v1, v2, v6}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v6, "bd_etts_common_speech_yyjw_mand_eng_high_am-mix_v3.0.0_20170512.dat"

    invoke-static {v0, v1, v2, v6}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "4"

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v6, "bd_etts_common_speech_as_mand_eng_high_am_v3.0.0_20170516.dat"

    invoke-static {v0, v1, v2, v6}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/apk/goto;->volatile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 12
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v1, "bd_etts_speech_female.dat"

    invoke-static {p1, v0, v2, v1}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/apk/f0;->for:Ljava/lang/String;

    const-string v4, "bd_etts_text.dat"

    invoke-static {v1, v3, v2, v4}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->loadModel(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
