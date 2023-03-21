.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment$goto;
.super Ljava/lang/Object;
.source "ComicMainCategoryFragment.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicMainCategoryFragment;
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
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$goto;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$goto;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    sget-object p2, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-object p3, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p3

    aget-object p2, p2, p3

    .line 2
    iput-object p2, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->else:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$goto;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    sget-object p2, Lcom/apk/q0;->catch:[Ljava/lang/String;

    iget-object p3, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->mAreaIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p3

    aget-object p2, p2, p3

    .line 4
    iput-object p2, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->goto:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$goto;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->n(Z)V

    return-void
.end method
