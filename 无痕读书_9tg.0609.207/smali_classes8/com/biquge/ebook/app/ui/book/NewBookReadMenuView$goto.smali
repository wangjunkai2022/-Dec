.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$goto;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->menuClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$goto;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$goto;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 3
    const-class v2, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$goto;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
