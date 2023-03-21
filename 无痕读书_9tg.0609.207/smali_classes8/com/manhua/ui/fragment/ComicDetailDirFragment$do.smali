.class public Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;
.super Lcom/apk/r5;
.source "ComicDetailDirFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicDetailDirFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicDetailDirFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public else(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mDirCountTv:Landroid/widget/TextView;

    const v1, 0x7f100064

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    .line 4
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->if:Lcom/apk/ez;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    .line 6
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->if:Lcom/apk/ez;

    .line 7
    iput-object p1, v0, Lcom/apk/ez;->do:Ljava/util/List;

    .line 8
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    .line 12
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->if:Lcom/apk/ez;

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    .line 14
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->if:Lcom/apk/ez;

    .line 15
    invoke-virtual {p1}, Lcom/apk/ez;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDetailDirFragment$do;->do:Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDirFragment;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
