.class public Lcom/baidu/tts/a/c/b$2;
.super Ljava/lang/Object;
.source "TtsAdapter.java"

# interfaces
.implements Lcom/baidu/tts/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/b/b/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/a/c/b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/a/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayStart(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayProgressUpdate(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$2;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayFinished(Lcom/baidu/tts/m/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method
