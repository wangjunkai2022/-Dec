.class public Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

.field public final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v1, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
