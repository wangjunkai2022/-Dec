.class public Lcom/biquge/ebook/app/adapter/BookMarkAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BookMarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/BookMark;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Z

.field public final for:I

.field public final if:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/BookMark;",
            ">;"
        }
    .end annotation
.end field

.field public final new:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const v0, 0x7f0c00f6

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    .line 3
    iput p1, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->for:I

    .line 4
    iput p2, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->new:I

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/bean/BookMark;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookMark;->getNovelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookMark;->getChapterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookMark;->getReadPage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/BookMark;

    const v0, 0x7f0902ce

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMark;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0902cc

    .line 4
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMark;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0902cd

    .line 6
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMark;->getSaveTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/apk/kg;->goto(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget v3, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->for:I

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->new:I

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget v0, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->new:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v0, 0x7f0902cf

    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 14
    iget-boolean v0, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->do:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-static {p2}, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->do(Lcom/biquge/ebook/app/bean/BookMark;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public if(Z)V
    .locals 0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->do:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-virtual {p1}, Lcom/apk/gg;->clear()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
