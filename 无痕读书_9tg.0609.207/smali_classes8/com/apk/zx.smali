.class public Lcom/apk/zx;
.super Ljava/lang/Exception;
.source "CacheException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static do(Ljava/lang/String;)Lcom/apk/zx;
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/zx;

    const-string v1, "the http response code is 304, but the cache with cacheKey = "

    const-string v2, " is null or expired!"

    invoke-static {v1, p0, v2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apk/zx;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
