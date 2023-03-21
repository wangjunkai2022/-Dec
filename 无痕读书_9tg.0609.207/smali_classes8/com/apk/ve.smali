.class public Lcom/apk/ve;
.super Ljava/lang/Object;
.source "WebSearchResultLayout.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ve;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/ve;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/apk/ve;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 5
    iget-object p3, p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->do:[Ljava/lang/String;

    .line 6
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p2

    aget-object p2, p3, p2

    const-string p3, "SP_WEB_TO_RED_KEY"

    invoke-static {p3, p2}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lcom/apk/ve;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/biquge/ebook/app/ui/webread/ui/WebBookDetailActivity;->i(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebBook;)V

    :cond_0
    return-void
.end method
