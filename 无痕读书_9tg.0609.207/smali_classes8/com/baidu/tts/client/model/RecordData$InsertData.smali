.class public Lcom/baidu/tts/client/model/RecordData$InsertData;
.super Ljava/lang/Object;
.source "RecordData.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/client/model/RecordData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsertData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/client/model/RecordData;

.field public b:Lorg/json/JSONObject;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/client/model/RecordData;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->a:Lcom/baidu/tts/client/model/RecordData;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->b:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->a:Lcom/baidu/tts/client/model/RecordData;

    invoke-static {v0}, Lcom/baidu/tts/client/model/RecordData;->a(Lcom/baidu/tts/client/model/RecordData;)Lcom/baidu/tts/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/l/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->a:Lcom/baidu/tts/client/model/RecordData;

    invoke-static {v0}, Lcom/baidu/tts/client/model/RecordData;->a(Lcom/baidu/tts/client/model/RecordData;)Lcom/baidu/tts/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/tts/client/model/RecordData$InsertData;->b:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/RecordData$InsertData;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
