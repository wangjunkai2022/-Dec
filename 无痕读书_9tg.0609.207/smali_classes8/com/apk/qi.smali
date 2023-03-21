.class public Lcom/apk/qi;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/apk/eq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/qi$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/apk/eq;",
        "Ljava/lang/Object<",
        "Lcom/apk/pi<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final class:Lcom/apk/dr;


# instance fields
.field public final break:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/apk/cr<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final case:Lcom/apk/lq;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public catch:Lcom/apk/dr;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final do:Lcom/apk/ii;

.field public final else:Ljava/lang/Runnable;

.field public final for:Lcom/apk/dq;

.field public final goto:Landroid/os/Handler;

.field public final if:Landroid/content/Context;

.field public final new:Lcom/apk/jq;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final this:Lcom/apk/yp;

.field public final try:Lcom/apk/iq;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    new-instance v1, Lcom/apk/dr;

    invoke-direct {v1}, Lcom/apk/dr;-><init>()V

    invoke-virtual {v1, v0}, Lcom/apk/xq;->case(Ljava/lang/Class;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    .line 3
    invoke-virtual {v0}, Lcom/apk/xq;->final()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    sput-object v0, Lcom/apk/qi;->class:Lcom/apk/dr;

    .line 4
    const-class v0, Lcom/apk/hp;

    .line 5
    new-instance v1, Lcom/apk/dr;

    invoke-direct {v1}, Lcom/apk/dr;-><init>()V

    invoke-virtual {v1, v0}, Lcom/apk/xq;->case(Ljava/lang/Class;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    .line 6
    invoke-virtual {v0}, Lcom/apk/xq;->final()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    .line 7
    sget-object v0, Lcom/apk/uk;->if:Lcom/apk/uk;

    .line 8
    new-instance v1, Lcom/apk/dr;

    invoke-direct {v1}, Lcom/apk/dr;-><init>()V

    invoke-virtual {v1, v0}, Lcom/apk/xq;->else(Lcom/apk/uk;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    .line 9
    sget-object v1, Lcom/apk/ni;->new:Lcom/apk/ni;

    invoke-virtual {v0, v1}, Lcom/apk/xq;->switch(Lcom/apk/ni;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    return-void
.end method

.method public constructor <init>(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)V
    .locals 4
    .param p1    # Lcom/apk/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/dq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/iq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/apk/jq;

    invoke-direct {v0}, Lcom/apk/jq;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/apk/ii;->goto:Lcom/apk/zp;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v2, Lcom/apk/lq;

    invoke-direct {v2}, Lcom/apk/lq;-><init>()V

    iput-object v2, p0, Lcom/apk/qi;->case:Lcom/apk/lq;

    .line 5
    new-instance v2, Lcom/apk/qi$do;

    invoke-direct {v2, p0}, Lcom/apk/qi$do;-><init>(Lcom/apk/qi;)V

    iput-object v2, p0, Lcom/apk/qi;->else:Ljava/lang/Runnable;

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/apk/qi;->goto:Landroid/os/Handler;

    .line 7
    iput-object p1, p0, Lcom/apk/qi;->do:Lcom/apk/ii;

    .line 8
    iput-object p2, p0, Lcom/apk/qi;->for:Lcom/apk/dq;

    .line 9
    iput-object p3, p0, Lcom/apk/qi;->try:Lcom/apk/iq;

    .line 10
    iput-object v0, p0, Lcom/apk/qi;->new:Lcom/apk/jq;

    .line 11
    iput-object p4, p0, Lcom/apk/qi;->if:Landroid/content/Context;

    .line 12
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/apk/qi$if;

    invoke-direct {p4, p0, v0}, Lcom/apk/qi$if;-><init>(Lcom/apk/qi;Lcom/apk/jq;)V

    .line 13
    check-cast v1, Lcom/apk/bq;

    if-eqz v1, :cond_5

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 14
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/apk/aq;

    invoke-direct {v0, p3, p4}, Lcom/apk/aq;-><init>(Landroid/content/Context;Lcom/apk/yp$do;)V

    goto :goto_1

    .line 16
    :cond_1
    new-instance v0, Lcom/apk/fq;

    invoke-direct {v0}, Lcom/apk/fq;-><init>()V

    .line 17
    :goto_1
    iput-object v0, p0, Lcom/apk/qi;->this:Lcom/apk/yp;

    .line 18
    invoke-static {}, Lcom/apk/gs;->catch()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 19
    iget-object p3, p0, Lcom/apk/qi;->goto:Landroid/os/Handler;

    iget-object p4, p0, Lcom/apk/qi;->else:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 20
    :cond_2
    invoke-interface {p2, p0}, Lcom/apk/dq;->do(Lcom/apk/eq;)V

    .line 21
    :goto_2
    iget-object p3, p0, Lcom/apk/qi;->this:Lcom/apk/yp;

    invoke-interface {p2, p3}, Lcom/apk/dq;->do(Lcom/apk/eq;)V

    .line 22
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    iget-object p3, p1, Lcom/apk/ii;->new:Lcom/apk/li;

    .line 24
    iget-object p3, p3, Lcom/apk/li;->try:Ljava/util/List;

    .line 25
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/apk/qi;->break:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    iget-object p2, p1, Lcom/apk/ii;->new:Lcom/apk/li;

    .line 27
    monitor-enter p2

    .line 28
    :try_start_0
    iget-object p3, p2, Lcom/apk/li;->break:Lcom/apk/dr;

    if-nez p3, :cond_3

    .line 29
    iget-object p3, p2, Lcom/apk/li;->new:Lcom/apk/ii$do;

    invoke-interface {p3}, Lcom/apk/ii$do;->do()Lcom/apk/dr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/apk/xq;->final()Lcom/apk/xq;

    move-result-object p3

    check-cast p3, Lcom/apk/dr;

    iput-object p3, p2, Lcom/apk/li;->break:Lcom/apk/dr;

    .line 30
    :cond_3
    iget-object p3, p2, Lcom/apk/li;->break:Lcom/apk/dr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    .line 31
    invoke-virtual {p0, p3}, Lcom/apk/qi;->import(Lcom/apk/dr;)V

    .line 32
    iget-object p3, p1, Lcom/apk/ii;->this:Ljava/util/List;

    monitor-enter p3

    .line 33
    :try_start_1
    iget-object p2, p1, Lcom/apk/ii;->this:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 34
    iget-object p1, p1, Lcom/apk/ii;->this:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit p3

    return-void

    .line 36
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register already registered manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 38
    monitor-exit p2

    throw p1

    :cond_5
    const/4 p1, 0x0

    .line 39
    throw p1
.end method


# virtual methods
.method public case()Lcom/apk/pi;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/pi<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/apk/qi;->new(Ljava/lang/Class;)Lcom/apk/pi;

    move-result-object v0

    sget-object v1, Lcom/apk/qi;->class:Lcom/apk/dr;

    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    return-object v0
.end method

.method public catch()Lcom/apk/pi;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/pi<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/apk/qi;->new(Ljava/lang/Class;)Lcom/apk/pi;

    move-result-object v0

    return-object v0
.end method

.method public class()Lcom/apk/pi;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/pi<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/apk/qi;->new(Ljava/lang/Class;)Lcom/apk/pi;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/apk/dr;->finally:Lcom/apk/dr;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/apk/dr;

    invoke-direct {v1}, Lcom/apk/dr;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object v1

    check-cast v1, Lcom/apk/dr;

    invoke-virtual {v1}, Lcom/apk/xq;->if()Lcom/apk/xq;

    move-result-object v1

    check-cast v1, Lcom/apk/dr;

    sput-object v1, Lcom/apk/dr;->finally:Lcom/apk/dr;

    .line 4
    :cond_0
    sget-object v1, Lcom/apk/dr;->finally:Lcom/apk/dr;

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    return-object v0
.end method

.method public const(Lcom/apk/pr;)V
    .locals 4
    .param p1    # Lcom/apk/pr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/pr<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apk/qi;->native(Lcom/apk/pr;)Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/apk/pr;->goto()Lcom/apk/zq;

    move-result-object v1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/apk/qi;->do:Lcom/apk/ii;

    .line 4
    iget-object v2, v0, Lcom/apk/ii;->this:Ljava/util/List;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/apk/ii;->this:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/qi;

    .line 6
    invoke-virtual {v3, p1}, Lcom/apk/qi;->native(Lcom/apk/pr;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 7
    monitor-exit v2

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Lcom/apk/pr;->for(Lcom/apk/zq;)V

    .line 10
    invoke-interface {v1}, Lcom/apk/zq;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final(Ljava/io/File;)Lcom/apk/pi;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/apk/pi<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/qi;->catch()Lcom/apk/pi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/pi;->synchronized(Ljava/io/File;)Lcom/apk/pi;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized import(Lcom/apk/dr;)V
    .locals 0
    .param p1    # Lcom/apk/dr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/dr;

    invoke-virtual {p1}, Lcom/apk/xq;->if()Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/dr;

    iput-object p1, p0, Lcom/apk/qi;->catch:Lcom/apk/dr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized native(Lcom/apk/pr;)Z
    .locals 3
    .param p1    # Lcom/apk/pr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/pr<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/apk/pr;->goto()Lcom/apk/zq;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/apk/qi;->new:Lcom/apk/jq;

    invoke-virtual {v2, v0}, Lcom/apk/jq;->do(Lcom/apk/zq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/qi;->case:Lcom/apk/lq;

    .line 5
    iget-object v0, v0, Lcom/apk/lq;->do:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcom/apk/pr;->for(Lcom/apk/zq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public new(Ljava/lang/Class;)Lcom/apk/pi;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/apk/pi<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/pi;

    iget-object v1, p0, Lcom/apk/qi;->do:Lcom/apk/ii;

    iget-object v2, p0, Lcom/apk/qi;->if:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/apk/pi;-><init>(Lcom/apk/ii;Lcom/apk/qi;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/qi;->case:Lcom/apk/lq;

    invoke-virtual {v0}, Lcom/apk/lq;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/apk/qi;->case:Lcom/apk/lq;

    .line 3
    iget-object v0, v0, Lcom/apk/lq;->do:Ljava/util/Set;

    invoke-static {v0}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/pr;

    .line 5
    invoke-virtual {p0, v1}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/qi;->case:Lcom/apk/lq;

    .line 7
    iget-object v0, v0, Lcom/apk/lq;->do:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 8
    iget-object v0, p0, Lcom/apk/qi;->new:Lcom/apk/jq;

    .line 9
    iget-object v1, v0, Lcom/apk/jq;->do:Ljava/util/Set;

    invoke-static {v1}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/zq;

    .line 10
    invoke-virtual {v0, v2}, Lcom/apk/jq;->do(Lcom/apk/zq;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/apk/jq;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lcom/apk/qi;->for:Lcom/apk/dq;

    invoke-interface {v0, p0}, Lcom/apk/dq;->if(Lcom/apk/eq;)V

    .line 13
    iget-object v0, p0, Lcom/apk/qi;->for:Lcom/apk/dq;

    iget-object v1, p0, Lcom/apk/qi;->this:Lcom/apk/yp;

    invoke-interface {v0, v1}, Lcom/apk/dq;->if(Lcom/apk/eq;)V

    .line 14
    iget-object v0, p0, Lcom/apk/qi;->goto:Landroid/os/Handler;

    iget-object v1, p0, Lcom/apk/qi;->else:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lcom/apk/qi;->do:Lcom/apk/ii;

    .line 16
    iget-object v1, v0, Lcom/apk/ii;->this:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, v0, Lcom/apk/ii;->this:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v0, v0, Lcom/apk/ii;->this:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/qi;->while()V

    .line 2
    iget-object v0, p0, Lcom/apk/qi;->case:Lcom/apk/lq;

    invoke-virtual {v0}, Lcom/apk/lq;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/qi;->throw()V

    .line 2
    iget-object v0, p0, Lcom/apk/qi;->case:Lcom/apk/lq;

    invoke-virtual {v0}, Lcom/apk/lq;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    return-void
.end method

.method public super(Ljava/lang/Object;)Lcom/apk/pi;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/apk/pi<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/qi;->catch()Lcom/apk/pi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized throw()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/qi;->new:Lcom/apk/jq;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/apk/jq;->for:Z

    .line 3
    iget-object v1, v0, Lcom/apk/jq;->do:Ljava/util/Set;

    invoke-static {v1}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/zq;

    .line 4
    invoke-interface {v2}, Lcom/apk/zq;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/apk/zq;->do()V

    .line 6
    iget-object v3, v0, Lcom/apk/jq;->if:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/qi;->new:Lcom/apk/jq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/qi;->try:Lcom/apk/iq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized while()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/qi;->new:Lcom/apk/jq;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/apk/jq;->for:Z

    .line 3
    iget-object v1, v0, Lcom/apk/jq;->do:Ljava/util/Set;

    invoke-static {v1}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/zq;

    .line 4
    invoke-interface {v2}, Lcom/apk/zq;->try()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/apk/zq;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/apk/zq;->new()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/apk/jq;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
