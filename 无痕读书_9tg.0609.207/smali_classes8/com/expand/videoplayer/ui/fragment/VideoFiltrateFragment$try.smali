.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$try;
.super Ljava/lang/Object;
.source "VideoFiltrateFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


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
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$try;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$try;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 2
    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->const:Lcom/expand/videoplayer/adapter/VideoGridAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/expand/videoplayer/bean/VideoDetail;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$try;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-virtual {p2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    iget-object p3, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$try;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 5
    iget-object p3, p3, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->throw:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/apk/eg;->final()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p2, p3, v0, p1}, Lcom/apk/eg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V

    :cond_0
    return-void
.end method
