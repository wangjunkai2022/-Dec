.class public Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment$do;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SameThHistoryTotalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/ui/fragment/SameThHistoryTotalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/SameTjHistory;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c0131

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/SameTjHistory;

    const v0, 0x7f090317

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "movie"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const-string v2, "tingshu"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    const v0, 0x7f090318

    .line 8
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090316

    .line 9
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
