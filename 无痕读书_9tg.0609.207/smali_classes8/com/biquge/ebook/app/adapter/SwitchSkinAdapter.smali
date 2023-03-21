.class public Lcom/biquge/ebook/app/adapter/SwitchSkinAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SwitchSkinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/SkinModel;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/SkinModel;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c0130

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/SkinModel;

    .line 2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/SkinModel;->getBgColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f09034f

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/SkinModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f090351

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const-string p2, "APP_SKIN_STYLE_KEY"

    const/4 v0, 0x0

    .line 4
    invoke-static {p2, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const p2, 0x7f090350

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
