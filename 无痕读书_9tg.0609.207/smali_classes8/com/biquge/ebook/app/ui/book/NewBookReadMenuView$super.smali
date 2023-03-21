.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;
.super Lcom/apk/bg;
.source "NewBookReadMenuView.java"


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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->interface:Landroid/view/View;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const v0, 0x7f0903df

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->interface:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 8
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->interface:Landroid/view/View;

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 11
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 15
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 16
    invoke-static {v0}, Lcom/apk/n2;->break(Lcom/biquge/ebook/app/bean/CollectBook;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 19
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 21
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->interface:Landroid/view/View;

    .line 22
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 23
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v0, v1, v2}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this()V

    goto/16 :goto_3

    .line 27
    :pswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 28
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->class:Z

    if-nez v0, :cond_3

    .line 29
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 31
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    .line 33
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this()V

    goto :goto_3

    :cond_3
    :goto_1
    return-void

    .line 34
    :pswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 35
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->class:Z

    if-nez v0, :cond_6

    .line 36
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    .line 38
    invoke-virtual {p1}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    if-eqz p1, :cond_5

    const v0, 0x7f100058

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 41
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 42
    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-static {v0, v1, p1}, Lcom/apk/w0;->try(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V

    .line 43
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this()V

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 45
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->extends:Lcom/apk/bg;

    .line 46
    invoke-virtual {v0, p1}, Lcom/apk/bg;->onClick(Landroid/view/View;)V

    .line 47
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09060d
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
