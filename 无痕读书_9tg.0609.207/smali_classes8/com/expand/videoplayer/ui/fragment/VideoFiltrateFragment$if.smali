.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$if;
.super Ljava/lang/Object;
.source "VideoFiltrateFragment.java"

# interfaces
.implements Lcom/apk/ts;


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
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$if;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$if;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    .line 3
    iget-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->class:Lcom/apk/q3;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->f()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->final:I

    .line 5
    new-instance v2, Lcom/apk/b1;

    invoke-direct {v2}, Lcom/apk/b1;-><init>()V

    new-instance v3, Lcom/apk/t3;

    invoke-direct {v3, v0, v1, p1}, Lcom/apk/t3;-><init>(Lcom/apk/q3;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$if;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$if;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 2
    iget-boolean p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->super:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
