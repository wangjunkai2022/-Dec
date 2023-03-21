.class public Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BookReadEndAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/Book;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Z

.field public for:I

.field public if:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const v0, 0x7f0c00ff

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;->do:Z

    if-eqz p1, :cond_0

    const-string p1, "#999999"

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;->for:I

    goto :goto_0

    :cond_0
    const-string p1, "#333333"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;->if:I

    :goto_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/Book;

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09032a

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f09033a

    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-boolean p2, p0, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;->do:Z

    if-eqz p2, :cond_0

    .line 6
    iget p2, p0, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;->for:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;->if:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
