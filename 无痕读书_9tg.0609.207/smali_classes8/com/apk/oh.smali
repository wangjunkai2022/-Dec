.class public Lcom/apk/oh;
.super Ljava/lang/Object;
.source "ProgressBarWebView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/oh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/oh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/apk/oh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    .line 7
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 8
    iget-object p1, p0, Lcom/apk/oh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->do()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
