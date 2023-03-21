.class public Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$do;
.super Lcom/apk/bg;
.source "WebLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->setError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->do()V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->case:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$if;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$if;->do()V

    :cond_0
    return-void
.end method
