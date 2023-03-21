.class public Lcom/apk/te;
.super Ljava/lang/Object;
.source "WebSearchResultLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/te;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/te;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/apk/te;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mWebSiteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 3
    iput v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->new:I

    .line 4
    iget-object v0, p0, Lcom/apk/te;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->else()V

    return-void
.end method
