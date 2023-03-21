.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;
.super Ljava/lang/Object;
.source "WebBookDirPopView.java"

# interfaces
.implements Lcom/apk/h1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public for(Lcom/biquge/ebook/app/bean/ChapterBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setReadChapterUrl(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 6
    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c0(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    new-instance v0, Lcom/apk/be;

    invoke-direct {v0, p0}, Lcom/apk/be;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public if(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public new(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public synthetic try()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
