.class public Lcom/apk/lx;
.super Ljava/lang/Object;
.source "RequestFailedCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/kx;


# direct methods
.method public constructor <init>(Lcom/apk/kx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/lx;->do:Lcom/apk/kx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/lx;->do:Lcom/apk/kx;

    iget-object v1, v0, Lcom/apk/ax;->case:Lcom/apk/mx;

    iget-object v0, v0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v1, v0}, Lcom/apk/mx;->onStart(Lcom/apk/qy;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/lx;->do:Lcom/apk/kx;

    invoke-virtual {v0}, Lcom/apk/ax;->goto()Lcom/apk/zf0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/apk/lx;->do:Lcom/apk/kx;

    invoke-virtual {v0}, Lcom/apk/ax;->this()V

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/apk/lx;->do:Lcom/apk/kx;

    iget-object v2, v2, Lcom/apk/ax;->try:Lcom/apk/zf0;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/apk/lx;->do:Lcom/apk/kx;

    iget-object v1, v1, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v1, v0}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    return-void
.end method
