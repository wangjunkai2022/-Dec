.class public Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

.field public final synthetic val$headers:[Lorg/apache/http/Header;

.field public final synthetic val$responseString:Ljava/lang/String;

.field public final synthetic val$statusCode:I

.field public final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    iput-object p2, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$responseString:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->val$responseString:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;->parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    new-instance v2, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$1;-><init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "BaseJsonHttpRH"

    const-string v3, "parseResponse thrown an problem"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;->this$0:Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler;

    new-instance v1, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$2;

    invoke-direct {v1, p0}, Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2$2;-><init>(Lcom/baidu/tts/loopj/BaseJsonHttpResponseHandler$2;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
