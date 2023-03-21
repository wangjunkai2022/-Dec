.class public Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$if;
.super Ljava/lang/Object;
.source "DownloadTxtListFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/bean/TaskInfo;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;Lcom/biquge/ebook/app/bean/TaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$if;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$if;->do:Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$if;->do:Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-static {v0}, Lcom/apk/kf;->goto(Lcom/biquge/ebook/app/bean/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment$if;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->do:Lcom/apk/g1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
