.class public abstract Lcom/apk/b90;
.super Lcom/apk/s80;
.source "MultiBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/s80<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public import:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apk/r90<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public throw:Lcom/apk/da0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/da0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public while:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/apk/s80;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/b90;->while:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/b90;->import:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public native(ILcom/apk/r90;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/apk/r90<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/b90;->while:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/apk/b90;->import:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/s80;->catch(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v1

    sub-int/2addr p2, v1

    .line 4
    check-cast p1, Lcom/apk/r80;

    .line 5
    iget-object v1, p0, Lcom/apk/s80;->new:Ljava/util/List;

    .line 6
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/apk/i80;

    .line 7
    check-cast v1, Lcom/tr/comment/sdk/bean/TrCommentBean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 10
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 11
    :cond_0
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v4

    iget-object v2, v2, Lcom/apk/i80;->native:Landroid/app/Activity;

    .line 12
    invoke-virtual {v4, v2, p2}, Lcom/apk/cb0;->if(Landroid/app/Activity;I)Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/apk/cb0;->for(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto/16 :goto_4

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 13
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 15
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 16
    :cond_2
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v4

    iget-object v2, v2, Lcom/apk/i80;->native:Landroid/app/Activity;

    .line 17
    invoke-virtual {v4, v2, p2}, Lcom/apk/cb0;->new(Landroid/app/Activity;I)Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/apk/cb0;->for(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto/16 :goto_4

    .line 18
    :cond_3
    sget v5, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_reply_tv:I

    sget v6, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_reply_txt:I

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getRepliesCount()I

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_4

    .line 19
    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getRepliesCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    :cond_4
    move-object v8, v9

    :goto_0
    aput-object v8, v7, v3

    .line 20
    invoke-static {v6, v7}, Lcom/apk/k40;->case(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/apk/r80;->new(ILjava/lang/String;)V

    .line 21
    sget v5, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_avatar_iv:I

    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserFace()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/ha0;->do(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/apk/r80;->for(II)V

    .line 22
    sget v5, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_author_tv:I

    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/apk/r80;->new(ILjava/lang/String;)V

    .line 23
    sget v5, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_data_tv:I

    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->isUserAdd()Z

    move-result v6

    if-eqz v6, :cond_5

    sget v6, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_reply_date_just:I

    invoke-static {v6}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/k40;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    :goto_1
    invoke-virtual {p1, v5, v6}, Lcom/apk/r80;->new(ILjava/lang/String;)V

    .line 26
    sget v5, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_content_tv:I

    invoke-virtual {p1, v5}, Lcom/apk/r80;->do(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 27
    iget-object v2, v2, Lcom/apk/s80;->for:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/apk/la0;->if(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    sget v2, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_iv:I

    invoke-virtual {p1, v2}, Lcom/apk/r80;->do(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 29
    sget v5, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_tv:I

    invoke-virtual {p1, v5}, Lcom/apk/r80;->do(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 30
    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getCommendCount()I

    move-result v6

    if-lez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getCommendCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    sget v6, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_like_txt:I

    .line 31
    invoke-static {v6}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object v6

    .line 32
    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->isLike()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 34
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 35
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_3

    .line 36
    :cond_7
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 37
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 38
    :goto_3
    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->isUserAdd()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_05000000:I

    invoke-static {v2}, Lcom/apk/k40;->do(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 40
    :cond_8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_00000000:I

    invoke-static {v2}, Lcom/apk/k40;->do(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    :goto_4
    iget-object v1, p1, Lcom/apk/r80;->if:Landroid/view/View;

    .line 42
    new-instance v2, Lcom/apk/z80;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/apk/z80;-><init>(Lcom/apk/b90;Lcom/apk/r80;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :goto_5
    iget-object v0, p0, Lcom/apk/b90;->while:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 44
    iget-object v0, p1, Lcom/apk/r80;->if:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/apk/b90;->while:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, p1, Lcom/apk/r80;->if:Landroid/view/View;

    .line 47
    iget-object v1, p0, Lcom/apk/b90;->while:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/apk/a90;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/apk/a90;-><init>(Lcom/apk/b90;ILcom/apk/r80;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/apk/s80;->catch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/apk/b90;->public(I)I

    move-result p2

    invoke-static {v0, p2, p1}, Lcom/apk/r80;->if(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/apk/r80;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/apk/s80;->for(Landroid/view/ViewGroup;I)Lcom/apk/r80;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract public(I)I
.end method
