.class public Lcom/apk/o9;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Lcom/apk/o0$else;


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/o9;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iput-boolean p2, p0, Lcom/apk/o9;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/apk/o9;->do:Z

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/apk/o9;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/apk/n2;->try(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/o9;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    .line 7
    invoke-virtual {p1}, Lcom/apk/h2;->A()V

    :cond_1
    return-void
.end method
