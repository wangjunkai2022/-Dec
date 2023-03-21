.class public Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "BookMenuPopupView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public authorTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c6
    .end annotation
.end field

.field public detailTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c8
    .end annotation
.end field

.field public final do:Lcom/biquge/ebook/app/bean/CollectBook;

.field public final for:Lcom/apk/g1;

.field public headView:Lcom/biquge/ebook/app/ui/view/CoverImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c9
    .end annotation
.end field

.field public final if:Z

.field public menuRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901cd
    .end annotation
.end field

.field public nameTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901cb
    .end annotation
.end field

.field public newChapterTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901cc
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CollectBook;Lcom/apk/g1;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->for:Lcom/apk/g1;

    .line 4
    iput-boolean p4, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if:Z

    return-void
.end method

.method public static if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0, p2}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->menuRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

.method public menuClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901c8,
            0x7f090418
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901c8

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->for:Lcom/apk/g1;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method

.method public onCreate()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    invoke-static/range {p0 .. p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->menuRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->menuRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const v1, 0x7f0902c6

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->isNew()Z

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v1

    .line 10
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v3

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-boolean v8, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if:Z

    const v9, 0x7f080071

    const/4 v10, 0x2

    const v11, 0x7f080072

    const/4 v12, 0x3

    const v13, 0x7f08006f

    if-eqz v8, :cond_1

    .line 13
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->nameTxt:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->authorTxt:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupBookCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->newChapterTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->headView:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x7f0901c7

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/widget/NightRecyclerView;

    .line 18
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 20
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 21
    new-instance v3, Lcom/biquge/ebook/app/adapter/ImageAdapter;

    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupIcons()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/biquge/ebook/app/adapter/ImageAdapter;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v1, 0x7f1001c3

    .line 23
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 24
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 25
    invoke-static {v11, v1, v2, v3, v5}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1001c4

    .line 26
    invoke-static {v9, v1, v2}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1001bd

    .line 27
    invoke-static {v13, v1, v10}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08006c

    const v2, 0x7f1001be

    .line 28
    invoke-static {v1, v2, v12}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 29
    :cond_1
    iget-object v8, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->nameTxt:Landroid/widget/TextView;

    iget-object v14, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v14}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v8, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->authorTxt:Landroid/widget/TextView;

    iget-object v14, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v14}, Lcom/biquge/ebook/app/bean/CollectBook;->getAuthor()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v8, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->headView:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    iget-object v14, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v8, v14}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->setCover(Lcom/biquge/ebook/app/bean/CollectBook;)V

    const v8, 0x7f1001ad

    const v14, 0x7f08006d

    const v15, 0x7f08006b

    const v4, 0x7f1001c2

    const v13, 0x7f1001b1

    const v12, 0x7f1001b3

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->detailTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 34
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 35
    invoke-static {v11, v4, v2, v1, v5}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v14, v8, v2}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1001b8

    .line 37
    invoke-static {v9, v1, v10}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 38
    invoke-static {v15, v13, v1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    const v2, 0x7f08006f

    .line 39
    invoke-static {v2, v12, v1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    const/4 v1, 0x5

    const v9, 0x7f1001b9

    const/4 v8, 0x7

    if-eqz v3, :cond_4

    .line 40
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getExternalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 41
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 42
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 43
    invoke-static {v11, v4, v2, v3, v5}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v15, v13, v8}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v11, v9, v1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08006f

    .line 46
    invoke-static {v1, v12, v6}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_3
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 48
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 49
    invoke-static {v11, v4, v2, v3, v5}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1001ad

    .line 50
    invoke-static {v14, v2, v10}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08006e

    const v3, 0x7f1001b2

    const/4 v4, 0x4

    .line 51
    invoke-static {v2, v3, v4}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v11, v9, v1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v15, v13, v8}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08006f

    .line 54
    invoke-static {v1, v12, v6}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :goto_1
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->detailTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 56
    :cond_4
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->newChapterTxt:Landroid/widget/TextView;

    const v6, 0x7f10042e

    new-array v12, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastCapterName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v5

    invoke-static {v6, v12}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 58
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 59
    invoke-static {v11, v4, v2, v3, v5}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->this(IIZZI)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1001ad

    .line 60
    invoke-static {v14, v2, v10}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/apk/w0;->throws()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f080070

    const v3, 0x7f1001af

    const/4 v4, 0x3

    .line 62
    invoke-static {v2, v3, v4}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const v2, 0x7f08006e

    const v3, 0x7f1001b2

    const/4 v4, 0x4

    .line 63
    invoke-static {v2, v3, v4}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v11, v9, v1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08006a

    const v2, 0x7f1001ae

    const/4 v3, 0x6

    .line 65
    invoke-static {v1, v2, v3}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 66
    invoke-static {v15, v13, v1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    const v2, 0x7f1001b3

    const v3, 0x7f08006f

    .line 67
    invoke-static {v3, v2, v1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->if(III)Lcom/biquge/ebook/app/bean/BookMenuItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :goto_2
    new-instance v1, Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;

    invoke-direct {v1, v7}, Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;-><init>(Ljava/util/List;)V

    .line 69
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->menuRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    new-instance v2, Lcom/apk/qc;

    invoke-direct {v2, v0, v1}, Lcom/apk/qc;-><init>(Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method
