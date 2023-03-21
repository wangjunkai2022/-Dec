.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$if;
.super Ljava/lang/Object;
.source "BookStoreCategoryFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->if:[Ljava/lang/String;

    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 3
    sget-object v1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->const:[Ljava/lang/String;

    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->try:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    .line 4
    :try_start_0
    iput v2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    .line 5
    invoke-static {v0, v1, v2}, Lcom/apk/w;->for(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->case:Lcom/apk/v3;

    iget p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->goto:I

    invoke-virtual {v1, v0, p1}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 2
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 3
    iget-boolean p2, p2, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;->do:Z

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
