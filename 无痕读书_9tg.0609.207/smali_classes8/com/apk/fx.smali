.class public Lcom/apk/fx;
.super Ljava/lang/Object;
.source "FirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/ww;

.field public final synthetic if:Lcom/apk/ex;


# direct methods
.method public constructor <init>(Lcom/apk/ex;Lcom/apk/ww;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    iput-object p2, p0, Lcom/apk/fx;->do:Lcom/apk/ww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    iget-object v1, v0, Lcom/apk/ax;->case:Lcom/apk/mx;

    iget-object v0, v0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v1, v0}, Lcom/apk/mx;->onStart(Lcom/apk/qy;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    invoke-virtual {v1}, Lcom/apk/ax;->goto()Lcom/apk/zf0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lcom/apk/fx;->do:Lcom/apk/ww;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    iget-object v1, v1, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    iget-object v3, v3, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v2, v1, v3, v0}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    iget-object v1, v1, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v1, v0}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    invoke-virtual {v0}, Lcom/apk/ax;->this()V

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    iget-object v3, v3, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v2, v3, v0, v1}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/apk/fx;->if:Lcom/apk/ex;

    iget-object v1, v1, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v1, v0}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    return-void
.end method
