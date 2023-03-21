.class public Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainCategoryFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f09021b

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
