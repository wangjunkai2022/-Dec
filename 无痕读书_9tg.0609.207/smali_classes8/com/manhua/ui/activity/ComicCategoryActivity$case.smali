.class public Lcom/manhua/ui/activity/ComicCategoryActivity$case;
.super Lcom/apk/r5;
.source "ComicCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 2
    iput-object p1, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->goto:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    sput-object v1, Lcom/manhua/ui/activity/ComicCategoryActivity;->super:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [Ljava/lang/String;

    .line 8
    sput-object v1, Lcom/manhua/ui/activity/ComicCategoryActivity;->throw:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCategory;

    .line 10
    sget-object v4, Lcom/manhua/ui/activity/ComicCategoryActivity;->super:[Ljava/lang/String;

    .line 11
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCategory;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 12
    sget-object v4, Lcom/manhua/ui/activity/ComicCategoryActivity;->throw:[Ljava/lang/String;

    .line 13
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCategory;->getCId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 15
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 16
    sget-object v2, Lcom/manhua/ui/activity/ComicCategoryActivity;->super:[Ljava/lang/String;

    .line 17
    iget-object v3, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->const:Lcom/apk/b40$new;

    .line 18
    sget v4, Lcom/manhua/ui/activity/ComicCategoryActivity;->final:I

    .line 19
    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/manhua/ui/activity/ComicCategoryActivity;->l(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 20
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 21
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 22
    invoke-virtual {p1, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V

    .line 23
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    .line 24
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object v0, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 25
    iput-byte v1, v0, Lcom/apk/ss;->do:B

    .line 26
    invoke-static {p1, v1}, Lcom/manhua/ui/activity/ComicCategoryActivity;->k(Lcom/manhua/ui/activity/ComicCategoryActivity;Z)V

    goto :goto_1

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public new(Ljava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object v0, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/activity/ComicCategoryActivity;->k(Lcom/manhua/ui/activity/ComicCategoryActivity;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 3
    iget-object p3, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 4
    iget-boolean p3, p3, Lcom/manhua/ui/activity/ComicCategoryActivity;->break:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 6
    new-instance p3, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {p3}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/4 v1, 0x2

    .line 7
    invoke-virtual {p3, v1}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 9
    invoke-interface {p1, v2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 12
    invoke-virtual {p3, v0, p1, p2}, Lcom/manhua/ui/activity/ComicCategoryActivity;->m(ZLjava/util/List;Z)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p3, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$case;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 14
    invoke-virtual {p3, v1, p1, p2}, Lcom/manhua/ui/activity/ComicCategoryActivity;->m(ZLjava/util/List;Z)V

    :goto_1
    return-void
.end method
