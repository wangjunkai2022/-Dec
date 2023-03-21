.class public Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;
.super Ljava/lang/Object;
.source "SpeechDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SpeechDecoder"

.field public static mDecodedDataListener:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SpeechDecoder"

    :try_start_0
    const-string v1, "before load gnustl_shared"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gnustl_shared"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v1, "so file gnustl_shared load fail"

    .line 3
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v1, "before load BDSpeechDecoder_V1"

    .line 4
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BDSpeechDecoder_V1"

    .line 5
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "after load BDSpeechDecoder_V1"

    .line 6
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const-string v1, "so file BDSpeechDecoder_V1 load fail"

    .line 7
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native decodeWithCallback([BLjava/lang/Object;I)I
.end method

.method public static setOnDecodedDataListener(Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->mDecodedDataListener:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;

    return-void
.end method


# virtual methods
.method public native decode([BI[S[III)I
.end method

.method public decodeWithCallback([BI)I
    .locals 0

    .line 1
    invoke-static {p1, p0, p2}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->decodeWithCallback([BLjava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public decode_audio_callback([B)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->mDecodedDataListener:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;

    invoke-interface {v0, p1}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;->onDecodedData([B)V

    return-void
.end method
