.class public Lcom/apk/switch$if;
.super Ljava/lang/Object;
.source "AdInsertHelper.java"

# interfaces
.implements Lcom/apk/z60;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/switch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public do()V
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
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/throws;

    invoke-direct {v1}, Lcom/apk/throws;-><init>()V

    invoke-virtual {v0, v1}, Lcom/apk/o;->do(Ljava/lang/Runnable;)V

    return-void
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

.method public try()V
    .locals 0

    return-void
.end method
