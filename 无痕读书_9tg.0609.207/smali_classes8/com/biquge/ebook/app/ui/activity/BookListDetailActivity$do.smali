.class public Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;
.super Lcom/apk/u5;
.source "BookListDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Lcom/biquge/ebook/app/bean/BookInfoEntity;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 2
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->const:Lcom/biquge/ebook/app/bean/BookInfoEntity;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getBookList()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 6
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 7
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {v1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 10
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->class:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getCover()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 12
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->case:Landroid/widget/ImageView;

    .line 13
    invoke-static {v1, v2}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 15
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->else:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 18
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->goto:Landroid/widget/TextView;

    .line 19
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    const v3, 0x7f10013c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 21
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->this:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getAddTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    .line 24
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->break:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    .line 25
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookInfoEntity;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
