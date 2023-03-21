.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$do;
.super Ljava/lang/Object;
.source "BookSearchFragment.java"

# interfaces
.implements Lcom/apk/nt$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-static {p1, p3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;I)V

    return-void
.end method
