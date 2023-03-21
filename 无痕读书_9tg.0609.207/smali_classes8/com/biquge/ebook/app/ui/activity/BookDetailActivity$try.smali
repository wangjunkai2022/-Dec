.class public Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$try;
.super Ljava/lang/Object;
.source "BookDetailActivity.java"

# interfaces
.implements Lcom/apk/o0$else;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->menuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    .line 2
    iget-boolean v1, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->new:Z

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    .line 4
    invoke-static {p1, v0}, Lcom/apk/n2;->u(Lcom/biquge/ebook/app/bean/Book;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$try;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->j(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Z)V

    return-void
.end method
