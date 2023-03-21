.class public Lcom/apk/f0$do;
.super Ljava/lang/Object;
.source "BaiduPlayerManager.java"

# interfaces
.implements Lcom/baidu/tts/client/SpeechSynthesizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/f0;


# direct methods
.method public constructor <init>(Lcom/apk/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f0$do;->do:Lcom/apk/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/baidu/tts/client/SpeechError;)V
    .locals 0

    .line 1
    iget p1, p2, Lcom/baidu/tts/client/SpeechError;->code:I

    .line 2
    iget-object p1, p0, Lcom/apk/f0$do;->do:Lcom/apk/f0;

    .line 3
    iget-object p1, p1, Lcom/apk/f0;->do:Lcom/apk/e1;

    .line 4
    invoke-interface {p1}, Lcom/apk/e1;->onError()V

    return-void
.end method

.method public onSpeechFinish(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/f0$do;->do:Lcom/apk/f0;

    .line 2
    iget-object p1, p1, Lcom/apk/f0;->do:Lcom/apk/e1;

    .line 3
    invoke-interface {p1}, Lcom/apk/e1;->do()V

    return-void
.end method

.method public onSpeechProgressChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f0$do;->do:Lcom/apk/f0;

    .line 2
    iget-object v0, v0, Lcom/apk/f0;->do:Lcom/apk/e1;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/apk/e1;->if(Ljava/lang/String;I)V

    return-void
.end method

.method public onSpeechStart(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/f0$do;->do:Lcom/apk/f0;

    .line 2
    iget-object p1, p1, Lcom/apk/f0;->do:Lcom/apk/e1;

    .line 3
    invoke-interface {p1}, Lcom/apk/e1;->onStart()V

    return-void
.end method

.method public onSynthesizeDataArrived(Ljava/lang/String;[BII)V
    .locals 0

    return-void
.end method

.method public onSynthesizeFinish(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSynthesizeStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
