.class public Lcom/apk/q50$do;
.super Ljava/lang/Object;
.source "TrSplashZoomOutLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/q50;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/q50;


# direct methods
.method public constructor <init>(Lcom/apk/q50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q50$do;->do:Lcom/apk/q50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/q50$do;->do:Lcom/apk/q50;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/apk/q50$do;->do:Lcom/apk/q50;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/apk/q50$do;->do:Lcom/apk/q50;

    .line 5
    iget v4, v3, Lcom/apk/q50;->for:I

    sub-int/2addr v0, v4

    .line 6
    iput v0, v2, Lcom/apk/q50;->try:I

    .line 7
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/apk/q50$do;->do:Lcom/apk/q50;

    .line 8
    iget v0, v0, Lcom/apk/q50;->for:I

    sub-int/2addr v1, v0

    .line 9
    iput v1, v3, Lcom/apk/q50;->new:I

    return-void
.end method
