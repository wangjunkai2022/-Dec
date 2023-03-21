.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class$do;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 3
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090102

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->extends:Lcom/apk/bg;

    .line 7
    invoke-virtual {v1, v0}, Lcom/apk/bg;->onClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
