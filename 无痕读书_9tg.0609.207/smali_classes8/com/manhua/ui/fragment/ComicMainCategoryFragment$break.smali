.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment$break;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ComicMainCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicMainCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# instance fields
.field public do:Lcom/manhua/adapter/ComicParentCategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/manhua/adapter/ComicParentCategoryAdapter;Lcom/manhua/ui/fragment/ComicMainCategoryFragment$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$break;->do:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$break;->do:Lcom/manhua/adapter/ComicParentCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
