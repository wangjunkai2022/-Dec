.class public Lcom/lxj/xpopup/impl/AttachListPopupView;
.super Lcom/lxj/xpopup/core/AttachPopupView;
.source "AttachListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/impl/AttachListPopupView$if;
    }
.end annotation


# instance fields
.field public class:Landroidx/recyclerview/widget/RecyclerView;

.field public const:I

.field public final:I

.field public super:[Ljava/lang/String;

.field public throw:[I

.field public while:Lcom/apk/xv;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/AttachPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->const:I

    .line 3
    iput p3, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->final:I

    .line 4
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->addInnerContent()V

    return-void
.end method


# virtual methods
.method public applyDarkTheme()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyDarkTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->class:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    return-void
.end method

.method public applyLightTheme()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyLightTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->class:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->const:I

    if-nez v0, :cond_0

    sget v0, Lcom/codelibrary/R$layout;->_xpopup_attach_list_layout:I

    :cond_0
    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    sget v0, Lcom/codelibrary/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->class:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->const:I

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/lxj/xpopup/impl/AttachListPopupView$if;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->super:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lxj/xpopup/impl/AttachListPopupView$if;-><init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Ljava/util/List;)V

    .line 6
    new-instance v1, Lcom/lxj/xpopup/impl/AttachListPopupView$do;

    invoke-direct {v1, p0, v0}, Lcom/lxj/xpopup/impl/AttachListPopupView$do;-><init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Lcom/lxj/xpopup/impl/AttachListPopupView$if;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->class:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->const:I

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v0, v0, Lcom/apk/lv;->continue:Z

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/AttachListPopupView;->applyDarkTheme()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/AttachListPopupView;->applyLightTheme()V

    :cond_2
    :goto_0
    return-void
.end method
