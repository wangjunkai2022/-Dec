.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;
.super Lcom/apk/yv;
.source "NewBookReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->f0(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;->do:Z

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/lxj/xpopup/core/BasePopupView;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p1, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->do:Z

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public for(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;->do:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    :cond_0
    return-void
.end method
