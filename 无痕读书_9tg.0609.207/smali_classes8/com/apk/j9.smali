.class public Lcom/apk/j9;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/h1;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/j9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/j9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->u:Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;

    .line 3
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

    return-void
.end method

.method public for(Lcom/biquge/ebook/app/bean/ChapterBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/j9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/h2;->C(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/apk/j9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->u:Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;

    .line 6
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

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

    .line 1
    iget-object p2, p0, Lcom/apk/j9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->super(Ljava/util/List;)V

    :cond_0
    return-void
.end method
