.class public Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/loopj/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWrapper"
.end annotation


# instance fields
.field public final autoClose:Z

.field public final contentType:Ljava/lang/String;

.field public final inputStream:Ljava/io/InputStream;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->autoClose:Z

    return-void
.end method

.method public static newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    if-nez p2, :cond_0

    const-string p2, "application/octet-stream"

    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
