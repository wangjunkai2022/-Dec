.class public Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;
.super Lcom/apk/f6;
.source "BookGroupDetailActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;
    }
.end annotation


# instance fields
.field public break:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation
.end field

.field public final catch:Lcom/apk/v5;

.field public class:Lcom/lxj/xpopup/impl/LoadingPopupView;

.field public do:Lcom/biquge/ebook/app/bean/CollectBook;

.field public else:Lcom/apk/t4;

.field public for:Z

.field public goto:Landroid/view/View;

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

.field public this:Lcom/apk/yg;

.field public try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$try;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/List;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/l7;

    invoke-direct {v1, p0, p1}, Lcom/apk/l7;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 2
    iget-boolean v0, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mEditFinishTView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mEditFinishTView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static k(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->class:Lcom/lxj/xpopup/impl/LoadingPopupView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    iput-object v1, v0, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 7
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 8
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 9
    new-instance v2, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {v2, p0, v1}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 10
    invoke-virtual {v2, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 11
    iput-object v0, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 12
    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->class:Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->class:Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static l(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->class:Lcom/lxj/xpopup/impl/LoadingPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->class:Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->class:Lcom/lxj/xpopup/impl/LoadingPopupView;

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

.method public static m(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V
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

    new-instance v1, Lcom/apk/i7;

    invoke-direct {v1, p0, v0}, Lcom/apk/i7;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/LinkedList;)V

    invoke-virtual {p1, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static n(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 9

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10012c

    .line 3
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/apk/k7;

    invoke-direct {v6, p0, v0, p1}, Lcom/apk/k7;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;)V

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

.method public static o(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->q(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static p(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V
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

    check-cast p1, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupId()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->for:Z

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->new:Z

    invoke-static {p0, v0, p1, v1, v2}, Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;->m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static v(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;ZZZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

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

.method public init(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_KEY"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/CollectBook;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    :cond_0
    const-string v0, "EXTRA_IS_EDIT_KEY"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->if:Z

    const-string v0, "EXTRA_LIST_MODE_KEY"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->for:Z

    const-string v0, "EXTRA_BIG_STYLE_KEY"

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->new:Z

    return-void
.end method

.method public initData()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->for:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->new:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c00d8

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00d9

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_2

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->new:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0c00d6

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const v0, 0x7f0c00d7

    const/4 v1, 0x4

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_2
    move v9, v0

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->for:Z

    iget-boolean v8, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->new:Z

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ZZI)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    new-instance v0, Lcom/apk/t4;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    invoke-direct {v0, p0, v1}, Lcom/apk/t4;-><init>(Landroid/app/Activity;Lcom/apk/v5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->else:Lcom/apk/t4;

    .line 9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->u()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->setText(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->setOnEditFinishListener(Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;)V

    .line 5
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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

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
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    .line 10
    iput-object v3, v2, Lcom/apk/lv;->else:Landroid/view/View;

    .line 11
    new-instance v3, Lcom/apk/j7;

    invoke-direct {v3, p0}, Lcom/apk/j7;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

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

    .line 20
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/apk/v5;->new(ZI)V

    goto :goto_0

    .line 21
    :pswitch_2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->onBackPressed()V

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
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/apk/v5;->new(ZI)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if(Landroid/app/Activity;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/apk/v5;->new(ZI)V

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
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->u()V

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
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->t(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->s(I)V

    :goto_0
    return-void
.end method

.method public onItemChildLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->t(I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->s(I)V

    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->t(I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final q(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
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

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$if;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Ljava/util/List;)V

    new-instance p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$for;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    new-instance v2, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$new;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$new;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    invoke-static {p0, v0, v1, p1, v2}, Lcom/apk/eg;->g(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/gt;Lcom/apk/et;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1001ca

    .line 3
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/yg;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/apk/yg;-><init>(Landroid/app/Activity;Lcom/apk/bg;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 2
    iget-boolean v0, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->r()V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {v1, p1}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for(I)I

    move-result p1

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/apk/yg;->do(II)V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/n2;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setFirstChapterId(Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-static {v0}, Lcom/apk/n2;->break(Lcom/biquge/ebook/app/bean/CollectBook;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->r(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setFirstChapterId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 16
    invoke-static {p0, v0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final t(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 2
    iget-boolean v1, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    new-instance v1, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    new-instance v3, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;ILcom/biquge/ebook/app/bean/CollectBook;Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$do;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v0, v3, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CollectBook;Lcom/apk/g1;Z)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->break:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    .line 5
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->break:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    .line 7
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_1

    .line 8
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 10
    :cond_1
    instance-of v1, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_2

    .line 11
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_2
    instance-of v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_3

    .line 14
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_3
    instance-of v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_4

    .line 17
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_4
    instance-of v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v1, :cond_5

    .line 20
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 22
    :cond_5
    :goto_0
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return v2
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->else:Lcom/apk/t4;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->do:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lcom/apk/b1;

    invoke-direct {v2}, Lcom/apk/b1;-><init>()V

    new-instance v3, Lcom/apk/n4;

    invoke-direct {v3, v0, v1}, Lcom/apk/n4;-><init>(Lcom/apk/t4;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
