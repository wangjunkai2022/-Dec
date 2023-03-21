.class public Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TxtDownloadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/TaskInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Z

.field public if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c0133

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    move-object/from16 v2, p2

    check-cast v2, Lcom/biquge/ebook/app/bean/TaskInfo;

    const v3, 0x7f0902de

    .line 2
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902e0

    .line 3
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902e1

    .line 4
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0902df

    .line 5
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    const v7, 0x7f0902dd

    .line 6
    invoke-virtual {v1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0902e2

    .line 7
    invoke-virtual {v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0902e5

    .line 8
    invoke-virtual {v1, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 11
    sget-object v11, Lcom/apk/kf;->new:Lcom/apk/gg;

    if-eqz v11, :cond_0

    .line 12
    invoke-virtual {v11, v3}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/hy;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 13
    sget-object v3, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 14
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v3

    :cond_1
    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_e

    .line 15
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v8

    iget-wide v7, v3, Lcom/apk/hy;->goto:J

    invoke-static {v7, v8}, Lcom/apk/ze;->throws(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/apk/hy;->return:Z

    if-eqz v7, :cond_2

    const-string v7, "-"

    goto :goto_1

    :cond_2
    iget-wide v7, v3, Lcom/apk/hy;->else:J

    .line 16
    invoke-static {v7, v8}, Lcom/apk/ze;->throws(J)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-boolean v4, v3, Lcom/apk/hy;->return:Z

    if-eqz v4, :cond_4

    .line 19
    iget v4, v3, Lcom/apk/hy;->break:I

    if-ne v4, v11, :cond_3

    .line 20
    invoke-virtual {v6, v13}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {v6, v12}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v6, v13}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 23
    iget-wide v7, v3, Lcom/apk/hy;->goto:J

    long-to-double v7, v7

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v16

    iget-wide v11, v3, Lcom/apk/hy;->else:J

    long-to-double v11, v11

    div-double/2addr v7, v11

    double-to-int v4, v7

    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 24
    :goto_2
    iget v4, v3, Lcom/apk/hy;->break:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 25
    :goto_3
    iget v3, v3, Lcom/apk/hy;->break:I

    const/4 v6, 0x5

    const/16 v7, 0x8

    if-ne v3, v6, :cond_8

    .line 26
    iget-object v3, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f100136

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-boolean v3, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->do:Z

    if-eqz v3, :cond_7

    .line 28
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 30
    iget-object v3, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 31
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 32
    :goto_4
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 33
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v8, v15

    .line 34
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_7
    move-object v8, v15

    .line 35
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_8
    move-object v8, v15

    .line 38
    iget-boolean v6, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->do:Z

    if-eqz v6, :cond_a

    .line 39
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v6, v0, Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;->if:Ljava/util/Map;

    if-eqz v6, :cond_9

    .line 42
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 43
    :goto_5
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 44
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 46
    :cond_a
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    const v2, 0x7f080318

    .line 49
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f100129

    if-eqz v4, :cond_c

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    .line 50
    iget-object v3, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 51
    :cond_b
    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f10012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_7
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_8
    const/4 v2, 0x1

    goto :goto_a

    :cond_c
    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 53
    iget-object v3, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 54
    :cond_d
    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f100127

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_a

    :cond_e
    const/4 v2, 0x1

    const-string v3, "0/0"

    .line 56
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v6, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v3, ""

    .line 58
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    .line 59
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    new-array v2, v2, [I

    const v3, 0x7f0902dd

    aput v3, v2, v13

    .line 60
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
