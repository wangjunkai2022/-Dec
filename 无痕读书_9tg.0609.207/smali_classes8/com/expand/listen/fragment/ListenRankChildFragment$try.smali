.class public Lcom/expand/listen/fragment/ListenRankChildFragment$try;
.super Lcom/apk/t5;
.source "ListenRankChildFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/listen/fragment/ListenRankChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/listen/fragment/ListenRankChildFragment;


# direct methods
.method public constructor <init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-direct {p0}, Lcom/apk/t5;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/listen/bean/ListenDetail;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/expand/listen/fragment/ListenRankChildFragment;->synchronized(Lcom/expand/listen/fragment/ListenRankChildFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-static {p3, v0, p1, p2}, Lcom/expand/listen/fragment/ListenRankChildFragment;->h(Lcom/expand/listen/fragment/ListenRankChildFragment;ZLjava/util/List;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-static {p3, v1, p1, p2}, Lcom/expand/listen/fragment/ListenRankChildFragment;->h(Lcom/expand/listen/fragment/ListenRankChildFragment;ZLjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public try()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/expand/listen/fragment/ListenRankChildFragment;->synchronized(Lcom/expand/listen/fragment/ListenRankChildFragment;Z)V

    .line 2
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    .line 3
    iget-object v0, v0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    .line 5
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$try;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    .line 6
    iget v1, v0, Lcom/expand/listen/fragment/ListenRankChildFragment;->for:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    iget-object v0, v0, Lcom/expand/listen/fragment/ListenRankChildFragment;->if:Lcom/expand/listen/adapter/ListenRankAdapter;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method
