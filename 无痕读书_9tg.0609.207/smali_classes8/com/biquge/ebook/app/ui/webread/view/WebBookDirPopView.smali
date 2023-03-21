.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;
.super Lcom/lxj/xpopup/impl/FullScreenPopupView;
.source "WebBookDirPopView.java"


# instance fields
.field public final break:Lcom/apk/h1;

.field public else:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

.field public final goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public final this:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->break:Lcom/apk/h1;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->this:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->break:Lcom/apk/h1;

    .line 7
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 8
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->this:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0166

    return v0
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

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->else:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->this:Ljava/lang/String;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->break:Lcom/apk/h1;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->if(Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;Ljava/lang/String;Lcom/apk/h1;)V

    :cond_0
    return-void
.end method
