.class public Lcom/apk/yt$do;
.super Landroid/view/OrientationEventListener;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/yt;-><init>(Landroid/app/Activity;Lcom/apk/xt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/yt;


# direct methods
.method public constructor <init>(Lcom/apk/yt;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/yt$do;->do:Lcom/apk/yt;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/yt$do;->do:Lcom/apk/yt;

    .line 2
    iget-object p1, p1, Lcom/apk/yt;->do:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "accelerometer_rotation"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/yt$do;->do:Lcom/apk/yt;

    .line 5
    iget-object p1, p1, Lcom/apk/yt;->for:Lcom/apk/xt;

    check-cast p1, Lcom/expand/videoplayer/ui/PlayWebViewActivity$if;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
