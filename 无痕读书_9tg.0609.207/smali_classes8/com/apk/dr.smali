.class public Lcom/apk/dr;
.super Lcom/apk/xq;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/xq<",
        "Lcom/apk/dr;",
        ">;"
    }
.end annotation


# static fields
.field public static finally:Lcom/apk/dr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static package:Lcom/apk/dr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/xq;-><init>()V

    return-void
.end method

.method public static continue(Lcom/apk/qj;)Lcom/apk/dr;
    .locals 2
    .param p0    # Lcom/apk/qj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qj<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apk/dr;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/dr;

    invoke-direct {v0}, Lcom/apk/dr;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/apk/xq;->package(Lcom/apk/qj;Z)Lcom/apk/xq;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/apk/dr;

    return-object p0
.end method
