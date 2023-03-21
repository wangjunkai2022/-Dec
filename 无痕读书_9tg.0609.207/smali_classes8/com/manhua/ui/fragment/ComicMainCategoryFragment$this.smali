.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment$this;
.super Ljava/lang/Object;
.source "ComicMainCategoryFragment.java"

# interfaces
.implements Lcom/apk/nt$do;


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
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$this;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$this;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 2
    iput p3, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->new:I

    .line 3
    sget-object p2, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->while:[Ljava/lang/String;

    .line 4
    aget-object p2, p2, p3

    .line 5
    iput-object p2, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->case:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->time_choose:Landroid/widget/TextView;

    .line 7
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->do:[Ljava/lang/String;

    .line 8
    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$this;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->n(Z)V

    return-void
.end method
