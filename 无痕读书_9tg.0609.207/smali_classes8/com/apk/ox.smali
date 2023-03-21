.class public Lcom/apk/ox;
.super Ljava/lang/Object;
.source "StringConvert.java"

# interfaces
.implements Lcom/apk/nx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/nx<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/ox;->do(Lcom/apk/ch0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/apk/ch0;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/apk/dh0;->finally()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
