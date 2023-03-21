.class public Lcom/manhua/adapter/ComicDownloadAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "ComicDownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/manhua/data/bean/ComicCollectBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public case:Ljava/lang/String;

.field public final do:Landroidx/recyclerview/widget/RecyclerView;

.field public else:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public goto:Ljava/lang/String;

.field public final if:I

.field public new:Ljava/lang/String;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const v0, 0x7f0c00fc

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->do:Landroidx/recyclerview/widget/RecyclerView;

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

    iput p1, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->if:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lcom/manhua/data/bean/ComicCollectBean;

    const v0, 0x7f0902e4

    .line 2
    :try_start_0
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v1

    iget-object v1, v1, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    const v2, 0x7f0902ca

    .line 3
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 4
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getMax()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v3

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getMax()I

    move-result v2

    .line 7
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v3

    :cond_0
    const v4, 0x7f090548

    .line 8
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "progressTxt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0902e3

    .line 11
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 12
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 13
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progressBar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stateTxt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0902e6

    .line 17
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stateValueTxt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result p2

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result p2

    .line 21
    :cond_1
    invoke-virtual {p0, p2, v3, v2}, Lcom/manhua/adapter/ComicDownloadAdapter;->setCacheStateTxt(ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 23
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public declared-synchronized do(Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->do:Landroidx/recyclerview/widget/RecyclerView;

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

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->do:Landroidx/recyclerview/widget/RecyclerView;

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

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 6
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->do:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 8
    iget-object v2, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->do:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 9
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result p1

    .line 10
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v3

    iget-object v3, v3, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v3, v0}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getState()I

    move-result p1

    .line 12
    :cond_2
    invoke-virtual {p0, p1, v1, v2}, Lcom/manhua/adapter/ComicDownloadAdapter;->setCacheStateTxt(ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final setCacheStateTxt(ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p1, v0, :cond_f

    if-eqz p1, :cond_c

    if-eq p1, v2, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->goto:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f10013a

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->goto:Ljava/lang/String;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->goto:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_2
    invoke-virtual {p0, p3, v2}, Lcom/manhua/adapter/ComicDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->else:Ljava/lang/String;

    if-nez v0, :cond_4

    const v0, 0x7f100130

    .line 7
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->else:Ljava/lang/String;

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->else:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_5
    invoke-virtual {p0, p3, v2}, Lcom/manhua/adapter/ComicDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->case:Ljava/lang/String;

    if-nez v0, :cond_7

    const v0, 0x7f100136

    .line 12
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->case:Ljava/lang/String;

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->case:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 14
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_8
    invoke-virtual {p0, p3, v2}, Lcom/manhua/adapter/ComicDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->try:Ljava/lang/String;

    if-nez v0, :cond_a

    const v0, 0x7f10012d

    .line 17
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->try:Ljava/lang/String;

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->try:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 19
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_b
    invoke-virtual {p0, p3, v2}, Lcom/manhua/adapter/ComicDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 21
    :cond_c
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->new:Ljava/lang/String;

    if-nez v0, :cond_d

    const v0, 0x7f100127

    .line 22
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->new:Ljava/lang/String;

    .line 23
    :cond_d
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->new:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p3, v0}, Lcom/manhua/adapter/ComicDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 26
    :cond_f
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->for:Ljava/lang/String;

    if-nez v0, :cond_10

    const v0, 0x7f100129

    .line 27
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->for:Ljava/lang/String;

    .line 28
    :cond_10
    iget-object v0, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->for:Ljava/lang/String;

    if-eqz p2, :cond_11

    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_11
    invoke-virtual {p0, p3, v2}, Lcom/manhua/adapter/ComicDownloadAdapter;->setSelected(Landroid/widget/ImageView;Z)V

    :goto_0
    if-ne p1, v1, :cond_12

    const p1, 0x7f060089

    .line 31
    invoke-static {p1}, Lcom/apk/ze;->p(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_12
    const p1, 0x7f06006d

    .line 32
    invoke-static {p1}, Lcom/apk/ze;->p(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final setSelected(Landroid/widget/ImageView;Z)V
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
    iget p2, p0, Lcom/manhua/adapter/ComicDownloadAdapter;->if:I

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
