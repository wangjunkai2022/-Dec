.class public Lcom/baidu/tts/client/SpeechSynthesizeBag;
.super Ljava/lang/Object;
.source "SpeechSynthesizeBag.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/baidu/tts/tools/ResourceTools;->isTextValid(Ljava/lang/String;)Lcom/baidu/tts/f/n;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->a:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public setUtteranceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->b:Ljava/lang/String;

    return-void
.end method
