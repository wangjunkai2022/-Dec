.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->final()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->abstract()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->this:Lcom/apk/l30;

    .line 8
    iget-object p1, p1, Lcom/apk/l30;->do:Landroid/view/GestureDetector;

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
