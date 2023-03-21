.class public Lcom/manhua/ui/activity/ComicListDetailActivity;
.super Lcom/apk/f6;
.source "ComicListDetailActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public break:Landroidx/recyclerview/widget/RecyclerView;

.field public case:Landroid/widget/TextView;

.field public catch:Lcom/manhua/adapter/ComicRankListAdapter;

.field public class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

.field public do:Ljava/lang/String;

.field public else:Lcom/biquge/ebook/app/widget/ExpandableTextView;

.field public final:Lcom/manhua/ui/widget/PublicLoadingView;

.field public for:Landroid/widget/ImageView;

.field public goto:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

.field public if:Ljava/lang/String;

.field public new:Landroid/widget/TextView;

.field public super:Lcom/manhua/data/bean/ComicInfoEntity;

.field public this:Lcom/apk/z2;

.field public final throw:Lcom/apk/r5;

.field public try:Landroid/widget/TextView;

.field public final while:Lcom/apk/bg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicListDetailActivity$if;-><init>(Lcom/manhua/ui/activity/ComicListDetailActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->throw:Lcom/apk/r5;

    .line 3
    new-instance v0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicListDetailActivity$for;-><init>(Lcom/manhua/ui/activity/ComicListDetailActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->while:Lcom/apk/bg;

    return-void
.end method

.method public static synthetic i(Lcom/manhua/ui/activity/ComicListDetailActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicListDetailActivity;->j()V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicListDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LIST_ID"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "LIST_NAME"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0071

    return v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "LIST_ID"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    const-string v0, "LIST_NAME"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->if:Ljava/lang/String;

    return-void
.end method

.method public initData()V
    .locals 9

    .line 1
    new-instance v6, Lcom/manhua/adapter/ComicRankListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/manhua/adapter/ComicRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V

    iput-object v6, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->break:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0c0079

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    const v2, 0x7f090039

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->for:Landroid/widget/ImageView;

    const v2, 0x7f09003a

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->new:Landroid/widget/TextView;

    const v2, 0x7f090037

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->try:Landroid/widget/TextView;

    const v2, 0x7f090038

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->case:Landroid/widget/TextView;

    const v2, 0x7f0900d1

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->else:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    const v2, 0x7f0900b1

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->goto:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    const v2, 0x7f090036

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->while:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090033

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->while:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090035

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->while:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090034

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->while:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900a4

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const v2, 0x7f0900a9

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 17
    new-instance v0, Lcom/apk/z2;

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->throw:Lcom/apk/r5;

    invoke-direct {v0, p0, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->this:Lcom/apk/z2;

    .line 18
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicListDetailActivity;->j()V

    .line 19
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-static {}, Lcom/apk/w0;->throws()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->if:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->goto:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    if-eqz v2, :cond_0

    .line 23
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->goto:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    iget-object v8, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->if:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->do(Landroidx/fragment/app/FragmentActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->goto:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/finally;->volatile()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0900a5

    .line 27
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const-string v3, "sddetaillist"

    invoke-virtual {v2, p0, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/finally;->strictfp()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0900aa

    .line 31
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const-string v2, "rectsddetail"

    invoke-virtual {v0, p0, v1, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090071

    const v1, 0x7f100145

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    const v0, 0x7f09043a

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->final:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 3
    new-instance v1, Lcom/manhua/ui/activity/ComicListDetailActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicListDetailActivity$do;-><init>(Lcom/manhua/ui/activity/ComicListDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    const v0, 0x7f09048c

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->break:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->break:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->break:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->break:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v0}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->this:Lcom/apk/z2;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1}, Lcom/apk/w;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/j3;

    const-string v4, "SP_HOST_SHUC_MH_KEY"

    invoke-direct {v3, v0, v4}, Lcom/apk/j3;-><init>(Lcom/apk/z2;Ljava/lang/String;)V

    const-wide/32 v4, 0x2bf20

    invoke-static {v1, v4, v5, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->do()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    .line 6
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    .line 9
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    :cond_2
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

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
    invoke-static {p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->if()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->catch:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicRankListAdapter;->for()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_2
    return-void
.end method
