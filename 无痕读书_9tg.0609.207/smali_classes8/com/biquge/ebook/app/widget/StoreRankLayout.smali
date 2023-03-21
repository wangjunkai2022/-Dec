.class public Lcom/biquge/ebook/app/widget/StoreRankLayout;
.super Landroid/widget/FrameLayout;
.source "StoreRankLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/StoreRankLayout$for;,
        Lcom/biquge/ebook/app/widget/StoreRankLayout$if;
    }
.end annotation


# instance fields
.field public case:[Ljava/lang/String;

.field public do:Landroid/widget/TextView;

.field public else:Ljava/lang/String;

.field public for:Landroid/widget/TextView;

.field public goto:Z

.field public if:Landroid/widget/TextView;

.field public listLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09050a
    .end annotation
.end field

.field public new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

.field public this:I

.field public topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090511
    .end annotation
.end field

.field public topRankLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090513
    .end annotation
.end field

.field public topRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090514
    .end annotation
.end field

.field public try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00ec

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 5
    new-instance p1, Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    invoke-direct {p1}, Lcom/biquge/ebook/app/widget/StoreRankLayout$for;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 7
    new-instance v0, Lcom/apk/bh;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    invoke-direct {v0, v2, v1}, Lcom/apk/bh;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    new-instance v0, Lcom/apk/ah;

    invoke-direct {v0, p0}, Lcom/apk/ah;-><init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public static do(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, "\n"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public for(ZZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->goto:Z

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->try:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->try:Ljava/util/Map;

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topRankLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topRankLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xe

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;

    .line 8
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;->getViewType()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;->getBookList()Ljava/util/List;

    move-result-object v6

    const-string v7, "2c"

    .line 10
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 11
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {v7, v4}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    goto :goto_2

    :cond_4
    const/16 v8, 0xa

    .line 13
    invoke-virtual {v7, v8}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/bean/Book;

    const/16 v7, 0xd

    .line 15
    invoke-virtual {v5, v7}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->try:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 18
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 19
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;

    .line 20
    iget-object v5, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;->getCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 21
    :cond_8
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p3, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v3, 0x1c

    invoke-static {p3, v2, v3, v4}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 23
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v2, Lcom/biquge/ebook/app/widget/StoreRankLayout$do;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/widget/StoreRankLayout$do;-><init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;)V

    invoke-virtual {p3, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    .line 24
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v2, Lcom/apk/nz;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    .line 25
    invoke-direct {v2, v3, v4, v0}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 26
    invoke-virtual {p3, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 27
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    if-eqz p3, :cond_9

    .line 28
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    aget-object p3, p3, p1

    iput-object p3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->else:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->try:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-virtual {v2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 30
    :cond_9
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p3, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz p2, :cond_a

    .line 32
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->listLayout:Landroid/widget/LinearLayout;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lcom/apk/eg;->catch(F)I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 33
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->topIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const p1, 0x7f090512

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f09050b

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f09050c

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do:Landroid/widget/TextView;

    const p1, 0x7f09050e

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if:Landroid/widget/TextView;

    const p1, 0x7f09050d

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->for:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->for:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    const/4 p3, 0x2

    aget-object p2, p2, p3

    invoke-static {p2}, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 43
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do:Landroid/widget/TextView;

    new-instance p2, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v0, v2}, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;-><init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;ILcom/apk/ah;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if:Landroid/widget/TextView;

    new-instance p2, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;

    invoke-direct {p2, p0, v1, v2}, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;-><init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;ILcom/apk/ah;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->for:Landroid/widget/TextView;

    new-instance p2, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;

    invoke-direct {p2, p0, p3, v2}, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;-><init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;ILcom/apk/ah;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if(I)V

    goto :goto_6

    .line 47
    :cond_a
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->listLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_6
    return-void
.end method

.method public final if(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->for:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->for:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->for:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->do:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->this:I

    if-le p2, p1, :cond_0

    .line 3
    iput p2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->this:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    move-result p1

    iget p2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->this:I

    if-ge p1, p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method
