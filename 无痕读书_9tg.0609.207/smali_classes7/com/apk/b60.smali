.class public Lcom/apk/b60;
.super Lcom/apk/p70;
.source "TrBaseSizeAd.java"


# instance fields
.field public for:I

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/p70;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/b60;->if:I

    .line 3
    iput v0, p0, Lcom/apk/b60;->for:I

    return-void
.end method
