.class public Lcom/apk/x10;
.super Lcom/apk/g6;
.source "ComicRankFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# static fields
.field public static final import:[Ljava/lang/String;

.field public static final while:[Ljava/lang/String;


# instance fields
.field public break:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public case:Landroid/widget/TextView;

.field public catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public class:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public const:Lorg/json/JSONObject;

.field public do:I

.field public else:Lcom/manhua/ui/widget/PublicLoadingView;

.field public final final:Lcom/apk/bg;

.field public for:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

.field public goto:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

.field public if:Lcom/apk/z2;

.field public new:Lcom/manhua/ui/widget/PageRecyclerView;

.field public final super:Lcom/apk/r5;

.field public this:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public final throw:Lcom/apk/b40$new;

.field public try:Lcom/manhua/adapter/ComicRankListAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f100277

    .line 1
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f10026a

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f100268

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f100266

    .line 4
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f100270

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f100263

    .line 6
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/apk/x10;->while:[Ljava/lang/String;

    const-string v3, "new"

    const-string v4, "hot"

    const-string v5, "vote"

    const-string v6, "over"

    const-string v7, "commend"

    const-string v8, "collect"

    .line 7
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/x10;->import:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/apk/x10;->do:I

    .line 3
    new-instance v0, Lcom/apk/x10$for;

    invoke-direct {v0, p0}, Lcom/apk/x10$for;-><init>(Lcom/apk/x10;)V

    iput-object v0, p0, Lcom/apk/x10;->final:Lcom/apk/bg;

    .line 4
    new-instance v0, Lcom/apk/x10$case;

    invoke-direct {v0, p0}, Lcom/apk/x10$case;-><init>(Lcom/apk/x10;)V

    iput-object v0, p0, Lcom/apk/x10;->super:Lcom/apk/r5;

    .line 5
    new-instance v0, Lcom/apk/x10$else;

    invoke-direct {v0, p0}, Lcom/apk/x10$else;-><init>(Lcom/apk/x10;)V

    iput-object v0, p0, Lcom/apk/x10;->throw:Lcom/apk/b40$new;

    return-void
.end method

.method public static a(Lcom/apk/x10;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/x10;->this:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 2
    sget-object v1, Lcom/apk/x10;->import:[Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/x10;->break:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    .line 3
    sget-object v2, Lcom/apk/q0;->else:[Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/x10;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v3

    aget-object v2, v2, v3

    .line 4
    sget-object v3, Lcom/apk/q0;->catch:[Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/x10;->class:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v4

    aget-object v3, v3, v4

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/apk/x10;->if:Lcom/apk/z2;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 6
    iput v4, p0, Lcom/apk/x10;->do:I

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/w;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/apk/x10;->if:Lcom/apk/z2;

    iget p0, p0, Lcom/apk/x10;->do:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static f(Lcom/apk/x10;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/apk/q0;->this:[Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/x10;->this:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 2
    sget-object v1, Lcom/apk/x10;->import:[Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/x10;->break:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    .line 3
    sget-object v2, Lcom/apk/q0;->else:[Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/x10;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v3

    aget-object v2, v2, v3

    .line 4
    sget-object v3, Lcom/apk/q0;->catch:[Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/x10;->class:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v4

    aget-object v3, v3, v4

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/apk/x10;->if:Lcom/apk/z2;

    if-eqz v4, :cond_0

    .line 6
    iget v4, p0, Lcom/apk/x10;->do:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/w;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/apk/x10;->if:Lcom/apk/z2;

    iget p0, p0, Lcom/apk/x10;->do:I

    invoke-virtual {v1, v0, p0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public static synthetic h(Lcom/apk/x10;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/x10;->k(Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;)Lcom/apk/x10;
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/x10;

    invoke-direct {v0}, Lcom/apk/x10;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "rankTypeName"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synchronized(Lcom/apk/x10;ZLjava/util/List;ZI)V
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    add-int/2addr p4, v2

    .line 4
    iput p4, p0, Lcom/apk/x10;->do:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    add-int/2addr p4, v2

    .line 8
    iput p4, p0, Lcom/apk/x10;->do:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0087

    return v0
.end method

.method public initData()V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/x10;->super:Lcom/apk/r5;

    invoke-direct {v0, v1, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/apk/x10;->if:Lcom/apk/z2;

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    .line 5
    iput-object v0, p0, Lcom/apk/x10;->const:Lorg/json/JSONObject;

    const-string v0, "topweek"

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->finally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/apk/finally;->d:Lorg/json/JSONObject;

    .line 9
    iput-object v0, p0, Lcom/apk/x10;->const:Lorg/json/JSONObject;

    const-string v0, "topmonth"

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/apk/finally;->e:Lorg/json/JSONObject;

    .line 13
    iput-object v0, p0, Lcom/apk/x10;->const:Lorg/json/JSONObject;

    const-string v0, "toptotal"

    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 14
    :goto_1
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    iget-object v4, p0, Lcom/apk/x10;->const:Lorg/json/JSONObject;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 15
    iget-object v2, p0, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const v2, 0x7f0c0078

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    iput-object v0, p0, Lcom/apk/x10;->goto:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 17
    iget-object v1, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 18
    iget-object v0, p0, Lcom/apk/x10;->goto:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v1, 0x7f09027d

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v1, p0, Lcom/apk/x10;->this:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const v1, 0x7f09027f

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v1, p0, Lcom/apk/x10;->break:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 22
    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const v1, 0x7f09027c

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v1, p0, Lcom/apk/x10;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 24
    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const v1, 0x7f09027b

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p0, Lcom/apk/x10;->class:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 26
    invoke-virtual {v0, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const/high16 v0, 0x42700000    # 60.0f

    .line 27
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    .line 28
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v1

    sget-object v3, Lcom/apk/x10;->while:[Ljava/lang/String;

    array-length v3, v3

    div-int/2addr v1, v3

    if-le v1, v0, :cond_3

    const/high16 v3, 0x42960000    # 75.0f

    .line 29
    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    if-ge v1, v3, :cond_3

    move v0, v1

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/apk/x10;->this:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v3, Lcom/apk/q0;->goto:[Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/x10;->throw:Lcom/apk/b40$new;

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/apk/x10;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 31
    iget-object v1, p0, Lcom/apk/x10;->break:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v3, Lcom/apk/x10;->while:[Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/x10;->throw:Lcom/apk/b40$new;

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/apk/x10;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 32
    iget-object v1, p0, Lcom/apk/x10;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v3, Lcom/apk/q0;->case:[Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/x10;->throw:Lcom/apk/b40$new;

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/apk/x10;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 33
    iget-object v1, p0, Lcom/apk/x10;->class:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    sget-object v3, Lcom/apk/q0;->break:[Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/x10;->throw:Lcom/apk/b40$new;

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/apk/x10;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const-string v3, "rankTypeName"

    .line 35
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 37
    sget-object v3, Lcom/apk/x10;->while:[Ljava/lang/String;

    array-length v3, v3

    :goto_2
    if-ge v2, v3, :cond_5

    .line 38
    sget-object v4, Lcom/apk/x10;->while:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    .line 39
    :goto_3
    iget-object v0, p0, Lcom/apk/x10;->break:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V

    .line 40
    iget-object v0, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    new-instance v2, Lcom/apk/x10$new;

    invoke-direct {v2, p0}, Lcom/apk/x10$new;-><init>(Lcom/apk/x10;)V

    iget-object v3, p0, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/apk/x10;->k(Z)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090187

    .line 3
    invoke-virtual {p0, v1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/manhua/ui/widget/PageRecyclerView;

    iput-object v1, p0, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v1, p0, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    iget-object v1, p0, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v1}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v1, v2}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    const v1, 0x7f090186

    .line 8
    invoke-virtual {p0, v1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/apk/x10;->case:Landroid/widget/TextView;

    .line 9
    iget-object v2, p0, Lcom/apk/x10;->final:Lcom/apk/bg;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090078

    .line 10
    invoke-virtual {p0, v1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object v1, p0, Lcom/apk/x10;->else:Lcom/manhua/ui/widget/PublicLoadingView;

    const v1, 0x7f09046d

    .line 11
    invoke-virtual {p0, v1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v1, p0, Lcom/apk/x10;->for:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 12
    new-instance v2, Lcom/apk/x10$do;

    invoke-direct {v2, p0}, Lcom/apk/x10$do;-><init>(Lcom/apk/x10;)V

    invoke-virtual {v1, v2}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 13
    iget-object v1, p0, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    new-instance v2, Lcom/apk/x10$if;

    invoke-direct {v2, p0, v0}, Lcom/apk/x10$if;-><init>(Lcom/apk/x10;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;[Ljava/lang/String;Lcom/apk/b40$new;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    array-length v0, p2

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {v0, v1, p2, p4}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    const/16 p4, 0x28

    const/16 v0, 0xe

    invoke-static {p2, p1, p4, v0}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final k(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/apk/x10;->for:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/apk/x10$try;

    invoke-direct {v0, p0}, Lcom/apk/x10$try;-><init>(Lcom/apk/x10;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/x10;->for:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getItemType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 3
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p3

    const-class v0, Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "book"

    .line 4
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
