.class public Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "NovelBatchCachePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;,
        Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;,
        Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$for;
    }
.end annotation


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;

.field public final for:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public new:Lcom/biquge/ebook/app/bean/BatchCacheBean;

.field public final try:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$for;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$for;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->if:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->for:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->try:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$for;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c015d

    return v0
.end method

.method public final if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->new:Lcom/biquge/ebook/app/bean/BatchCacheBean;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->try:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$for;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    check-cast v0, Lcom/apk/o0$do;

    .line 5
    iget-object v2, v0, Lcom/apk/o0$do;->do:Lcom/apk/o0$else;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2, v1}, Lcom/apk/o0$else;->do(Z)V

    .line 7
    :cond_0
    iget-boolean v2, v0, Lcom/apk/o0$do;->if:Z

    iget-object v3, v0, Lcom/apk/o0$do;->for:Ljava/lang/String;

    iget-object v0, v0, Lcom/apk/o0$do;->new:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/biquge/ebook/app/app/AppService;->case(ZLjava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "BATCH_CACHE_MUST_REWARD_AD_KEY"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901c3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09014c

    if-ne p1, v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget v1, p1, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;->do:I

    .line 6
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;

    if-eqz p1, :cond_1

    .line 7
    const-class v1, Lcom/biquge/ebook/app/bean/BatchCacheBean;

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 8
    new-instance v1, Lcom/biquge/ebook/app/bean/BatchCacheBean;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/BatchCacheBean;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->new:Lcom/biquge/ebook/app/bean/BatchCacheBean;

    .line 9
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/bean/BatchCacheBean;->setBookId(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->new:Lcom/biquge/ebook/app/bean/BatchCacheBean;

    .line 11
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;->if:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p1}, Lcom/biquge/ebook/app/bean/BatchCacheBean;->setBatchValue(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/apk/s0;->default:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    const-string p1, "BATCH_CACHE_MUST_REWARD_AD_KEY"

    .line 15
    invoke-static {p1, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CACHE_NOVEL_TIPS_TXT_KEY"

    const-string v1, ""

    .line 16
    invoke-static {p1, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f100040

    .line 18
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    const v3, 0x7f10032b

    .line 21
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f10018e

    .line 22
    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f100041

    .line 23
    invoke-static {v5}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/apk/yc;

    invoke-direct {v6, p0}, Lcom/apk/yc;-><init>(Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;)V

    .line 24
    sget-boolean v7, Lcom/apk/zu;->try:Z

    .line 25
    iput-boolean v7, v2, Lcom/apk/lv;->continue:Z

    .line 26
    new-instance v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;

    invoke-direct {v7, v1, v0}, Lcom/lxj/xpopup/impl/ConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object v3, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 28
    iput-object p1, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 29
    iput-object p1, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 30
    iput-object v4, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    .line 31
    iput-object v5, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    .line 32
    iput-object p1, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->do:Lcom/apk/sv;

    .line 33
    iput-object v6, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->if:Lcom/apk/uv;

    .line 34
    iput-boolean v0, v7, Lcom/lxj/xpopup/impl/ConfirmPopupView;->const:Z

    .line 35
    iput-object v2, v7, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 36
    invoke-virtual {v7}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->if()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/rl0;->case(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/rl0;->catch(Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f09014b

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 8
    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    new-instance v2, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;-><init>()V

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;

    .line 10
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0901c3

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014c

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    const-string v0, ""

    .line 14
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->for:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "every"

    .line 15
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    .line 16
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    .line 17
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ","

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 20
    array-length v2, v0

    if-lez v2, :cond_4

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    .line 23
    new-instance v7, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;-><init>(Lcom/apk/yc;)V

    .line 24
    iput-object v6, v7, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;->if:Ljava/lang/String;

    const-string v8, "-1"

    .line 25
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v6, 0x7f100121

    .line 26
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    .line 27
    iput-object v6, v7, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;->do:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v8, "0"

    .line 28
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v6, 0x7f100122

    .line 29
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    .line 30
    iput-object v6, v7, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;->do:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const v8, 0x7f100123

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v4

    .line 31
    invoke-static {v8, v9}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 32
    iput-object v6, v7, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$do;->do:Ljava/lang/String;

    .line 33
    :goto_1
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    .line 2
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/rl0;->case(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/rl0;->const(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "CACHE_BATCH_AUTO_DOWNLOAD_KEY"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->if()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup;->do:Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;

    if-eqz p1, :cond_0

    .line 2
    iget p2, p1, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;->do:I

    if-eq p3, p2, :cond_0

    .line 3
    iput p3, p1, Lcom/biquge/ebook/app/ui/view/NovelBatchCachePopup$if;->do:I

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
