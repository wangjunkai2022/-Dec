.class public abstract Lcom/apk/mx;
.super Ljava/lang/Object;
.source "AbsCallback.java"

# interfaces
.implements Lcom/apk/nx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/mx<",
        "TT;>;"
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
.method public downloadProgress(Lcom/apk/hy;)V
    .locals 0

    return-void
.end method

.method public onCacheSuccess(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onError(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart(Lcom/apk/qy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "TT;+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onSuccess(Lcom/apk/iy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public uploadProgress(Lcom/apk/hy;)V
    .locals 0

    return-void
.end method
