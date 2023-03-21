.class public Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$new;
.super Lcom/apk/u5;
.source "BookDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$new;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/biquge/ebook/app/bean/Book;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$new;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->case:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->try:Z

    .line 4
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->w()V

    return-void
.end method

.method public switch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$new;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->case:Z

    const v0, 0x7f10006b

    .line 3
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void
.end method
