.class public Lcom/apk/yw;
.super Lcom/apk/ax;
.source "AlwaysCacheRequestPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/ax<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/qy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "TT;+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/ax;-><init>(Lcom/apk/qy;)V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/yw$if;

    invoke-direct {v0, p0, p1}, Lcom/apk/yw$if;-><init>(Lcom/apk/yw;Lcom/apk/iy;)V

    invoke-virtual {p0, v0}, Lcom/apk/ax;->class(Ljava/lang/Runnable;)V

    return-void
.end method

.method public for(Lcom/apk/ww;)Lcom/apk/iy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ww<",
            "TT;>;)",
            "Lcom/apk/iy<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/ax;->goto()Lcom/apk/zf0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v2, p1, Lcom/apk/ww;->try:Z

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p1, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v1, v2, v3, v0}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/apk/ax;->break()Lcom/apk/iy;

    move-result-object v2

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/apk/iy;->for()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v1, p1, v2, v0}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v1, v2, v0, p1}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object p1

    return-object p1
.end method

.method public if(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/yw$do;

    invoke-direct {v0, p0, p1}, Lcom/apk/yw$do;-><init>(Lcom/apk/yw;Lcom/apk/iy;)V

    invoke-virtual {p0, v0}, Lcom/apk/ax;->class(Ljava/lang/Runnable;)V

    return-void
.end method

.method public new(Lcom/apk/ww;Lcom/apk/mx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ww<",
            "TT;>;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    .line 2
    new-instance p2, Lcom/apk/zw;

    invoke-direct {p2, p0, p1}, Lcom/apk/zw;-><init>(Lcom/apk/yw;Lcom/apk/ww;)V

    invoke-virtual {p0, p2}, Lcom/apk/ax;->class(Ljava/lang/Runnable;)V

    return-void
.end method

.method public try(Lcom/apk/ww;Lcom/apk/mx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ww<",
            "TT;>;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    .line 2
    iget-object v0, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {p2, v0}, Lcom/apk/mx;->onStart(Lcom/apk/qy;)V

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/ax;->goto()Lcom/apk/zf0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    iget-object v1, p1, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v0, v1, v2, p2}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v0, p2}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    .line 7
    iget-boolean p1, p1, Lcom/apk/ww;->try:Z

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {p1, p2}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/apk/ax;->catch()V

    return-void

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 10
    iget-object v1, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v0, v1, p2, p1}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {p2, p1}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    return-void
.end method
