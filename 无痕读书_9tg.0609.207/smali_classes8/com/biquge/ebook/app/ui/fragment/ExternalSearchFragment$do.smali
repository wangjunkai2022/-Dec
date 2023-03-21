.class public Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$do;
.super Lcom/apk/u5;
.source "ExternalSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public const(Lcom/biquge/ebook/app/bean/ExternalWebSite;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ExternalWebSite;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ExternalWebSite;->getItems()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebSiteFlexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;

    const v3, 0x7f0c0129

    const/4 v4, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09031a

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 8
    new-instance v5, Lcom/apk/kb;

    invoke-direct {v5, v0, v2}, Lcom/apk/kb;-><init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "#10000000"

    .line 10
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v2, "#191817"

    .line 11
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebSiteFlexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mWebSiteFlexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/FastSearchWord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method
