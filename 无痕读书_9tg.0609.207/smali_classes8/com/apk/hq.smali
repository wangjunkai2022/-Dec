.class public Lcom/apk/hq;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/hq$if;
    }
.end annotation


# static fields
.field public static final case:Lcom/apk/hq$if;


# instance fields
.field public volatile do:Lcom/apk/qi;

.field public final for:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/apk/kq;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/apk/gq;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Landroid/os/Handler;

.field public final try:Lcom/apk/hq$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/hq$do;

    invoke-direct {v0}, Lcom/apk/hq$do;-><init>()V

    sput-object v0, Lcom/apk/hq;->case:Lcom/apk/hq$if;

    return-void
.end method

.method public constructor <init>(Lcom/apk/hq$if;)V
    .locals 1
    .param p1    # Lcom/apk/hq$if;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/hq;->if:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/hq;->for:Ljava/util/Map;

    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/apk/hq;->case:Lcom/apk/hq$if;

    :goto_0
    iput-object p1, p0, Lcom/apk/hq;->try:Lcom/apk/hq$if;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/apk/hq;->new:Landroid/os/Handler;

    return-void
.end method

.method public static case(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/apk/hq;->do(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static do(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/apk/hq;->do(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public for(Landroid/content/Context;)Lcom/apk/qi;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    invoke-static {}, Lcom/apk/gs;->class()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_5

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 4
    invoke-static {}, Lcom/apk/gs;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/hq;->for(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-static {p1}, Lcom/apk/hq;->case(Landroid/content/Context;)Z

    move-result v2

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/hq;->try(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/apk/kq;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lcom/apk/kq;->try:Lcom/apk/qi;

    if-nez v1, :cond_1

    .line 11
    invoke-static {p1}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/apk/hq;->try:Lcom/apk/hq$if;

    .line 13
    iget-object v3, v0, Lcom/apk/kq;->do:Lcom/apk/wp;

    .line 14
    iget-object v4, v0, Lcom/apk/kq;->if:Lcom/apk/iq;

    .line 15
    invoke-interface {v2, v1, v3, v4, p1}, Lcom/apk/hq$if;->do(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p1

    .line 16
    iput-object p1, v0, Lcom/apk/kq;->try:Lcom/apk/qi;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 19
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/apk/hq;->if(Landroid/app/Activity;)Lcom/apk/qi;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 21
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/hq;->for(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p1

    return-object p1

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/apk/hq;->do:Lcom/apk/qi;

    if-nez v0, :cond_7

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/apk/hq;->do:Lcom/apk/qi;

    if-nez v0, :cond_6

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/apk/hq;->try:Lcom/apk/hq$if;

    new-instance v2, Lcom/apk/xp;

    invoke-direct {v2}, Lcom/apk/xp;-><init>()V

    new-instance v3, Lcom/apk/cq;

    invoke-direct {v3}, Lcom/apk/cq;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 29
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/apk/hq$if;->do(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/hq;->do:Lcom/apk/qi;

    .line 30
    :cond_6
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/apk/hq;->do:Lcom/apk/qi;

    return-object p1

    .line 32
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object p1, p0, Lcom/apk/hq;->for:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 5
    iget-object p1, p0, Lcom/apk/hq;->if:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x5

    const-string v1, "RMRetriever"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    return v2
.end method

.method public if(Landroid/app/Activity;)Lcom/apk/qi;
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/apk/gs;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/hq;->for(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Lcom/apk/hq;->case(Landroid/content/Context;)Z

    move-result v2

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/hq;->new(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/apk/gq;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/apk/gq;->new:Lcom/apk/qi;

    if-nez v1, :cond_1

    .line 8
    invoke-static {p1}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/apk/hq;->try:Lcom/apk/hq$if;

    .line 10
    iget-object v3, v0, Lcom/apk/gq;->do:Lcom/apk/wp;

    .line 11
    iget-object v4, v0, Lcom/apk/gq;->if:Lcom/apk/iq;

    .line 12
    invoke-interface {v2, v1, v3, v4, p1}, Lcom/apk/hq$if;->do(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/apk/gq;->new:Lcom/apk/qi;

    :cond_1
    return-object v1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final new(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/apk/gq;
    .locals 3
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/apk/gq;

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/apk/hq;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/gq;

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lcom/apk/gq;

    invoke-direct {v1}, Lcom/apk/gq;-><init>()V

    .line 4
    iput-object p2, v1, Lcom/apk/gq;->case:Landroid/app/Fragment;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/apk/gq;->do(Landroid/app/Activity;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 7
    iget-object p2, v1, Lcom/apk/gq;->do:Lcom/apk/wp;

    .line 8
    invoke-virtual {p2}, Lcom/apk/wp;->new()V

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/apk/hq;->if:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 11
    iget-object p2, p0, Lcom/apk/hq;->new:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-object v1
.end method

.method public final try(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Lcom/apk/kq;
    .locals 4
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    .line 1
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/apk/kq;

    if-nez v1, :cond_5

    .line 2
    iget-object v1, p0, Lcom/apk/hq;->for:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/kq;

    if-nez v1, :cond_5

    .line 3
    new-instance v1, Lcom/apk/kq;

    invoke-direct {v1}, Lcom/apk/kq;-><init>()V

    .line 4
    iput-object p2, v1, Lcom/apk/kq;->case:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p2

    .line 6
    :goto_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v1, p2, v2}, Lcom/apk/kq;->a(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 10
    iget-object p2, v1, Lcom/apk/kq;->do:Lcom/apk/wp;

    .line 11
    invoke-virtual {p2}, Lcom/apk/wp;->new()V

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/apk/hq;->for:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 14
    iget-object p2, p0, Lcom/apk/hq;->new:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-object v1
.end method
