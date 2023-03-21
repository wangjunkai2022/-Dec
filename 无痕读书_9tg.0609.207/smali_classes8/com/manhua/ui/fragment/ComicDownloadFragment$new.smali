.class public Lcom/manhua/ui/fragment/ComicDownloadFragment$new;
.super Ljava/lang/Object;
.source "ComicDownloadFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicDownloadFragment;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:I

.field public final synthetic if:Lcom/manhua/data/bean/ComicCollectBean;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/manhua/ui/fragment/ComicDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicDownloadFragment;Ljava/lang/String;Lcom/manhua/data/bean/ComicCollectBean;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->try:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->if:Lcom/manhua/data/bean/ComicCollectBean;

    iput p4, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->for:I

    iput-object p5, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->new:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->try:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->access$100(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->do:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->if:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->if:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->try:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->access$200(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Lcom/manhua/adapter/ComicDownloadAdapter;

    move-result-object v0

    iget v1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->for:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->try:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$new;->new:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apk/o0;->try(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
