.class public Lcom/manhua/ui/view/ComicMenuPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "ComicMenuPopupView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public final do:Lcom/manhua/data/bean/ComicCollectBean;

.field public final for:Lcom/apk/g1;

.field public final if:Z

.field public new:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;Lcom/apk/g1;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 3
    iput-object p3, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->for:Lcom/apk/g1;

    .line 4
    iput-boolean p4, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->if:Z

    return-void
.end method

.method public static if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0, p2}, Lcom/manhua/ui/view/ComicMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;
    .locals 7

    .line 1
    new-instance v6, Lcom/biquge/ebook/app/bean/BookMenuItem;

    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v6

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/biquge/ebook/app/bean/BookMenuItem;-><init>(ILjava/lang/String;ZZI)V

    return-object v6
.end method


# virtual methods
.method public break(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->new:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/SwitchButton;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->toggle()V

    :cond_0
    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c015e

    return v0
.end method

.method public onCreate()V
    .locals 15

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0901c9

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    const v1, 0x7f0901cb

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901c6

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901cc

    .line 5
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901c8

    .line 6
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7
    new-instance v5, Lcom/apk/e20;

    invoke-direct {v5, p0}, Lcom/apk/e20;-><init>(Lcom/manhua/ui/view/ComicMenuPopupView;)V

    const v6, 0x7f090418

    .line 8
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0901cd

    .line 10
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->new:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v4, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->new:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const v4, 0x7f0902c6

    .line 13
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 14
    iget-object v6, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicCollectBean;->isNew()Z

    move-result v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    .line 15
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-boolean v6, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->if:Z

    const/4 v10, 0x3

    const v11, 0x7f08006f

    const v12, 0x7f1001c2

    const/4 v13, 0x2

    const v14, 0x7f080072

    if-eqz v6, :cond_1

    .line 19
    iget-object v6, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupBookCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0901c7

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 26
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 27
    new-instance v1, Lcom/biquge/ebook/app/adapter/ImageAdapter;

    iget-object v2, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupIcons()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lcom/biquge/ebook/app/adapter/ImageAdapter;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 30
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getStickTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v5

    .line 31
    invoke-static {v14, v12, v5, v0, v9}, Lcom/manhua/ui/view/ComicMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f080071

    const v1, 0x7f1001c4

    .line 32
    invoke-static {v0, v1, v5}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f1001bd

    .line 33
    invoke-static {v11, v0, v13}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f08006c

    const v1, 0x7f1001be

    .line 34
    invoke-static {v0, v1, v10}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 35
    :cond_1
    iget-object v6, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v6}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->setComicCover(Lcom/manhua/data/bean/ComicCollectBean;)V

    const v0, 0x7f10042e

    new-array v1, v5, [Ljava/lang/Object;

    .line 38
    iget-object v2, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getLastCapterName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 40
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getStickTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v5

    .line 41
    invoke-static {v14, v12, v5, v0, v9}, Lcom/manhua/ui/view/ComicMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f08006d

    const v1, 0x7f1001ad

    .line 42
    invoke-static {v0, v1, v13}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/apk/w0;->throws()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080070

    const v1, 0x7f1001af

    .line 44
    invoke-static {v0, v1, v10}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const v0, 0x7f08006e

    const v1, 0x7f1001b2

    .line 45
    invoke-static {v0, v1, v7}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f1001b9

    const/4 v1, 0x5

    .line 46
    invoke-static {v14, v0, v1}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f08006a

    const v1, 0x7f1001ae

    const/4 v2, 0x6

    .line 47
    invoke-static {v0, v1, v2}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f08006b

    const v1, 0x7f1001b1

    const/4 v2, 0x7

    .line 48
    invoke-static {v0, v1, v2}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f1001b3

    .line 49
    invoke-static {v11, v0, v8}, Lcom/manhua/ui/view/ComicMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_1
    new-instance v0, Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;

    invoke-direct {v0, v4}, Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;-><init>(Ljava/util/List;)V

    .line 51
    iget-object v1, p0, Lcom/manhua/ui/view/ComicMenuPopupView;->new:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    new-instance v1, Lcom/apk/f20;

    invoke-direct {v1, p0, v0}, Lcom/apk/f20;-><init>(Lcom/manhua/ui/view/ComicMenuPopupView;Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method
