.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;
.super Lcom/lxj/xpopup/core/DrawerPopupView;
.source "WebBookReadDirPopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public final catch:Ljava/lang/String;

.field public final class:Lcom/apk/h1;

.field public this:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;Lcom/apk/h1;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/DrawerPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->catch:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->class:Lcom/apk/h1;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0167

    return v0
.end method

.method public getMaxWidth()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901df

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->this:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->catch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090628

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->this:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    const v0, 0x7f0901df

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->this:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->catch:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->class:Lcom/apk/h1;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->if(Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;Ljava/lang/String;Lcom/apk/h1;)V

    :cond_0
    return-void
.end method
