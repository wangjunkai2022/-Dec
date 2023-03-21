.class public Lcom/manhua/adapter/ComicNewStoreAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ComicNewStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/manhua/data/bean/ComicBean;",
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
            "Lcom/biquge/ebook/app/bean/ComicStoreBean$TopTabsBean;",
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

.field public final try:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->this:Z

    .line 3
    iput-object p1, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->do:Landroid/app/Activity;

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
    new-instance p2, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    iget-object v0, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->do:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->try:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    const/16 v0, 0xc

    .line 25
    invoke-virtual {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    const/4 p2, 0x4

    const v0, 0x7f0c007a

    .line 26
    invoke-virtual {p0, p2, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    if-lez p3, :cond_1

    .line 27
    iget-object p2, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->new:Lcom/apk/gg;

    if-nez p2, :cond_0

    .line 28
    new-instance p2, Lcom/apk/gg;

    invoke-direct {p2}, Lcom/apk/gg;-><init>()V

    iput-object p2, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->new:Lcom/apk/gg;

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 29
    new-instance v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p1, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v2, "rectbsy1"

    .line 31
    invoke-virtual {v0, p1, v1, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x64

    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    .line 33
    iget-object v2, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->new:Lcom/apk/gg;

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

    check-cast v3, Lcom/manhua/data/bean/ComicBean;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f090349

    const v12, 0x7f090344

    const-string v13, " \u8457"

    const v14, 0x7f100430

    const-string v15, ""

    const v7, 0x7f090326

    const v5, 0x7f090342

    const v6, 0x7f09033a

    const v4, 0x7f09032a

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_12

    .line 3
    :pswitch_1
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 4
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 6
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_12

    .line 7
    :pswitch_2
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 8
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 9
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_12

    .line 10
    :pswitch_3
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 11
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 13
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 14
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 15
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    goto/16 :goto_12

    .line 16
    :pswitch_4
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 17
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 18
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 20
    :pswitch_5
    :try_start_2
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 21
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    goto/16 :goto_12

    .line 23
    :pswitch_6
    :try_start_3
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 24
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v8, [Ljava/lang/Object;

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    invoke-static {v14, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 26
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v2, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 27
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 28
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f090346

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 29
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_12

    :catch_1
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 31
    :pswitch_7
    :try_start_4
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 32
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v8, [Ljava/lang/Object;

    .line 33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    invoke-static {v14, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :goto_3
    :pswitch_8
    :try_start_5
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 36
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 37
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v8, [Ljava/lang/Object;

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    invoke-static {v14, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_12

    :catch_3
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 40
    :pswitch_9
    iget-object v0, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->try:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    if-eqz v0, :cond_1a

    iget-boolean v2, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->this:Z

    if-eqz v2, :cond_1a

    .line 41
    iput-boolean v9, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->this:Z

    .line 42
    iget-boolean v2, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->case:Z

    iget-boolean v3, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->else:Z

    iget-object v4, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->goto:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->for(ZZLjava/util/List;)V

    goto/16 :goto_12

    .line 43
    :pswitch_a
    :try_start_6
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 44
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 46
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 48
    :pswitch_b
    :try_start_7
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 49
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 50
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v8, [Ljava/lang/Object;

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    invoke-static {v14, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_12

    :catch_5
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 53
    :pswitch_c
    :try_start_8
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 54
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v8, [Ljava/lang/Object;

    .line 55
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static {v14, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 56
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090343

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  \u00b7  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_12

    :catch_6
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 59
    :pswitch_d
    :try_start_9
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 60
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 62
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f090346

    invoke-virtual {v2, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_12

    :catch_7
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 64
    :pswitch_e
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getDatas()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_5
    if-ge v9, v3, :cond_1a

    .line 66
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/manhua/data/bean/ComicBean;

    if-nez v9, :cond_4

    const v5, 0x7f09032e

    .line 67
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    const v5, 0x7f090336

    .line 68
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090322

    .line 69
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f09033b

    .line 70
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/manhua/adapter/ComicNewStoreAdapter;->new(Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_6

    :cond_4
    if-ne v9, v8, :cond_5

    const v5, 0x7f090330

    .line 71
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    const v5, 0x7f090338

    .line 72
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090324

    .line 73
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090340

    .line 74
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090345

    .line 75
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/manhua/adapter/ComicNewStoreAdapter;->new(Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_6

    :cond_5
    const/4 v5, 0x2

    if-ne v9, v5, :cond_6

    const v5, 0x7f090331

    .line 76
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    const v5, 0x7f090339

    .line 77
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090325

    .line 78
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090341

    .line 79
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f090347

    .line 80
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/manhua/adapter/ComicNewStoreAdapter;->new(Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V

    :goto_6
    const/4 v5, 0x3

    goto :goto_7

    :cond_6
    const/4 v5, 0x3

    if-ne v9, v5, :cond_7

    const v6, 0x7f09032b

    .line 81
    invoke-virtual {v2, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v6}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    const v6, 0x7f090333

    .line 82
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v6, 0x7f090320

    .line 83
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v6, 0x7f09033e

    .line 84
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v6, 0x7f090328

    .line 85
    invoke-virtual {v2, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Lcom/manhua/adapter/ComicNewStoreAdapter;->new(Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V

    :goto_7
    const/4 v6, 0x4

    goto :goto_8

    :cond_7
    const/4 v6, 0x4

    if-ne v9, v6, :cond_8

    const v7, 0x7f09032c

    .line 86
    invoke-virtual {v2, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v7}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    const v7, 0x7f090334

    .line 87
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f090321

    .line 88
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f09033f

    .line 89
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f090329

    .line 90
    invoke-virtual {v2, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Lcom/manhua/adapter/ComicNewStoreAdapter;->new(Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_8

    :cond_8
    const/4 v7, 0x5

    if-ne v9, v7, :cond_9

    const v7, 0x7f09032f

    .line 91
    invoke-virtual {v2, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v7}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    const v7, 0x7f090337

    .line 92
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f090323

    .line 93
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v7, 0x7f09033d

    .line 94
    invoke-virtual {v2, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Lcom/manhua/adapter/ComicNewStoreAdapter;->new(Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V

    :cond_9
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 95
    :pswitch_f
    :try_start_a
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 96
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090327

    .line 98
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v8, [Ljava/lang/Object;

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    invoke-static {v14, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_12

    :catch_8
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 101
    :pswitch_10
    :try_start_b
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 102
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_12

    :pswitch_11
    const/4 v5, 0x3

    const/4 v6, 0x4

    const v0, 0x7f090352

    .line 103
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;

    .line 104
    iget-boolean v2, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->if:Z

    if-nez v2, :cond_b

    .line 105
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->for:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$do;

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_14

    .line 106
    :cond_b
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getDatas()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->for:Z

    if-eqz v3, :cond_c

    const/4 v5, 0x4

    :cond_c
    if-eqz v0, :cond_15

    if-nez v2, :cond_d

    goto :goto_a

    :cond_d
    if-nez v5, :cond_e

    :goto_a
    const/4 v7, 0x0

    goto :goto_c

    .line 107
    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 109
    rem-int v4, v3, v5

    .line 110
    div-int v6, v3, v5

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v6, :cond_f

    mul-int v10, v8, v5

    add-int/lit8 v8, v8, 0x1

    mul-int v11, v8, v5

    .line 111
    invoke-interface {v2, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 112
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    if-lez v4, :cond_10

    sub-int v4, v3, v4

    .line 113
    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_c
    if-eqz v7, :cond_13

    .line 115
    iget v2, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->do:I

    if-ne v2, v5, :cond_12

    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->for:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$do;

    if-nez v2, :cond_11

    goto :goto_d

    .line 116
    :cond_11
    iput-object v7, v2, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$do;->if:Ljava/util/List;

    .line 117
    iput v5, v2, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$do;->for:I

    .line 118
    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_e

    .line 119
    :cond_12
    :goto_d
    new-instance v2, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$do;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v7, v5}, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$do;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v2, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->for:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$do;

    .line 120
    iget-object v3, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->if:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 121
    :goto_e
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->new:Lcom/apk/sg;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/apk/sg;->for(I)V

    .line 122
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->new:Lcom/apk/sg;

    iget-object v3, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->if:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/apk/sg;->setSelectedPage(I)V

    .line 123
    :cond_13
    iput v5, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->do:I

    .line 124
    :cond_14
    iput-boolean v9, v1, Lcom/manhua/adapter/ComicNewStoreAdapter;->if:Z

    goto/16 :goto_12

    :cond_15
    const/4 v0, 0x0

    .line 125
    throw v0

    .line 126
    :pswitch_12
    :try_start_c
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V

    .line 127
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 128
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getHot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_12

    .line 129
    :pswitch_13
    :try_start_d
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 130
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v0, v8, [Ljava/lang/Object;

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    invoke-static {v14, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 133
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_16

    goto :goto_f

    :cond_16
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v2, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 134
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 135
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/manhua/adapter/ComicNewStoreAdapter;->do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_12

    :catch_9
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :pswitch_14
    const v0, 0x7f090354

    .line 137
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 138
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getNavIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_17

    .line 139
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getNavIcon()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 140
    invoke-static {v4, v0, v9, v6, v9}, Lcom/apk/u;->return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V

    .line 141
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 142
    :cond_17
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_10
    const v0, 0x7f090356

    .line 143
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getCategoryTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090355

    .line 144
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getChangeFlag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x0

    goto :goto_11

    :cond_18
    const/16 v6, 0x8

    :goto_11
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v4, v8, [I

    aput v0, v4, v9

    .line 146
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090353

    .line 147
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getMore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const/4 v5, 0x0

    :cond_19
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-array v3, v8, [I

    aput v0, v3, v9

    .line 149
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    :catch_a
    :cond_1a
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_12
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final do(Lcom/manhua/data/bean/ComicBean;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->isCartton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public for()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->new:Lcom/apk/gg;

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
    iget-object v0, p0, Lcom/manhua/adapter/ComicNewStoreAdapter;->new:Lcom/apk/gg;

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

.method public final new(Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/gz;

    invoke-direct {v0, p0, p2}, Lcom/apk/gz;-><init>(Lcom/manhua/adapter/ComicNewStoreAdapter;Lcom/manhua/data/bean/ComicBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
