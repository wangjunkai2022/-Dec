.class public Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "WebReadMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;,
        Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$do;,
        Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;
    }
.end annotation


# instance fields
.field public do:Landroidx/recyclerview/widget/RecyclerView;

.field public final for:Z

.field public final if:Z

.field public final new:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->if:Z

    .line 3
    iput-boolean p3, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->for:Z

    .line 4
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->new:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0169

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f09062a

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->do:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->do:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->if:Z

    if-eqz v2, :cond_0

    const v2, 0x7f08031c

    goto :goto_0

    :cond_0
    const v2, 0x7f08031b

    :goto_0
    const v3, 0x7f100403

    .line 8
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;-><init>(ILjava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;

    const v2, 0x7f08033c

    const v3, 0x7f100402

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;

    const v2, 0x7f08033a

    const v3, 0x7f100401

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->for:Z

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;

    const v2, 0x7f08033f

    const v3, 0x7f1003a0

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_1
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;

    const v2, 0x7f08033e

    const v3, 0x7f100389

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_1
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;

    const v2, 0x7f08033b

    const v3, 0x7f100400

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$if;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$do;

    invoke-direct {v1, v0}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$do;-><init>(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    new-instance v0, Lcom/apk/id;

    invoke-direct {v0, p0}, Lcom/apk/id;-><init>(Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;)V

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method
