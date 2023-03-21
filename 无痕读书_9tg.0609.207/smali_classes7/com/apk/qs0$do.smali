.class public final Lcom/apk/qs0$do;
.super Ljava/lang/Object;
.source "CheckerboardDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/qs0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 2
    iput v0, p0, Lcom/apk/qs0$do;->do:I

    const v0, -0x3d3d3e

    .line 3
    iput v0, p0, Lcom/apk/qs0$do;->if:I

    const v0, -0xc0c0d

    .line 4
    iput v0, p0, Lcom/apk/qs0$do;->for:I

    return-void
.end method
