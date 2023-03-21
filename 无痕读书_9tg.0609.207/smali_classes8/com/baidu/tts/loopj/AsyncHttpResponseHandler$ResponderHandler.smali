.class public Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponderHandler"
.end annotation


# instance fields
.field public final mResponder:Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
