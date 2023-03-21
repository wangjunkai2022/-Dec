.class public Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;
.super Lcom/apk/f6;
.source "BookReadEndActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public do:Z

.field public for:Lorg/json/JSONObject;

.field public if:Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;

.field public mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a9
    .end annotation
.end field

.field public mBookListInfoTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b8
    .end annotation
.end field

.field public mBookListLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090116
    .end annotation
.end field

.field public mBooklistImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b9
    .end annotation
.end field

.field public mBooklistTitleTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ba
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090118
    .end annotation
.end field

.field public new:Lcom/apk/v3;

.field public final try:Lcom/apk/u5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;-><init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->try:Lcom/apk/u5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isNight"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "isEye"

    .line 3
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 4
    :cond_1
    iput-boolean v2, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->do:Z

    if-eqz v2, :cond_2

    const v0, 0x7f0c0030

    goto :goto_0

    :cond_2
    const v0, 0x7f0c002f

    :goto_0
    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/v3;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->try:Lcom/apk/u5;

    invoke-direct {v0, p0, v1}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->new:Lcom/apk/v3;

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->do:Z

    invoke-direct {v0, v1}, Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->if:Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/finally;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const-string v2, "rectbdetail"

    invoke-virtual {v1, p0, v0, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->new:Lcom/apk/v3;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ver9/base"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/mantuijian.html"

    goto :goto_1

    :cond_1
    const-string v2, "/ladytuijian.html"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x2932e00

    .line 10
    sget-object v4, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v5, Lcom/apk/j4;

    const-string v6, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v5, v1, v6}, Lcom/apk/j4;-><init>(Lcom/apk/v3;Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_2

    .line 11
    :cond_2
    throw v0

    .line 12
    :cond_3
    :goto_2
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/switch;->try(Landroid/app/Activity;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->if:Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->do:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/apk/f6;->setImmersionBar(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09044e,
            0x7f090450,
            0x7f090112,
            0x7f090111,
            0x7f09044f,
            0x7f0902b9
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09044e

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090450

    if-ne v1, v2, :cond_1

    .line 4
    invoke-static {p0, v0}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090112

    const-string v3, "source"

    const-string v4, "type"

    if-ne v1, v2, :cond_2

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e9

    .line 7
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090111

    if-ne v1, v2, :cond_3

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    .line 13
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09044f

    if-ne v0, v1, :cond_5

    const p1, 0x7f10026f

    .line 18
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lady"

    goto :goto_0

    :cond_4
    const-string v0, "man"

    :goto_0
    const-string v1, "commend"

    .line 20
    invoke-static {p0, p1, v0, v1}, Lcom/biquge/ebook/app/ui/activity/RankListWeekActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902b9

    if-ne p1, v0, :cond_6

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->for:Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    const-string v0, "ListId"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->for:Lorg/json/JSONObject;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p0, p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/switch;->if()V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->if:Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    return v0

    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_1
    return v0

    .line 4
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/apk/switch;->if:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/switch;->if:Z

    return-void
.end method
