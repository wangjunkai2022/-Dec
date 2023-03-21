.class public Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "NovelBatchCachePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public do:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c00f3

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
    check-cast p2, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;

    const v0, 0x7f0902b1

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;->do:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 4
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget p2, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;->do:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0902b2

    .line 7
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    .line 8
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f06003c

    .line 9
    invoke-static {p2}, Lcom/apk/ze;->p(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
