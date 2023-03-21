.class public Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BookDownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/CollectBook;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mDownloadTag:Ljava/lang/String;

.field public mFaildTag:Ljava/lang/String;

.field public mFenDuanTag:Ljava/lang/String;

.field public final mFilterColor:I

.field public mPauseTag:Ljava/lang/String;

.field public mPrepareTag:Ljava/lang/String;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSuccessTag:Ljava/lang/String;

.field public mUnZipTag:Ljava/lang/String;

.field public mVideoAdTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const v0, 0x7f0c00fc

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06003c

    .line 4
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    .line 5
    invoke-static {p1, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFilterColor:I

    return-void
.end method

.method private setCacheStateTxt(ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFenDuanTag:Ljava/lang/String;

    if-nez p1, :cond_1

    const p1, 0x7f10012e

    .line 2
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFenDuanTag:Ljava/lang/String;

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFenDuanTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mUnZipTag:Ljava/lang/String;

    if-nez p1, :cond_3

    const p1, 0x7f100139

    .line 6
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mUnZipTag:Ljava/lang/String;

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mUnZipTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p3, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mVideoAdTag:Ljava/lang/String;

    if-nez p1, :cond_5

    const p1, 0x7f10013a

    .line 10
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mVideoAdTag:Ljava/lang/String;

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mVideoAdTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p3, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mPrepareTag:Ljava/lang/String;

    if-nez p1, :cond_7

    const p1, 0x7f100130

    .line 14
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mPrepareTag:Ljava/lang/String;

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mPrepareTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p3, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mSuccessTag:Ljava/lang/String;

    if-nez p1, :cond_9

    const p1, 0x7f100136

    .line 18
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mSuccessTag:Ljava/lang/String;

    .line 19
    :cond_9
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mSuccessTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p3, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mPauseTag:Ljava/lang/String;

    if-nez p1, :cond_b

    const p1, 0x7f10012d

    .line 22
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mPauseTag:Ljava/lang/String;

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mPauseTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p3, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 25
    :cond_c
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mDownloadTag:Ljava/lang/String;

    if-nez p1, :cond_d

    const p1, 0x7f100127

    .line 26
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mDownloadTag:Ljava/lang/String;

    .line 27
    :cond_d
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mDownloadTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    invoke-direct {p0, p3, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 29
    :cond_e
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFaildTag:Ljava/lang/String;

    if-nez p1, :cond_f

    const p1, 0x7f100129

    .line 30
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFaildTag:Ljava/lang/String;

    .line 31
    :cond_f
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFaildTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p3, v1}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setSelected(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const p2, 0x7f08014f

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06003c

    .line 3
    invoke-static {p2}, Lcom/apk/ze;->p(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mFilterColor:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f08014e

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setValueTxt(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 11

    const v0, 0x7f0902ca

    const v1, 0x7f0902e4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 3
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/apk/o0;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result v4

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v5

    .line 6
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v6

    .line 7
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CollectBook;->getPercentage()I

    move-result v7

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result v4

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v5

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v6

    .line 11
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getPercentage()I

    move-result v7

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object p2

    const v8, 0x7f090548

    .line 13
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "progressTxt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    const-string v7, "-"

    .line 15
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez v7, :cond_2

    .line 16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v7, 0x7f100132

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    .line 18
    invoke-static {v7, v9}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v7, 0x7f0902e3

    .line 19
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    if-lez v5, :cond_3

    .line 20
    invoke-virtual {v7, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 21
    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "progressBar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stateTxt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f0902e6

    .line 25
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stateValueTxt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result v4

    .line 28
    :cond_4
    invoke-direct {p0, v4, v6, v5}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setCacheStateTxt(ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 29
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-array p2, v3, [I

    aput v1, p2, v2

    .line 30
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/biquge/ebook/app/bean/CollectBook;)V

    return-void
.end method

.method public declared-synchronized refreshTxt(Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progressTxt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-"

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getPercentage()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f100132

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 8
    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progressBar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateValueTxt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stateTxt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result p1

    .line 16
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/apk/o0;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getState()I

    move-result p1

    .line 18
    :cond_5
    invoke-direct {p0, p1, v1, v2}, Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;->setCacheStateTxt(ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
