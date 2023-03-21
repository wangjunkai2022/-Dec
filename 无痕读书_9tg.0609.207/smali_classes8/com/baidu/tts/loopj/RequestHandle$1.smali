.class public Lcom/baidu/tts/loopj/RequestHandle$1;
.super Ljava/lang/Object;
.source "RequestHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/RequestHandle;->cancel(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/baidu/tts/loopj/RequestHandle;

.field public final synthetic val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

.field public final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/RequestHandle;Lcom/baidu/tts/loopj/AsyncHttpRequest;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->this$0:Lcom/baidu/tts/loopj/RequestHandle;

    iput-object p2, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

    iput-boolean p3, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

    iget-boolean v1, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancel(Z)Z

    return-void
.end method
