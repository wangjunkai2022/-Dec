.class public Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;
.super Lcom/apk/f6;
.source "BookListDetailActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public break:Lcom/biquge/ebook/app/widget/ExpandableTextView;

.field public case:Landroid/widget/ImageView;

.field public catch:Ljava/lang/String;

.field public class:Ljava/lang/String;

.field public const:Lcom/biquge/ebook/app/bean/BookInfoEntity;

.field public do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

.field public else:Landroid/widget/TextView;

.field public final final:Lcom/apk/u5;

.field public for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

.field public goto:Landroid/widget/TextView;

.field public if:Lcom/apk/v3;

.field public mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09043a
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public final super:Lcom/apk/bg;

.field public this:Landroid/widget/TextView;

.field public try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->final:Lcom/apk/u5;

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->super:Lcom/apk/bg;

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "LIST_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "LIST_NAME"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0033

    return v0
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->if:Lcom/apk/v3;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->if:Lcom/apk/v3;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/apk/w;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/w3;

    const-string v4, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v3, v0, v4}, Lcom/apk/w3;-><init>(Lcom/apk/v3;Ljava/lang/String;)V

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

.method public initData()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LIST_ID"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    const-string v1, "LIST_NAME"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->class:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v1, v2}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0c00da

    .line 6
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    const v2, 0x7f090039

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->case:Landroid/widget/ImageView;

    const v2, 0x7f09003a

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->else:Landroid/widget/TextView;

    const v2, 0x7f090037

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->goto:Landroid/widget/TextView;

    const v2, 0x7f090038

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->this:Landroid/widget/TextView;

    const v2, 0x7f0900d1

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->break:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    const v2, 0x7f0900b1

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    const v2, 0x7f090036

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->super:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090033

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->super:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090035

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->super:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090034

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->super:Lcom/apk/bg;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900a4

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const v2, 0x7f0900a9

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 20
    new-instance v0, Lcom/apk/v3;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->final:Lcom/apk/u5;

    invoke-direct {v0, p0, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->if:Lcom/apk/v3;

    .line 21
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->i()V

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/apk/w0;->throws()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->class:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    if-eqz v2, :cond_0

    .line 26
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->catch:Ljava/lang/String;

    iget-object v8, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->class:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->do(Landroidx/fragment/app/FragmentActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/finally;->volatile()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0900a5

    .line 30
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const-string v3, "sddetaillist"

    invoke-virtual {v2, p0, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/finally;->strictfp()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v2, :cond_2

    const v2, 0x7f0900aa

    .line 34
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const-string v2, "rectsddetail"

    invoke-virtual {v0, p0, v1, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090061

    const v1, 0x7f100145

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/apk/n6;

    invoke-direct {v1, p0}, Lcom/apk/n6;-><init>(Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->i()V

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    :cond_2
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 3
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    .line 4
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->for:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->try:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_2
    return-void
.end method
