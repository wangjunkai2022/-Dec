.class public Lcom/manhua/ui/view/ComicCategoryThemePopupView;
.super Lcom/lxj/xpopup/core/DrawerPopupView;
.source "ComicCategoryThemePopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/view/ComicCategoryThemePopupView$do;
    }
.end annotation


# instance fields
.field public final break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCategory;",
            ">;"
        }
    .end annotation
.end field

.field public final catch:I

.field public final class:Lcom/apk/g1;

.field public this:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ILcom/apk/g1;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCategory;",
            ">;I",
            "Lcom/apk/g1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/DrawerPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->break:Ljava/util/List;

    .line 3
    iput p3, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->catch:I

    .line 4
    iput-object p4, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->class:Lcom/apk/g1;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0162

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f09055a

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->this:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->this:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->this:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    new-instance v0, Lcom/manhua/ui/view/ComicCategoryThemePopupView$do;

    iget-object v1, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->break:Ljava/util/List;

    iget v2, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->catch:I

    invoke-direct {v0, v1, v2}, Lcom/manhua/ui/view/ComicCategoryThemePopupView$do;-><init>(Ljava/util/List;I)V

    .line 7
    iget-object v1, p0, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->this:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    new-instance v1, Lcom/apk/d20;

    invoke-direct {v1, p0}, Lcom/apk/d20;-><init>(Lcom/manhua/ui/view/ComicCategoryThemePopupView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method
