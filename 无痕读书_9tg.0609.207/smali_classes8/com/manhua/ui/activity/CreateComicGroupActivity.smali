.class public Lcom/manhua/ui/activity/CreateComicGroupActivity;
.super Lcom/apk/f6;
.source "CreateComicGroupActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation
.end field

.field public for:Landroidx/recyclerview/widget/RecyclerView;

.field public if:Ljava/lang/String;

.field public new:Lcom/manhua/adapter/ComicGroupAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/manhua/ui/activity/CreateComicGroupActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Lcom/manhua/ui/activity/CreateComicGroupActivity;ZZ)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 2
    :cond_0
    new-instance p2, Lcom/apk/i10;

    invoke-direct {p2, p0, p1}, Lcom/apk/i10;-><init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;Z)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/CreateComicGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    check-cast p1, Ljava/io/Serializable;

    const-string v1, "EXTRA_GROUP_BOOK_LIST_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "EXTRA_GROUP_ID_KEY"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_LIST_MODE_KEY"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_BIG_STYLE_KEY"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x70

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010023

    const p2, 0x7f010024

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->finish()V

    const v0, 0x7f010024

    const v1, 0x7f010029

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0039

    return v0
.end method

.method public initData()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_GROUP_BOOK_LIST_KEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->do:Ljava/util/List;

    const-string v1, "EXTRA_GROUP_ID_KEY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->if:Ljava/lang/String;

    const-string v1, "EXTRA_LIST_MODE_KEY"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "EXTRA_BIG_STYLE_KEY"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_1

    if-eqz v7, :cond_0

    const v0, 0x7f0c00d8

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00d9

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->for:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    const v0, 0x7f0c00d6

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const v0, 0x7f0c00d7

    const/4 v1, 0x4

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->for:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_2
    move v8, v0

    .line 8
    new-instance v0, Lcom/manhua/adapter/ComicGroupAdapter;

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/manhua/adapter/ComicGroupAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ZZI)V

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->new:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/manhua/ui/activity/CreateComicGroupActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/CreateComicGroupActivity$do;-><init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->new:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->new:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0901a1

    const v1, 0x7f1001b3

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    const v0, 0x7f090060

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->for:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->new:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CREATE_BOOKGROUP_TO_SHELF"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    .line 4
    invoke-virtual {p0, p1, p1}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "CREATE_BOOKGROUP_CREATE"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f1001b0

    .line 6
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1001b4

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->new:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/apk/lv;

    invoke-direct {v1}, Lcom/apk/lv;-><init>()V

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    iput-object v2, v1, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    .line 11
    new-instance v2, Lcom/manhua/ui/activity/CreateComicGroupActivity$if;

    invoke-direct {v2, p0}, Lcom/manhua/ui/activity/CreateComicGroupActivity$if;-><init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;)V

    .line 12
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    .line 14
    new-instance v3, Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lxj/xpopup/impl/InputConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 15
    iput-object p1, v3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 16
    iput-object p1, v3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    .line 17
    iput-object v0, v3, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 18
    iput-object v0, v3, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    .line 19
    iput-object p1, v3, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->super:Lcom/apk/sv;

    .line 20
    iput-object v2, v3, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->throw:Lcom/apk/wv;

    .line 21
    iput-object v1, v3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 22
    invoke-virtual {v3}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;

    invoke-direct {v1, p0, p1, p2}, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;-><init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    new-instance v0, Lcom/apk/i10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apk/i10;-><init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;Z)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->k(I)V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->k(I)V

    return-void
.end method
