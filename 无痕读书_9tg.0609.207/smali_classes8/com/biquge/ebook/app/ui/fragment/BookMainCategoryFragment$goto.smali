.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$goto;
.super Ljava/lang/Object;
.source "BookMainCategoryFragment.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    sget-object p2, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-object p3, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p3

    aget-object p2, p2, p3

    .line 2
    iput-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->else:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->m(Z)V

    return-void
.end method
