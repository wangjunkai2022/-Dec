.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$for;
.super Ljava/lang/Object;
.source "VideoFiltrateFragment.java"

# interfaces
.implements Lcom/manhua/ui/widget/PublicLoadingView$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->initView()V
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
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$for;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$for;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 2
    iget-object v0, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->class:Lcom/apk/q3;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/q3;->new()V

    :cond_0
    return-void
.end method
