.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;
.super Ljava/lang/Object;
.source "VideoFiltrateFragment.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goto"
.end annotation


# instance fields
.field public final do:I

.field public final synthetic if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->do:I

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->do:I

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 3
    iget-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->if:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->for:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->new:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iput p2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->do:I

    .line 7
    invoke-virtual {p1, p2}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->a(I)[Ljava/lang/String;

    move-result-object p2

    .line 8
    iput-object p2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->case:[Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 10
    iget-object p2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->case:[Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 11
    array-length v0, p2

    if-le v0, p3, :cond_2

    .line 12
    iget-object v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;I)V

    .line 13
    invoke-virtual {p1, v0, p2, v1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;)V

    .line 14
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-static {p1, p3}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->synchronized(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;Z)V

    :cond_3
    :goto_1
    return-void
.end method
