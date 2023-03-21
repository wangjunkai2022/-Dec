.class public Lcom/manhua/ui/activity/ComicNewReleaseActivity;
.super Lcom/apk/f6;
.source "ComicNewReleaseActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public case:Lorg/json/JSONObject;

.field public do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public final else:Lcom/apk/r5;

.field public for:Lcom/manhua/ui/widget/PageRecyclerView;

.field public final goto:Lcom/apk/b40$new;

.field public if:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

.field public new:Lcom/manhua/adapter/ComicRankListAdapter;

.field public try:Lcom/apk/z2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicNewReleaseActivity$for;-><init>(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->else:Lcom/apk/r5;

    .line 3
    new-instance v0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$new;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicNewReleaseActivity$new;-><init>(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->goto:Lcom/apk/b40$new;

    return-void
.end method

.method public static i(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->try:Lcom/apk/z2;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, "/StaticFiles/ManNewPublish.html"

    goto :goto_1

    :cond_1
    const-string v0, "/StaticFiles/LadyNewPublish.html"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->try:Lcom/apk/z2;

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/apk/z2;->return(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static synthetic j(Lcom/manhua/ui/activity/ComicNewReleaseActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->l(Z)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0085

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/z2;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->else:Lcom/apk/r5;

    invoke-direct {v0, p0, v1}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->try:Lcom/apk/z2;

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    .line 5
    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->case:Lorg/json/JSONObject;

    .line 6
    :cond_0
    new-instance v0, Lcom/manhua/adapter/ComicRankListAdapter;

    iget-object v3, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->case:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "topweek"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->new:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 7
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->for:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->new:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->l(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f090185

    const v1, 0x7f1000f4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    const v0, 0x7f090220

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/apk/nz;

    sget-object v2, Lcom/apk/q0;->goto:[Ljava/lang/String;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->goto:Lcom/apk/b40$new;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v1, 0x23

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090187

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/manhua/ui/widget/PageRecyclerView;

    iput-object v1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->for:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->for:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->for:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->for:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {p0, v0}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    const v0, 0x7f09046d

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->if:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 14
    new-instance v1, Lcom/manhua/ui/activity/ComicNewReleaseActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicNewReleaseActivity$do;-><init>(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public final l(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->if:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$if;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicNewReleaseActivity$if;-><init>(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->if:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->new:Lcom/manhua/adapter/ComicRankListAdapter;

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

    const-class p3, Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "book"

    .line 4
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
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
