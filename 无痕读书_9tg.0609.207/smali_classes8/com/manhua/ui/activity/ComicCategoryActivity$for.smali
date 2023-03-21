.class public Lcom/manhua/ui/activity/ComicCategoryActivity$for;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ComicCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicCategoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic if:Lcom/manhua/ui/activity/ComicCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicCategoryActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->if:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iput-object p2, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->do:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->do:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->if:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mHeaderTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->if:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mHeaderTxt:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->if:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mHeaderTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->if:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p2, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mHeaderTxt:Landroid/widget/TextView;

    .line 7
    iget-object p3, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p3

    .line 8
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v0

    .line 9
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p1

    .line 10
    sget-object v1, Lcom/apk/q0;->goto:[Ljava/lang/String;

    aget-object p3, v1, p3

    .line 11
    sget-object v1, Lcom/manhua/ui/activity/ComicCategoryActivity;->super:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 12
    sget-object v1, Lcom/apk/q0;->new:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 13
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "  ->  "

    .line 15
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$for;->if:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mHeaderTxt:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
