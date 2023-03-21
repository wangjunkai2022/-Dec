.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;
.super Lcom/apk/lg;
.source "VideoFiltrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Lcom/apk/lg;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/apk/lg$do;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->super:Z

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/16 v1, 0x8

    if-eqz p1, :cond_7

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_8

    .line 5
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 7
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mTypeIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->try:[Ljava/lang/String;

    iget-object v3, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mTypeIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v2

    const-string v3, "  ->  "

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->case:[Ljava/lang/String;

    iget-object v4, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_3
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->else:[Ljava/lang/String;

    iget-object v4, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_4
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v2, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->native:[Ljava/lang/String;

    iget-object v4, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_5
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->goto:[Ljava/lang/String;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p1

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 27
    iput-boolean p2, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->super:Z

    .line 28
    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_8

    .line 29
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$do;->if:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method
