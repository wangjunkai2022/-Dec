.class public Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;
.super Ljava/lang/Object;
.source "WebSearchResultLayout.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iput p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;->do:I

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$new;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try(ILjava/util/List;)Z

    :cond_0
    return-void
.end method
