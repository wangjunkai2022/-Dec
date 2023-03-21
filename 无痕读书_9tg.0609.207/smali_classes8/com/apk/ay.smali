.class public Lcom/apk/ay;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static do()Lcom/apk/ay;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/ay;

    const-string v1, "network error! http response code is 404 or 5xx!"

    invoke-direct {v0, v1}, Lcom/apk/ay;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
