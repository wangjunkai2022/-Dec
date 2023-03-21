.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$throw;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    .line 4
    iget-object v1, p1, Lcom/apk/h2;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/apk/h2;->case:Ljava/lang/String;

    iput-object v0, p1, Lcom/apk/h2;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/da;->final(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz p1, :cond_2

    .line 8
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/t9;

    invoke-direct {v1, p1}, Lcom/apk/t9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    return-void
.end method
