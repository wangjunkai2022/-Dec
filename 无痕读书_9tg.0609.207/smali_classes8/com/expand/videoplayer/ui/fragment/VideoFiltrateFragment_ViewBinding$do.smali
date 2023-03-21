.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "VideoFiltrateFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding;Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding$do;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment_ViewBinding$do;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-virtual {p1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->menuClick()V

    return-void
.end method
