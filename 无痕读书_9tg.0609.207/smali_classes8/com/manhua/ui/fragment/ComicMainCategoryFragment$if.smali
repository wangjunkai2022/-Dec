.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment$if;
.super Ljava/lang/Object;
.source "ComicMainCategoryFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$if;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$if;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCategory;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCategory;->getItemType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$if;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object p2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$if;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 6
    iget-object p2, p2, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->this:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    .line 7
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/manhua/data/bean/ComicCategory;

    invoke-static {p1, p2}, Lcom/manhua/ui/activity/ComicListCategoryActivity;->i(Landroid/content/Context;Lcom/manhua/data/bean/ComicCategory;)V

    :cond_0
    return-void
.end method
