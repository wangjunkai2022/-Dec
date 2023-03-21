.class public Lcom/manhua/ui/fragment/ComicShelfFragment;
.super Lcom/apk/qa;
.source "ComicShelfFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/fragment/ComicShelfFragment$break;
    }
.end annotation


# instance fields
.field public break:Z

.field public final case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;"
        }
    .end annotation
.end field

.field public catch:Landroid/widget/LinearLayout;

.field public class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

.field public else:Z

.field public final:Lcom/apk/class;

.field public for:Landroid/view/View;

.field public goto:Z

.field public if:J

.field public final import:Ljava/lang/Runnable;

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023c
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023d
    .end annotation
.end field

.field public final native:Lcom/apk/s5;

.field public new:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public public:Lcom/manhua/ui/view/ComicMenuPopupView;

.field public return:Lcom/lxj/xpopup/impl/LoadingPopupView;

.field public static:Z

.field public super:Landroid/view/View;

.field public this:Z

.field public throw:Lcom/apk/yg;

.field public try:Lcom/manhua/adapter/ComicGroupAdapter;

.field public while:Lcom/apk/p3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/qa;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/manhua/ui/fragment/ComicShelfFragment$case;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$case;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->import:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/manhua/ui/fragment/ComicShelfFragment$else;

    invoke-direct {v0, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$else;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->native:Lcom/apk/s5;

    return-void
.end method

.method public static f(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->this:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->import:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/apk/i6;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->import:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->if:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    iget-boolean p0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->this:Z

    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/l3;

    invoke-direct {v2, v1, p0}, Lcom/apk/l3;-><init>(Lcom/apk/p3;Z)V

    invoke-virtual {v0, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_1
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 8
    :cond_2
    throw v0
.end method

.method public static h(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->return:Lcom/lxj/xpopup/impl/LoadingPopupView;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/apk/lv;

    invoke-direct {v1}, Lcom/apk/lv;-><init>()V

    .line 4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iput-object v2, v1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iput-object v2, v1, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 8
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    .line 10
    new-instance v3, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {v3, v0, v2}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {v3, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 12
    iput-object v1, v3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 13
    iput-object v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->return:Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->return:Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public static i(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->return:Lcom/lxj/xpopup/impl/LoadingPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->return:Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->return:Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static j(Lcom/manhua/ui/fragment/ComicShelfFragment;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/y10;

    invoke-direct {v1, p0, p1}, Lcom/apk/y10;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;I)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static k(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->for:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f090214

    .line 3
    invoke-virtual {p0, v0}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->for:Landroid/view/View;

    const v1, 0x7f090216

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1001c9

    .line 6
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->for:Landroid/view/View;

    const v1, 0x7f090213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/apk/a20;

    invoke-direct {v1, p0}, Lcom/apk/a20;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->for:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->v(Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->for:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 11
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->for:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic l(Lcom/manhua/ui/fragment/ComicShelfFragment;Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/apk/j6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void
.end method

.method public static m(Lcom/manhua/ui/fragment/ComicShelfFragment;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 7

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const v3, 0x7f10012c

    invoke-static {v3, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/apk/c20;

    invoke-direct {v4, p0, v0, p1}, Lcom/apk/c20;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/lang/String;Lcom/manhua/data/bean/ComicCollectBean;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/apk/j6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static n(Lcom/manhua/ui/fragment/ComicShelfFragment;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->r(Ljava/util/List;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static o(Lcom/manhua/ui/fragment/ComicShelfFragment;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-boolean v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->else:Z

    iget-boolean p0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    const-string v2, ""

    invoke-static {p1, v0, v2, v1, p0}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static p(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/util/List;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/z10;

    invoke-direct {v1, p0, p1}, Lcom/apk/z10;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b3

    return v0
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/qa;->initData()V

    .line 2
    new-instance v0, Lcom/apk/p3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->native:Lcom/apk/s5;

    invoke-direct {v0, v1, v2}, Lcom/apk/p3;-><init>(Landroid/app/Activity;Lcom/apk/s5;)V

    iput-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    .line 3
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/manhua/ui/fragment/ComicShelfFragment$try;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$try;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/qa;->initView()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/g6;->registerEventBus(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 7
    iput-boolean v1, v0, Lcom/apk/ss;->throw:Z

    .line 8
    new-instance v1, Lcom/manhua/ui/fragment/ComicShelfFragment$new;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$new;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->final:Lcom/apk/class;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/apk/class;->try()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    .line 8
    :cond_2
    invoke-virtual {p0, p0}, Lcom/apk/g6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "refresh_shelf_book"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-eqz p1, :cond_4

    .line 4
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/k3;

    invoke-direct {v1, p1}, Lcom/apk/k3;-><init>(Lcom/apk/p3;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto/16 :goto_1

    :cond_0
    const-string v1, "SWITCH_FOREGROUND_KEY"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 10
    iget-byte p1, p1, Lcom/apk/ss;->do:B

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 11
    iput-boolean v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->this:Z

    .line 12
    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->break:Z

    .line 13
    invoke-virtual {p0, v2}, Lcom/manhua/ui/fragment/ComicShelfFragment;->w(Z)V

    goto :goto_1

    :cond_2
    const-string v1, "login_action"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object p1, p1, Lcom/apk/mf;->for:[Ljava/lang/Object;

    .line 16
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 17
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    const/4 v1, 0x2

    .line 18
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 19
    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->this:Z

    .line 20
    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->break:Z

    .line 21
    invoke-virtual {p0, v2}, Lcom/manhua/ui/fragment/ComicShelfFragment;->w(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "REFRESH_CARTOON_DOWNLOAD_KEY"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/apk/qa;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->do()V

    :cond_4
    :goto_1
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
    invoke-virtual {p0, p3}, Lcom/manhua/ui/fragment/ComicShelfFragment;->t(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/manhua/ui/fragment/ComicShelfFragment;->s(I)V

    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/manhua/ui/fragment/ComicShelfFragment;->s(I)V

    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/manhua/ui/fragment/ComicShelfFragment;->t(I)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->u(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/k6;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->u(Z)V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_0
    iput-boolean v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->else:Z

    if-eqz v3, :cond_4

    if-nez p1, :cond_2

    const p1, 0x7f0c00d8

    .line 4
    :try_start_0
    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    const v8, 0x7f0c00d8

    goto :goto_1

    :cond_2
    const p1, 0x7f0c00d9

    .line 5
    iput-boolean v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    const v8, 0x7f0c00d9

    .line 6
    :goto_1
    new-instance p1, Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    iget-object v5, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/manhua/adapter/ComicGroupAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ZZI)V

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->new:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->new:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->new:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_5

    const p1, 0x7f0c00d6

    const/4 v0, 0x3

    .line 11
    :try_start_1
    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    const v8, 0x7f0c00d6

    goto :goto_2

    :cond_5
    const p1, 0x7f0c00d7

    const/4 v0, 0x4

    .line 12
    iput-boolean v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    const v8, 0x7f0c00d7

    .line 13
    :goto_2
    new-instance p1, Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    iget-object v5, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/manhua/adapter/ComicGroupAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ZZI)V

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 14
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    invoke-static {}, Lcom/apk/ze;->C()Z

    move-result p1

    .line 18
    iget-boolean v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->break:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    :cond_7
    iput-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->break:Z

    .line 20
    invoke-virtual {p0, v2}, Lcom/manhua/ui/fragment/ComicShelfFragment;->w(Z)V

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    if-eqz p1, :cond_10

    .line 24
    :try_start_2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    if-nez p1, :cond_9

    .line 25
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    .line 26
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 27
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_4

    .line 28
    :cond_9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 29
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_a

    .line 30
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 31
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p1, :cond_b

    .line 32
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 33
    :cond_b
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->interface()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 34
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-nez p1, :cond_10

    .line 35
    new-instance p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    .line 36
    invoke-direct {p1, v2, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 38
    invoke-virtual {p1, v1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    .line 39
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const-string v2, "shelfrect"

    invoke-virtual {p1, v1, v0, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 41
    :cond_c
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 42
    iget-object v3, p1, Lcom/apk/finally;->break:Lorg/json/JSONObject;

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Lcom/apk/finally;->final()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 43
    iget-object p1, p1, Lcom/apk/finally;->break:Lorg/json/JSONObject;

    const-string v3, "bsinfonative_mh"

    invoke-static {p1, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_5

    :cond_d
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_e

    .line 44
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-nez p1, :cond_10

    .line 45
    new-instance p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    .line 46
    invoke-direct {p1, v3, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 48
    invoke-virtual {p1, v1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    .line 49
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->setLoadSuccessVisible(Z)V

    .line 50
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-string v1, "bsinfonative"

    invoke-virtual {p1, v0, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 52
    :cond_e
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->class()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 53
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->final:Lcom/apk/class;

    if-nez p1, :cond_10

    .line 54
    new-instance p1, Lcom/apk/class;

    invoke-direct {p1}, Lcom/apk/class;-><init>()V

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->final:Lcom/apk/class;

    .line 55
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->catch:Landroid/widget/LinearLayout;

    .line 56
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    .line 57
    iget-boolean v3, v2, Lcom/apk/finally;->catch:Z

    if-eqz v3, :cond_f

    .line 58
    iget-object v2, v2, Lcom/apk/finally;->class:Lorg/json/JSONObject;

    goto :goto_6

    .line 59
    :cond_f
    iget-object v2, v2, Lcom/apk/finally;->const:Lorg/json/JSONObject;

    .line 60
    :goto_6
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v3

    .line 61
    iget-boolean v3, v3, Lcom/apk/finally;->catch:Z

    .line 62
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/apk/class;->for(Landroid/app/Activity;Landroid/widget/LinearLayout;Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_7
    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 4
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

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const v1, 0x7f100196

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/manhua/ui/fragment/ComicShelfFragment$goto;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment$goto;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/util/List;)V

    new-instance p1, Lcom/manhua/ui/fragment/ComicShelfFragment$this;

    invoke-direct {p1, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$this;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    new-instance v3, Lcom/manhua/ui/fragment/ComicShelfFragment$do;

    invoke-direct {v3, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$do;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/apk/eg;->g(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/gt;Lcom/apk/et;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1001ca

    .line 3
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 3
    iget-boolean v1, v1, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-boolean v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->else:Z

    iget-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    invoke-static {p1, v0, v3, v1, v2}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->r(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;ZZZ)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v1, p1}, Lcom/manhua/adapter/ComicGroupAdapter;->for(I)I

    move-result p1

    .line 7
    invoke-virtual {v0, p1, v2}, Lcom/apk/yg;->do(II)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getItemType()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->isNew()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    invoke-virtual {v1, p1}, Lcom/manhua/adapter/ComicGroupAdapter;->for(I)I

    move-result p1

    .line 11
    invoke-virtual {v0, p1, v2}, Lcom/apk/yg;->do(II)V

    :cond_2
    return-void

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->else:Z

    iget-boolean v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->r(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;ZZZ)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/mu;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 18
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setFirstChapterId(Ljava/lang/String;)V

    .line 19
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicDetailActivity;->m(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setFirstChapterId(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/manhua/ui/activity/ComicReadActivity;->I(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->u(Z)V

    return-void
.end method

.method public synchronized()Ljava/lang/String;
    .locals 1

    const-string v0, "SOURCE_CARTTON_VALUE"

    return-object v0
.end method

.method public final t(I)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getItemType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 4
    iget-boolean v0, v0, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->x(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->static:Z

    if-eqz p1, :cond_6

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->final:Lcom/apk/class;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->final:Lcom/apk/class;

    .line 5
    iput-boolean v0, p1, Lcom/apk/class;->try:Z

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 8
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 12
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    .line 13
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->do()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->final:Lcom/apk/class;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->final:Lcom/apk/class;

    .line 19
    iput-boolean v0, p1, Lcom/apk/class;->try:Z

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->class:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 22
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz p1, :cond_6

    .line 24
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->const:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 25
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public v(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/manhua/ui/fragment/ComicShelfFragment$for;

    invoke-direct {v1, p0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment$for;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/manhua/ui/fragment/ComicShelfFragment$if;

    invoke-direct {v1, p0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final x(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    .line 2
    new-instance v1, Lcom/manhua/ui/fragment/ComicShelfFragment$break;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/manhua/ui/fragment/ComicShelfFragment$break;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;ILcom/manhua/data/bean/ComicCollectBean;Lcom/manhua/ui/fragment/ComicShelfFragment$new;)V

    .line 3
    new-instance p1, Lcom/manhua/ui/view/ComicMenuPopupView;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->isGroup()Z

    move-result v3

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/manhua/ui/view/ComicMenuPopupView;-><init>(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;Lcom/apk/g1;Z)V

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->public:Lcom/manhua/ui/view/ComicMenuPopupView;

    .line 4
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    .line 5
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->public:Lcom/manhua/ui/view/ComicMenuPopupView;

    .line 7
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_0

    .line 8
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_1

    .line 11
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_1
    instance-of v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_2

    .line 14
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_2
    instance-of v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_3

    .line 17
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_3
    instance-of v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v1, :cond_4

    .line 20
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 22
    :cond_4
    :goto_0
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method
