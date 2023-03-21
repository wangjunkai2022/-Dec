.class public Lcom/apk/x10$case;
.super Lcom/apk/r5;
.source "ComicRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/x10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/x10;


# direct methods
.method public constructor <init>(Lcom/apk/x10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Ljava/util/List;ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apk/x10;->h(Lcom/apk/x10;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    .line 3
    iget-object v1, v1, Lcom/apk/x10;->const:Lorg/json/JSONObject;

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

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 8
    invoke-interface {p1, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/apk/x10;->synchronized(Lcom/apk/x10;ZLjava/util/List;ZI)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/apk/x10;->synchronized(Lcom/apk/x10;ZLjava/util/List;ZI)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    .line 13
    iget-object p1, p1, Lcom/apk/x10;->else:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    :cond_3
    return-void
.end method

.method public throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apk/x10;->h(Lcom/apk/x10;Z)V

    .line 2
    iget-object v0, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    .line 3
    iget-object v0, v0, Lcom/apk/x10;->else:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/x10$case;->do:Lcom/apk/x10;

    .line 6
    iget-object v0, v0, Lcom/apk/x10;->try:Lcom/manhua/adapter/ComicRankListAdapter;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_1
    return-void
.end method
