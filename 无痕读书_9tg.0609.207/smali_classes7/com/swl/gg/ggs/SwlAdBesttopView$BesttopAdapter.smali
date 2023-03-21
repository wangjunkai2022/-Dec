.class public Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SwlAdBesttopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swl/gg/ggs/SwlAdBesttopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BesttopAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/swl/gg/bean/SwlAdView;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final width:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0c01d4

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, 0x3

    if-ge p2, p1, :cond_0

    const/4 p2, 0x3

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result p1

    .line 4
    div-int/2addr p1, p2

    iput p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;->width:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILcom/swl/gg/ggs/SwlAdBesttopView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 5

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;->width:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090663

    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    sget-object v1, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/k40;->continue()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p2}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v1, Lcom/apk/y;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    :cond_0
    const v0, 0x7f090664

    .line 6
    invoke-virtual {p2}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/swl/gg/bean/SwlAdView;

    invoke-virtual {p0, p1, p2}, Lcom/swl/gg/ggs/SwlAdBesttopView$BesttopAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method
