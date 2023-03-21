.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$new;
.super Ljava/lang/Object;
.source "VideoFiltrateFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$new;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$new;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 2
    iget-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->class:Lcom/apk/q3;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->f()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    .line 4
    new-instance v3, Lcom/apk/b1;

    invoke-direct {v3}, Lcom/apk/b1;-><init>()V

    new-instance v4, Lcom/apk/t3;

    invoke-direct {v4, v1, v2, v0}, Lcom/apk/t3;-><init>(Lcom/apk/q3;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_0
    return-void
.end method
