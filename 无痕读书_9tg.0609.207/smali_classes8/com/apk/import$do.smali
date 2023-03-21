.class public Lcom/apk/import$do;
.super Ljava/lang/Object;
.source "AdChapterUtils.java"

# interfaces
.implements Lcom/apk/v60;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/import;


# direct methods
.method public constructor <init>(Lcom/apk/import;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/import$do;->do:Lcom/apk/import;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/import$do;->do:Lcom/apk/import;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    new-instance v2, Lcom/apk/native;

    invoke-direct {v2, v0}, Lcom/apk/native;-><init>(Lcom/apk/import;)V

    invoke-virtual {v1, v2}, Lcom/apk/o;->do(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdShow()V
    .locals 0

    return-void
.end method

.method public onVideoCached()V
    .locals 0

    return-void
.end method
