.class public Lcom/apk/xm$do;
.super Lcom/apk/ds;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/xm;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ds<",
        "Lcom/apk/xm$if<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/xm;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/apk/ds;-><init>(J)V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/apk/xm$if;

    if-eqz p1, :cond_0

    .line 2
    sget-object p2, Lcom/apk/xm$if;->new:Ljava/util/Queue;

    monitor-enter p2

    .line 3
    :try_start_0
    sget-object v0, Lcom/apk/xm$if;->new:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
