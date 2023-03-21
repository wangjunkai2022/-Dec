.class public Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;
.super Lcom/apk/bg;
.source "BookDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;->for:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;->if:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/biquge/ebook/app/bean/NovelCategory;

    invoke-direct {p1}, Lcom/biquge/ebook/app/bean/NovelCategory;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NovelCategory;->setcId(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;->if:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NovelCategory;->setName(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NovelCategory;->setPy(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;->for:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->i(Landroid/content/Context;Lcom/biquge/ebook/app/bean/NovelCategory;)V

    return-void
.end method
