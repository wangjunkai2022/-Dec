.class public Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;
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

.field public final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->access$000(Lcom/baidu/tts/loopj/JsonHttpResponseHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget v3, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v2, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget v3, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v1, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v1, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v2, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget v3, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v1, v1, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v1, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->access$000(Lcom/baidu/tts/loopj/JsonHttpResponseHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v1, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Response cannot be parsed as JSON data"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v1, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;

    iget-object v2, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->this$0:Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    iget v3, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, v0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Unexpected response type "

    invoke-static {v5}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
