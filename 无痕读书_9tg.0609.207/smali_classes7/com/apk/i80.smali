.class public Lcom/apk/i80;
.super Lcom/apk/b90;
.source "TrCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/b90<",
        "Lcom/tr/comment/sdk/bean/TrCommentBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final native:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrCommentBean;",
            ">;Z)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/apk/b90;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 2
    iput-object p1, p0, Lcom/apk/i80;->native:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 2
    invoke-virtual {p2}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getItemType()I

    move-result p1

    return p1
.end method

.method public public(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget p1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_gg_item_layout:I

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    sget p1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_gg_item_layout:I

    return p1

    .line 3
    :cond_1
    sget p1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_item_comment_view:I

    return p1
.end method

.method public return(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/apk/s80;->new(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 2
    invoke-virtual {p0, p1}, Lcom/apk/s80;->new(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-virtual {v0}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getCommendCount()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setCommendCount(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/s80;->new(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-virtual {p1, v2}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setLike(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
