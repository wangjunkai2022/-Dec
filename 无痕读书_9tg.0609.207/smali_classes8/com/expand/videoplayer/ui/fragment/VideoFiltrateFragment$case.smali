.class public Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;
.super Lcom/apk/t5;
.source "VideoFiltrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;
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
    iput-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    invoke-direct {p0}, Lcom/apk/t5;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/RankCategory;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 2
    iput-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->if:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/expand/videoplayer/bean/RankCategory;

    .line 4
    invoke-virtual {v0}, Lcom/expand/videoplayer/bean/RankCategory;->getLists()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const v2, 0x7f10027a

    .line 6
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;

    invoke-virtual {v4}, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    new-instance v4, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;

    invoke-direct {v4}, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/expand/videoplayer/bean/RankCategory;->getIndex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->setId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, v2}, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->setName(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 13
    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->class:Lcom/apk/q3;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/eg;->finally()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/whole_cs.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x2932e00

    .line 15
    sget-object v3, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v4, Lcom/apk/r3;

    invoke-direct {v4, p1}, Lcom/apk/r3;-><init>(Lcom/apk/q3;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public if(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/CategoryArea;",
            ">;",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/CategoryYear;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 2
    iput-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->for:Ljava/util/List;

    .line 3
    iput-object p2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->new:Ljava/util/List;

    .line 4
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->if:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 6
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->try:[Ljava/lang/String;

    .line 7
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->this:[Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 8
    iget-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/expand/videoplayer/bean/RankCategory;

    .line 9
    invoke-virtual {v2}, Lcom/expand/videoplayer/bean/RankCategory;->getNavName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v3, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->try:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/expand/videoplayer/bean/RankCategory;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v3, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->try:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/expand/videoplayer/bean/RankCategory;->getNavName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 12
    :goto_1
    iget-object v3, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->this:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/expand/videoplayer/bean/RankCategory;->getIndex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mTypeIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->try:[Ljava/lang/String;

    new-instance v2, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;

    invoke-direct {v2, v0, p2}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;)V

    .line 14
    iget p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->do:I

    invoke-virtual {v0, p1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->a(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->case:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 15
    array-length v2, p1

    if-le v2, v1, :cond_3

    .line 16
    iget-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v3, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;I)V

    invoke-virtual {v0, v2, p1, v3}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mCategoryIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 18
    :goto_2
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->for:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 19
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->else:[Ljava/lang/String;

    .line 20
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->break:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_4

    .line 21
    iget-object v3, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->for:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/expand/videoplayer/bean/CategoryArea;

    .line 22
    iget-object v4, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->else:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/expand/videoplayer/bean/CategoryArea;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 23
    iget-object v4, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->break:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/expand/videoplayer/bean/CategoryArea;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 24
    :cond_4
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mAreaIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->else:[Ljava/lang/String;

    new-instance v3, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;I)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;)V

    .line 25
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mRankIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v2, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->native:[Ljava/lang/String;

    new-instance v3, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;

    invoke-direct {v3, v0, v1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;I)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;)V

    .line 26
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->new:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 27
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->goto:[Ljava/lang/String;

    .line 28
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->catch:[Ljava/lang/String;

    :goto_4
    if-ge p2, p1, :cond_5

    .line 29
    iget-object v2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->new:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/expand/videoplayer/bean/CategoryYear;

    .line 30
    iget-object v3, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->goto:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/expand/videoplayer/bean/CategoryYear;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    .line 31
    iget-object v3, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->catch:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/expand/videoplayer/bean/CategoryYear;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 32
    :cond_5
    iget-object p1, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mYearIc:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object p2, v0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->goto:[Ljava/lang/String;

    new-instance v2, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$goto;-><init>(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;I)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->i(Z)V

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mLoadingLayout:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_7

    .line 35
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    :cond_7
    return-void

    .line 36
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->mLoadingLayout:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_9

    const/4 p2, 0x0

    .line 37
    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public new(Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->synchronized(Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 3
    invoke-virtual {p3, v0, p1, p2}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->h(ZLjava/util/List;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment$case;->do:Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;

    .line 5
    invoke-virtual {p3, v1, p1, p2}, Lcom/expand/videoplayer/ui/fragment/VideoFiltrateFragment;->h(ZLjava/util/List;Z)V

    :goto_0
    return-void
.end method
