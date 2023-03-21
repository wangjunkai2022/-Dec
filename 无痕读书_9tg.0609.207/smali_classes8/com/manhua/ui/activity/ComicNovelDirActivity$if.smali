.class public Lcom/manhua/ui/activity/ComicNovelDirActivity$if;
.super Lcom/apk/r5;
.source "ComicNovelDirActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicNovelDirActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicNovelDirActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicNovelDirActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity$if;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public else(Ljava/util/List;)V
    .locals 1
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
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity$if;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->do:Lcom/apk/ez;

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, v0, Lcom/apk/ez;->do:Ljava/util/List;

    .line 4
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity$if;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity$if;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
