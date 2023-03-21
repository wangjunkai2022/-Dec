.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$else;
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3, v3}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
