.class public Lcom/apk/qe;
.super Lcom/apk/bg;
.source "WebErrorView.java"


# instance fields
.field public final synthetic do:Lcom/apk/re;


# direct methods
.method public constructor <init>(Lcom/apk/re;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qe;->do:Lcom/apk/re;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/qe;->do:Lcom/apk/re;

    .line 2
    iget-object p1, p1, Lcom/apk/re;->for:Lcom/apk/re$do;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/apk/lh;

    .line 4
    iget-object p1, p1, Lcom/apk/lh;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case()V

    :cond_0
    return-void
.end method
