.class public Lcom/manhua/ui/activity/AddComicFromShelfActivity;
.super Lcom/apk/f6;
.source "AddComicFromShelfActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/manhua/adapter/ComicGroupAdapter;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public mSelectFinishBT:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->do:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002b

    return v0
.end method

.method public final i(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mSelectFinishBT:Landroid/widget/Button;

    const v1, 0x7f1001d1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initData()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "books"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicBean;

    .line 6
    iget-object v2, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->do:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/manhua/adapter/ComicGroupAdapter;

    .line 8
    invoke-static {}, Lcom/apk/mu;->interface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v2, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const v9, 0x7f0c00d8

    move-object v4, v0

    move-object v5, p0

    .line 9
    invoke-direct/range {v4 .. v9}, Lcom/manhua/adapter/ComicGroupAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ZZI)V

    iput-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->if:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 10
    iget-object v1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->do:Ljava/util/Map;

    .line 11
    iput-object v1, v0, Lcom/manhua/adapter/ComicGroupAdapter;->if:Ljava/util/Map;

    .line 12
    iget-object v1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->if:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0900a3

    const v1, 0x7f1000ff

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->i(I)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904c0,
            0x7f0904c2
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904c0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0904c2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->if:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {p1}, Lcom/manhua/adapter/ComicGroupAdapter;->do()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    .line 6
    new-instance v2, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v2}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getBookType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setCName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setAuthor(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getLastCapterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setLastChapter(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getLastCapterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/manhua/data/bean/ComicBean;->setLastChapterId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/manhua/data/bean/ComicBean;->setFirstChapterId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "books"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 22
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->if:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 23
    iget-object v0, p1, Lcom/manhua/adapter/ComicGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 25
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    iget-object p1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->if:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->i(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->if:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->do:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->if:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {p1, p3}, Lcom/manhua/adapter/ComicGroupAdapter;->for(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/AddComicFromShelfActivity;->i(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
