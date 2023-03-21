.class public Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;
.super Lcom/apk/r5;
.source "ComicStoreModuleMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Ljava/util/List;ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->k(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    .line 3
    iget-object v1, v1, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->else:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    new-instance v1, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->l(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;ZLjava/util/List;ZI)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->l(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;ZLjava/util/List;ZI)V

    :goto_1
    return-void
.end method

.method public throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->k(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;Z)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$new;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->for:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_0
    return-void
.end method
