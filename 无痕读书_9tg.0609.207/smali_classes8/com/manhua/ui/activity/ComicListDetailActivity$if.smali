.class public Lcom/manhua/ui/activity/ComicListDetailActivity$if;
.super Lcom/apk/r5;
.source "ComicListDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicListDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicListDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicListDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public try(Lcom/manhua/data/bean/ComicInfoEntity;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 2
    iput-object p1, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->super:Lcom/manhua/data/bean/ComicInfoEntity;

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicInfoEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->if:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicInfoEntity;->getCover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 6
    iget-object v1, v1, Lcom/manhua/ui/activity/ComicListDetailActivity;->for:Landroid/widget/ImageView;

    .line 7
    invoke-static {v0, v1}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 9
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->new:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicInfoEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 12
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->try:Landroid/widget/TextView;

    .line 13
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    const v2, 0x7f10013c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicInfoEntity;->getBookCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 15
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->case:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicInfoEntity;->getAddTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 18
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->else:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    .line 19
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicInfoEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicInfoEntity;->getBooks()Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 23
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 24
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    new-instance v0, Lcom/manhua/ui/activity/ComicListDetailActivity$if$do;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicListDetailActivity$if$do;-><init>(Lcom/manhua/ui/activity/ComicListDetailActivity$if;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 28
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->final:Lcom/manhua/ui/widget/PublicLoadingView;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
