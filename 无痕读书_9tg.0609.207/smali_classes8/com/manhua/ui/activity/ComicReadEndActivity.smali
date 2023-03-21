.class public Lcom/manhua/ui/activity/ComicReadEndActivity;
.super Lcom/apk/f6;
.source "ComicReadEndActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public do:Lorg/json/JSONObject;

.field public for:Lcom/apk/z2;

.field public if:Lcom/manhua/adapter/ComicReadEndAdapter;

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

.field public final new:Lcom/apk/r5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicReadEndActivity$do;-><init>(Lcom/manhua/ui/activity/ComicReadEndActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->new:Lcom/apk/r5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002f

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/z2;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->new:Lcom/apk/r5;

    invoke-direct {v0, p0, v1}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->for:Lcom/apk/z2;

    .line 2
    new-instance v0, Lcom/manhua/adapter/ComicReadEndAdapter;

    invoke-direct {v0}, Lcom/manhua/adapter/ComicReadEndAdapter;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->if:Lcom/manhua/adapter/ComicReadEndAdapter;

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

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
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->for:Lcom/apk/z2;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

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

    new-instance v5, Lcom/apk/a3;

    const-string v6, "SP_HOST_SHUC_MH_KEY"

    invoke-direct {v5, v1, v6}, Lcom/apk/a3;-><init>(Lcom/apk/z2;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->if:Lcom/manhua/adapter/ComicReadEndAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public isDarkFont()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 4
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
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v1, "source"

    const-string v2, "type"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-static {p0, v0}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    goto :goto_0

    :sswitch_1
    const p1, 0x7f10026f

    .line 3
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/apk/q0;->this:[Ljava/lang/String;

    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "commend"

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/manhua/ui/activity/ComicRankListWeekActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :sswitch_2
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_0

    .line 7
    :sswitch_3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->do:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "ListId"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->do:Lorg/json/JSONObject;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p0, p1, v0}, Lcom/manhua/ui/activity/ComicListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v3, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e9

    .line 12
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_0

    .line 16
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v3, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3ea

    .line 17
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090111 -> :sswitch_5
        0x7f090112 -> :sswitch_4
        0x7f0902b9 -> :sswitch_3
        0x7f09044e -> :sswitch_2
        0x7f09044f -> :sswitch_1
        0x7f090450 -> :sswitch_0
    .end sparse-switch
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
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->if:Lcom/manhua/adapter/ComicReadEndAdapter;

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
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

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
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

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
