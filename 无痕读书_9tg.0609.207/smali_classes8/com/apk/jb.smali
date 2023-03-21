.class public Lcom/apk/jb;
.super Ljava/lang/Object;
.source "DownloadTxtListFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/jb;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/jb;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->for:Lcom/biquge/ebook/app/adapter/TxtDownloadListAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TaskInfo;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getFinish()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/TaskInfo;->isFinishTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apk/kf;->new(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "url = ?"

    aput-object v1, v0, p3

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class p2, Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-virtual {p1, p2}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TaskInfo;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/n2;->throw(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CollectBook;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p2, p0, Lcom/apk/jb;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
