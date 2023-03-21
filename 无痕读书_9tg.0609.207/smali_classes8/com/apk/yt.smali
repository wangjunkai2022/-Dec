.class public Lcom/apk/yt;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field public do:Landroid/app/Activity;

.field public for:Lcom/apk/xt;

.field public if:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/xt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/yt;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/yt;->for:Lcom/apk/xt;

    .line 4
    new-instance p1, Lcom/apk/yt$do;

    iget-object p2, p0, Lcom/apk/yt;->do:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/apk/yt$do;-><init>(Lcom/apk/yt;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apk/yt;->if:Landroid/view/OrientationEventListener;

    return-void
.end method
