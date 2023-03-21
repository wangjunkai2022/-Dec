.class public final Lcom/apk/kc0;
.super Ljava/lang/Object;
.source "LazyJVM.kt"

# interfaces
.implements Lcom/apk/ic0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/ic0<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public do:Lcom/apk/hd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/hd0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/Object;

.field public volatile if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/apk/hd0;Ljava/lang/Object;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const-string p2, "initializer"

    .line 1
    invoke-static {p1, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/apk/kc0;->do:Lcom/apk/hd0;

    .line 4
    sget-object p1, Lcom/apk/lc0;->do:Lcom/apk/lc0;

    iput-object p1, p0, Lcom/apk/kc0;->if:Ljava/lang/Object;

    .line 5
    iput-object p0, p0, Lcom/apk/kc0;->for:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/kc0;->if:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/apk/lc0;->do:Lcom/apk/lc0;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/kc0;->for:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/apk/kc0;->if:Ljava/lang/Object;

    .line 5
    sget-object v2, Lcom/apk/lc0;->do:Lcom/apk/lc0;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/apk/kc0;->do:Lcom/apk/hd0;

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/apk/hd0;->do()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/apk/kc0;->if:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/apk/kc0;->do:Lcom/apk/hd0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/kc0;->if:Ljava/lang/Object;

    sget-object v1, Lcom/apk/lc0;->do:Lcom/apk/lc0;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/apk/kc0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "Lazy value not initialized yet."

    :goto_1
    return-object v0
.end method
