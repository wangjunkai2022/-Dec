.class public Lcom/apk/hg$if;
.super Landroid/database/ContentObserver;
.source "SystemBrightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/hg;


# direct methods
.method public constructor <init>(Lcom/apk/hg;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hg$if;->do:Lcom/apk/hg;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/hg$if;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/hg$if;->do:Lcom/apk/hg;

    invoke-virtual {p1}, Lcom/apk/hg;->if()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/hg$if;->do:Lcom/apk/hg;

    .line 5
    iget-object p1, p1, Lcom/apk/hg;->if:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 6
    new-instance p2, Lcom/apk/hg$if$do;

    invoke-direct {p2, p0}, Lcom/apk/hg$if$do;-><init>(Lcom/apk/hg$if;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
