.class public Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;
.super Lcom/apk/g6;
.source "NewShareDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$if;
    }
.end annotation


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$if;

.field public rc:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090441
    .end annotation
.end field

.field public tv_empty:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905d4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002a

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;->rc:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/biquge/ebook/app/widget/FullyLinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/widget/FullyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$if;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$if;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;->do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$if;

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;->rc:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
