.class public Lcom/apk/od;
.super Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.source "WebPresenter.java"


# instance fields
.field public final synthetic case:Lcom/apk/qd;

.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:Z

.field public final synthetic new:Z

.field public final synthetic try:Z


# direct methods
.method public constructor <init>(Lcom/apk/qd;Ljava/lang/String;ZZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/od;->case:Lcom/apk/qd;

    iput-object p2, p0, Lcom/apk/od;->do:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/apk/od;->if:Z

    iput-boolean p4, p0, Lcom/apk/od;->for:Z

    iput-boolean p5, p0, Lcom/apk/od;->new:Z

    iput-boolean p6, p0, Lcom/apk/od;->try:Z

    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/apk/iy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/od;->case:Lcom/apk/qd;

    iget-object v2, p0, Lcom/apk/od;->do:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/apk/od;->if:Z

    iget-boolean v5, p0, Lcom/apk/od;->for:Z

    iget-boolean v6, p0, Lcom/apk/od;->new:Z

    iget-boolean v7, p0, Lcom/apk/od;->try:Z

    invoke-static/range {v1 .. v7}, Lcom/apk/qd;->for(Lcom/apk/qd;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/apk/iy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/od;->case:Lcom/apk/qd;

    .line 3
    iget-object v0, p1, Lcom/apk/qd;->for:Lcom/apk/md;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/apk/od;->new:Z

    iget-boolean v2, p0, Lcom/apk/od;->try:Z

    iget-boolean v3, p0, Lcom/apk/od;->if:Z

    iget-boolean v4, p0, Lcom/apk/od;->for:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/apk/md;->if(ZZZZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/od;->case:Lcom/apk/qd;

    iget-object v2, p0, Lcom/apk/od;->do:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/apk/od;->if:Z

    iget-boolean v5, p0, Lcom/apk/od;->for:Z

    iget-boolean v6, p0, Lcom/apk/od;->new:Z

    iget-boolean v7, p0, Lcom/apk/od;->try:Z

    invoke-static/range {v1 .. v7}, Lcom/apk/qd;->for(Lcom/apk/qd;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    :cond_0
    return-void
.end method
