.class public Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->synchronized()V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mProgressBarWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
