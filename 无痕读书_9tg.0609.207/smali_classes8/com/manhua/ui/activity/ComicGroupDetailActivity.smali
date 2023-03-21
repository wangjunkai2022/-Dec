.class public Lcom/manhua/ui/activity/ComicGroupDetailActivity;
.super Lcom/apk/f6;
.source "ComicGroupDetailActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;
    }
.end annotation


# instance fields
.field public case:Lcom/manhua/adapter/ComicGroupAdapter;

.field public do:Lcom/manhua/data/bean/ComicCollectBean;

.field public else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation
.end field

.field public for:Z

.field public goto:Lcom/apk/yg;

.field public if:Z

.field public mEditFinishTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090414
    .end annotation
.end field

.field public mMoreView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090415
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09005f
    .end annotation
.end field

.field public mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090416
    .end annotation
.end field

.field public new:Z

.field public this:Lcom/manhua/ui/view/ComicMenuPopupView;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 9

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10012c

    .line 3
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/apk/c10;

    invoke-direct {v6, p0, v0, p1}, Lcom/apk/c10;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/lang/String;Lcom/manhua/data/bean/ComicCollectBean;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static j(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->n(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static k(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupId()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->for:Z

    iget-boolean v2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->new:Z

    invoke-static {p0, v0, p1, v1, v2}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static l(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/util/List;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/d10;

    invoke-direct {v1, p0, p1}, Lcom/apk/d10;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static m(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/z00;

    invoke-direct {v1, p0, v0}, Lcom/apk/z00;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/util/LinkedList;)V

    invoke-virtual {p1, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static r(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;ZZZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_KEY"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_EDIT_KEY"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_LIST_MODE_KEY"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_BIG_STYLE_KEY"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010023

    const p2, 0x7f010024

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {p1, p0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/apk/f6;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->finish()V

    const v0, 0x7f010024

    const v1, 0x7f010029

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    invoke-static {}, Lcom/apk/ze;->V()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0032

    return v0
.end method

.method public initData()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_KEY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    iput-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->do:Lcom/manhua/data/bean/ComicCollectBean;

    const-string v1, "EXTRA_IS_EDIT_KEY"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->if:Z

    const-string v1, "EXTRA_LIST_MODE_KEY"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->for:Z

    const-string v1, "EXTRA_BIG_STYLE_KEY"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->new:Z

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->setText(Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->for:Z

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->new:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c00d8

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00d9

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_2

    .line 10
    :cond_1
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->new:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0c00d6

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const v0, 0x7f0c00d7

    const/4 v1, 0x4

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_2
    move v9, v0

    .line 12
    new-instance v0, Lcom/manhua/adapter/ComicGroupAdapter;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->for:Z

    iget-boolean v8, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->new:Z

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/manhua/adapter/ComicGroupAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ZZI)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 13
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/b10;

    invoke-direct {v1, p0}, Lcom/apk/b10;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    new-instance v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->setOnEditFinishListener(Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;)V

    .line 4
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090413,
            0x7f090415,
            0x7f090414
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {p1, p0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if(Landroid/app/Activity;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array v1, p1, [Ljava/lang/String;

    const v2, 0x7f10019a

    .line 4
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v2, 0x7f1001bd

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array p1, p1, [I

    .line 5
    fill-array-data p1, :array_0

    .line 6
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    iput-object v3, v2, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 9
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    .line 10
    iput-object v3, v2, Lcom/apk/lv;->else:Landroid/view/View;

    .line 11
    new-instance v3, Lcom/apk/a10;

    invoke-direct {v3, p0}, Lcom/apk/a10;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    .line 12
    sget-boolean v4, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean v4, v2, Lcom/apk/lv;->continue:Z

    .line 14
    new-instance v4, Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-direct {v4, p0, v0, v0}, Lcom/lxj/xpopup/impl/AttachListPopupView;-><init>(Landroid/content/Context;II)V

    .line 15
    iput-object v1, v4, Lcom/lxj/xpopup/impl/AttachListPopupView;->super:[Ljava/lang/String;

    .line 16
    iput-object p1, v4, Lcom/lxj/xpopup/impl/AttachListPopupView;->throw:[I

    .line 17
    iput-object v3, v4, Lcom/lxj/xpopup/impl/AttachListPopupView;->while:Lcom/apk/xv;

    .line 18
    iput-object v2, v4, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 19
    invoke-virtual {v4}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_0

    :pswitch_1
    const/4 p1, -0x1

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->s(ZI)V

    goto :goto_0

    .line 21
    :pswitch_2
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->onBackPressed()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090413
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0800f0
        0x7f0800f3
    .end array-data
.end method

.method public final n(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f100196

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity$if;

    invoke-direct {v1, p0, p1}, Lcom/manhua/ui/activity/ComicGroupDetailActivity$if;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Ljava/util/List;)V

    new-instance p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity$for;

    invoke-direct {p1, p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity$for;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    new-instance v2, Lcom/manhua/ui/activity/ComicGroupDetailActivity$new;

    invoke-direct {v2, p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity$new;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    invoke-static {p0, v0, v1, p1, v2}, Lcom/apk/eg;->g(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/gt;Lcom/apk/et;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1001ca

    .line 3
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/yg;

    new-instance v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/apk/yg;-><init>(Landroid/app/Activity;Lcom/apk/bg;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x70

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const-string p2, "data"

    .line 2
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_2

    .line 3
    iget-object p3, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p2, :cond_1

    .line 6
    iget-object p3, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->s(ZI)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if(Landroid/app/Activity;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, v0, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->s(ZI)V

    return-void

    .line 6
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "refresh_shelf_book"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/b10;

    invoke-direct {v0, p0}, Lcom/apk/b10;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_0
    return-void
.end method

.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0902fc

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->q(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->p(I)V

    :goto_0
    return-void
.end method

.method public onItemChildLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->q(I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->p(I)V

    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->q(I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final p(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 2
    iget-boolean v0, v0, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->o()V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v1, p1}, Lcom/manhua/adapter/ComicGroupAdapter;->for(I)I

    move-result p1

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/apk/yg;->do(II)V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/mu;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setFirstChapterId(Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-static {v0}, Lcom/apk/mu;->const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setFirstChapterId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 17
    invoke-static {p0, v0, p1}, Lcom/manhua/ui/activity/ComicReadActivity;->I(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final q(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    .line 4
    new-instance v2, Lcom/manhua/ui/view/ComicMenuPopupView;

    new-instance v3, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;ILcom/manhua/data/bean/ComicCollectBean;Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;)V

    const/4 p1, 0x0

    invoke-direct {v2, p0, v0, v3, p1}, Lcom/manhua/ui/view/ComicMenuPopupView;-><init>(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;Lcom/apk/g1;Z)V

    iput-object v2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->this:Lcom/manhua/ui/view/ComicMenuPopupView;

    .line 5
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->this:Lcom/manhua/ui/view/ComicMenuPopupView;

    .line 7
    instance-of v2, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_1

    .line 8
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v2, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 10
    :cond_1
    instance-of v2, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v2, :cond_2

    .line 11
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean v2, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_2
    instance-of v2, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v2, :cond_3

    .line 14
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v2, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_3
    instance-of v2, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v2, :cond_4

    .line 17
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v2, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_4
    instance-of v2, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v2, :cond_5

    .line 20
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v2, p1, Lcom/apk/lv;->continue:Z

    .line 22
    :cond_5
    :goto_0
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return v1
.end method

.method public final s(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 2
    iput-boolean p1, v0, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    .line 3
    iget-object v1, v0, Lcom/manhua/adapter/ComicGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->o()V

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lcom/apk/e10;

    invoke-direct {p1, p0}, Lcom/apk/e10;-><init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V

    invoke-virtual {p0, p1}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    :cond_1
    if-ltz p2, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->o()V

    .line 10
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p2}, Lcom/manhua/adapter/ComicGroupAdapter;->for(I)I

    move-result p2

    const/4 v0, -0x1

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->o()V

    .line 14
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 17
    iget-boolean p1, p1, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mEditFinishTView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p2}, Lcom/apk/eg;->catch(F)I

    move-result p2

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mEditFinishTView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_1
    return-void
.end method
