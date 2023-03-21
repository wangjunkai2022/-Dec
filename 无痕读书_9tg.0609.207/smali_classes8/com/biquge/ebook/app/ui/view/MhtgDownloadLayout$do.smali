.class public Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;
.super Lcom/apk/bg;
.source "MhtgDownloadLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09012a

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->do:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->do:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0}, Lcom/apk/ze;->g0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->if:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->if:Ljava/lang/String;

    const-string v1, "App"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090128

    if-ne p1, v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
