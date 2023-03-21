.class public Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "ReadFontPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;
    }
.end annotation


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

.field public final if:Lcom/apk/u5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$do;-><init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->if:Lcom/apk/u5;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0165

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090421

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/apk/ze;->try(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Z)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/apk/bd;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    new-instance v1, Lcom/apk/bd;

    invoke-direct {v1, p0}, Lcom/apk/bd;-><init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    new-instance v1, Lcom/apk/cd;

    invoke-direct {v1, p0}, Lcom/apk/cd;-><init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    const v0, 0x7f090420

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->if:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    .line 12
    invoke-static {}, Lcom/apk/w;->catch()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/y3;

    const-string v4, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v3, v0, v4}, Lcom/apk/y3;-><init>(Lcom/apk/v3;Ljava/lang/String;)V

    const-wide/32 v4, 0x240c8400

    invoke-static {v1, v4, v5, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    .line 13
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/rl0;->case(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apk/rl0;->catch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDestroy()V

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
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "CACHE_DOWNLOAD_FONT_START"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->do(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/biquge/ebook/app/bean/NewReadFont;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
