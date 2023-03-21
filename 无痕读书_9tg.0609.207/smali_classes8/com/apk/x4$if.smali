.class public Lcom/apk/x4$if;
.super Ljava/lang/Object;
.source "PublicPresenter.java"

# interfaces
.implements Lcom/apk/uv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x4;->abstract(Lcom/biquge/ebook/app/bean/Book;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:Lcom/biquge/ebook/app/bean/Book;

.field public final synthetic new:Lcom/apk/x4;


# direct methods
.method public constructor <init>(Lcom/apk/x4;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x4$if;->new:Lcom/apk/x4;

    iput-object p2, p0, Lcom/apk/x4$if;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/x4$if;->if:Lcom/biquge/ebook/app/bean/Book;

    iput-boolean p4, p0, Lcom/apk/x4$if;->for:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/x4$if;->do:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "to_detail"

    iget-object v1, p0, Lcom/apk/x4$if;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "to_chapterlist"

    .line 3
    iget-object v1, p0, Lcom/apk/x4$if;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/x4$if;->if:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/apk/x4$if;->new:Lcom/apk/x4;

    .line 6
    iget-object v1, v1, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 7
    invoke-static {v1, v0, v2}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->j(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/apk/x4$if;->new:Lcom/apk/x4;

    iget-object v1, p0, Lcom/apk/x4$if;->if:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apk/x4$if;->for:Z

    iget-object v3, p0, Lcom/apk/x4$if;->do:Ljava/lang/String;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/apk/x4;->this(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v0, "to_read"

    .line 10
    iget-object v1, p0, Lcom/apk/x4$if;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/apk/x4$if;->new:Lcom/apk/x4;

    .line 12
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 13
    iget-object v1, p0, Lcom/apk/x4$if;->if:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b0(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/apk/x4$if;->new:Lcom/apk/x4;

    .line 15
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 16
    iget-object v1, p0, Lcom/apk/x4$if;->if:Lcom/biquge/ebook/app/bean/Book;

    iget-object v2, p0, Lcom/apk/x4$if;->do:Ljava/lang/String;

    const-string v3, "shelf"

    invoke-static {v0, v1, v2, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->Z(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/apk/x4$if;->new:Lcom/apk/x4;

    .line 18
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 19
    iget-object v1, p0, Lcom/apk/x4$if;->if:Lcom/biquge/ebook/app/bean/Book;

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->r(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void

    .line 20
    :cond_5
    throw v2
.end method
