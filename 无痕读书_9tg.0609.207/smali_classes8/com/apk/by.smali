.class public Lcom/apk/by;
.super Ljava/lang/Exception;
.source "OkGoException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static do()Lcom/apk/by;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/by;

    const-string v1, "breakpoint file has expired!"

    invoke-direct {v0, v1}, Lcom/apk/by;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
