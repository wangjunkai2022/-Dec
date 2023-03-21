.class public Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;
.super Ljava/lang/Object;
.source "BookDownloadFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:I

.field public final synthetic if:Lcom/biquge/ebook/app/bean/CollectBook;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->try:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    iput p4, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->for:I

    iput-object p5, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->new:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->try:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$100(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/apk/gg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->try:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    new-instance v1, Lcom/apk/gg;

    invoke-direct {v1}, Lcom/apk/gg;-><init>()V

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$102(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;Lcom/apk/gg;)Lcom/apk/gg;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->try:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$100(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/apk/gg;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->do:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setMax(I)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setProgress(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setPercentage(I)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setState(I)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->try:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$200(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)Lcom/biquge/ebook/app/adapter/BookDownloadAdapter;

    move-result-object v0

    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->for:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->try:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$new;->new:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apk/o0;->new(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
