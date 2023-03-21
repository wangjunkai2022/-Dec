.class public Lcom/biquge/ebook/app/adapter/NewStoreAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "NewStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/Book;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public case:Z

.field public final do:Landroid/app/Activity;

.field public else:Z

.field public for:Z

.field public goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;",
            ">;"
        }
    .end annotation
.end field

.field public if:Z

.field public new:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public this:Z

.field public final try:Lcom/biquge/ebook/app/widget/StoreRankLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->this:Z

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do:Landroid/app/Activity;

    const v0, 0x7f0c0118

    .line 4
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x2

    const v0, 0x7f0c0115

    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x15

    const v0, 0x7f0c0113

    .line 6
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x3

    const v0, 0x7f0c010b

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x14

    const v0, 0x7f0c0106

    .line 8
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x5

    const v0, 0x7f0c010c

    .line 9
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x6

    const v0, 0x7f0c010d

    .line 10
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x7

    const v0, 0x7f0c0117

    .line 11
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x8

    const v0, 0x7f0c0110

    .line 12
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x9

    const v0, 0x7f0c0114

    .line 13
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0xa

    const v0, 0x7f0c010f

    .line 14
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0xb

    const v0, 0x7f0c0107

    .line 15
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0xf

    const v0, 0x7f0c0105

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x10

    const v0, 0x7f0c0112

    .line 17
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x11

    const v0, 0x7f0c010e

    .line 18
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x12

    const v0, 0x7f0c0116

    .line 19
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x13

    const v0, 0x7f0c0108

    .line 20
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x16

    const v0, 0x7f0c0109

    .line 21
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x18

    const v0, 0x7f0c010a

    .line 22
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/16 p2, 0x19

    const v0, 0x7f0c0111

    .line 23
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 24
    new-instance p2, Lcom/biquge/ebook/app/widget/StoreRankLayout;

    invoke-direct {p2, p1}, Lcom/biquge/ebook/app/widget/StoreRankLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->try:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    const/16 v0, 0xc

    .line 25
    invoke-virtual {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    const/4 p2, 0x4

    const v0, 0x7f0c00e2

    .line 26
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    if-lez p3, :cond_1

    .line 27
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;

    if-nez p2, :cond_0

    .line 28
    new-instance p2, Lcom/apk/gg;

    invoke-direct {p2}, Lcom/apk/gg;-><init>()V

    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 29
    new-instance v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p1, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    add-int/lit8 v1, p2, 0x64

    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    .line 32
    iget-object v2, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    move-object/from16 v3, p2

    check-cast v3, Lcom/biquge/ebook/app/bean/Book;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const v9, 0x7f090346

    const v10, 0x7f090349

    const v11, 0x7f090344

    const-string v12, " \u8457"

    const v13, 0x7f090342

    const v14, 0x7f090326

    const v15, 0x7f100430

    const-string v7, ""

    const v4, 0x7f09033a

    const v5, 0x7f09032a

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    :try_start_0
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    goto/16 :goto_10

    .line 4
    :pswitch_1
    :try_start_1
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 5
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 7
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_12

    .line 10
    :pswitch_2
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 11
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 12
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_1
    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_12

    .line 15
    :pswitch_3
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 16
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 17
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_12

    .line 18
    :pswitch_4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 19
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 21
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 22
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 23
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    goto/16 :goto_12

    .line 24
    :pswitch_5
    :try_start_2
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 25
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 26
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 28
    :pswitch_6
    :try_start_3
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 29
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    goto/16 :goto_12

    .line 31
    :pswitch_7
    :try_start_4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 32
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 34
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 36
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_12

    :catch_1
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 38
    :pswitch_8
    :try_start_5
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 39
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :goto_2
    :pswitch_9
    :try_start_6
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 43
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 44
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    goto/16 :goto_12

    .line 46
    :pswitch_a
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->try:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    if-eqz v0, :cond_18

    iget-boolean v2, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->this:Z

    if-eqz v2, :cond_18

    .line 47
    iput-boolean v8, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->this:Z

    .line 48
    iget-boolean v2, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->case:Z

    iget-boolean v3, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->else:Z

    iget-object v4, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->goto:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/biquge/ebook/app/widget/StoreRankLayout;->for(ZZLjava/util/List;)V

    goto/16 :goto_12

    .line 49
    :pswitch_b
    :try_start_7
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 50
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 51
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    new-array v0, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_3
    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_12

    :catch_3
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 55
    :pswitch_c
    :try_start_8
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 56
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 57
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 60
    :pswitch_d
    :try_start_9
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 61
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 62
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 63
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090343

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  \u00b7  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_12

    :catch_5
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 66
    :pswitch_e
    :try_start_a
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 67
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 69
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_12

    :catch_6
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 71
    :pswitch_f
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDatas()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    if-ge v8, v3, :cond_18

    .line 73
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/Book;

    if-nez v8, :cond_3

    const v5, 0x7f09032e

    .line 74
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    const v5, 0x7f090336

    .line 75
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090322

    .line 76
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f09033b

    .line 77
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v4, v8}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V

    goto :goto_5

    :cond_3
    if-ne v8, v6, :cond_4

    const v5, 0x7f090330

    .line 78
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    const v5, 0x7f090338

    .line 79
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090324

    .line 80
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090340

    .line 81
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090345

    .line 82
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v4, v8}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V

    goto :goto_5

    :cond_4
    const/4 v5, 0x2

    if-ne v8, v5, :cond_5

    const v5, 0x7f090331

    .line 83
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    const v5, 0x7f090339

    .line 84
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090325

    .line 85
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090341

    .line 86
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090347

    .line 87
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v4, v8}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V

    :goto_5
    const/4 v5, 0x3

    goto :goto_6

    :cond_5
    const/4 v5, 0x3

    if-ne v8, v5, :cond_6

    const v7, 0x7f09032b

    .line 88
    invoke-virtual {v2, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v7}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    const v7, 0x7f090333

    .line 89
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f090320

    .line 90
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f09033e

    .line 91
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f090328

    .line 92
    invoke-virtual {v2, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v8}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V

    :goto_6
    const/4 v7, 0x4

    goto :goto_7

    :cond_6
    const/4 v7, 0x4

    if-ne v8, v7, :cond_7

    const v9, 0x7f09032c

    .line 93
    invoke-virtual {v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v9}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    const v9, 0x7f090334

    .line 94
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v9, 0x7f090321

    .line 95
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v9, 0x7f09033f

    .line 96
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getHot()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v9, 0x7f090329

    .line 97
    invoke-virtual {v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v9, v4, v8}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V

    goto :goto_7

    :cond_7
    const/4 v9, 0x5

    if-ne v8, v9, :cond_8

    const v9, 0x7f09032f

    .line 98
    invoke-virtual {v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v9}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    const v9, 0x7f090337

    .line 99
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v9, 0x7f090323

    .line 100
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/Book;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v9, 0x7f09033d

    .line 101
    invoke-virtual {v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v9, v4, v8}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V

    :cond_8
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 102
    :pswitch_10
    :try_start_b
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 103
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090327

    .line 105
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_12

    :catch_7
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 108
    :pswitch_11
    :try_start_c
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 109
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_12

    :pswitch_12
    const/4 v5, 0x3

    const/4 v7, 0x4

    const v0, 0x7f090352

    .line 110
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;

    .line 111
    iget-boolean v2, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->if:Z

    if-nez v2, :cond_a

    .line 112
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->for:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;

    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_13

    .line 113
    :cond_a
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDatas()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->for:Z

    if-eqz v3, :cond_b

    const/4 v4, 0x4

    goto :goto_9

    :cond_b
    const/4 v4, 0x3

    :goto_9
    if-eqz v0, :cond_14

    if-nez v2, :cond_c

    goto :goto_a

    :cond_c
    if-nez v4, :cond_d

    :goto_a
    const/4 v3, 0x0

    goto :goto_c

    .line 114
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 116
    rem-int v6, v5, v4

    .line 117
    div-int v7, v5, v4

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v7, :cond_e

    mul-int v10, v9, v4

    add-int/lit8 v9, v9, 0x1

    mul-int v11, v9, v4

    .line 118
    invoke-interface {v2, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 119
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    if-lez v6, :cond_f

    sub-int v6, v5, v6

    .line 120
    invoke-interface {v2, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_c
    if-eqz v3, :cond_12

    .line 122
    iget v2, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->do:I

    if-ne v2, v4, :cond_11

    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->for:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;

    if-nez v2, :cond_10

    goto :goto_d

    .line 123
    :cond_10
    iput-object v3, v2, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->if:Ljava/util/List;

    .line 124
    iput v4, v2, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;->for:I

    .line 125
    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_e

    .line 126
    :cond_11
    :goto_d
    new-instance v2, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v4, v6}, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/apk/dh;)V

    iput-object v2, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->for:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;

    .line 127
    iget-object v5, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->if:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v5, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 128
    :goto_e
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->new:Lcom/apk/sg;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/apk/sg;->for(I)V

    .line 129
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->new:Lcom/apk/sg;

    iget-object v3, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->if:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/apk/sg;->setSelectedPage(I)V

    .line 130
    :cond_12
    iput v4, v0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->do:I

    .line 131
    :cond_13
    iput-boolean v8, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->if:Z

    goto/16 :goto_12

    :cond_14
    const/4 v0, 0x0

    .line 132
    throw v0

    .line 133
    :pswitch_13
    :try_start_d
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V

    .line 134
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_12

    .line 136
    :pswitch_14
    :try_start_e
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 137
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [Ljava/lang/Object;

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v15, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 140
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 141
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_12

    :catch_8
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    :pswitch_15
    const v0, 0x7f090354

    .line 143
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getNavIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_15

    .line 145
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getNavIcon()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 146
    invoke-static {v4, v0, v8, v7, v8}, Lcom/apk/u;->return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V

    .line 147
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 148
    :cond_15
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    const v0, 0x7f090356

    .line 149
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCategoryTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090355

    .line 150
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 151
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getChangeFlag()Ljava/lang/String;

    move-result-object v7

    const-string v9, "yes"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x0

    :cond_16
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v4, v6, [I

    aput v0, v4, v8

    .line 152
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 153
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getMore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v6

    const v3, 0x7f090353

    invoke-virtual {v2, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v6, [I

    aput v3, v0, v8

    .line 154
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_12

    :goto_10
    if-eqz v0, :cond_18

    .line 155
    :try_start_f
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 156
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_18

    .line 157
    iget-object v2, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->try:Landroid/app/Activity;

    if-eqz v2, :cond_17

    goto :goto_11

    :cond_17
    const/4 v6, 0x0

    :goto_11
    if-nez v6, :cond_18

    .line 158
    iget-object v2, v1, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->do:Landroid/app/Activity;

    const-string v3, "rectbsy1"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_a
    :cond_18
    :goto_12
    :pswitch_16
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final do(Lcom/biquge/ebook/app/bean/Book;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->isNovel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public for()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;

    invoke-direct {v0, p0, p2, p3}, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;-><init>(Lcom/biquge/ebook/app/adapter/NewStoreAdapter;Lcom/biquge/ebook/app/bean/Book;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
