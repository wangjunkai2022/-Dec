.class public Lcom/apk/ll;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/apk/qk;
.implements Lcom/apk/qk$do;


# instance fields
.field public volatile case:Lcom/apk/ym$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ym$do<",
            "*>;"
        }
    .end annotation
.end field

.field public final do:Lcom/apk/rk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/rk<",
            "*>;"
        }
    .end annotation
.end field

.field public else:Lcom/apk/ok;

.field public for:I

.field public final if:Lcom/apk/qk$do;

.field public new:Lcom/apk/nk;

.field public try:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/apk/rk;Lcom/apk/qk$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/rk<",
            "*>;",
            "Lcom/apk/qk$do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    .line 3
    iput-object p2, p0, Lcom/apk/ll;->if:Lcom/apk/qk$do;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v0}, Lcom/apk/uj;->cancel()V

    :cond_0
    return-void
.end method

.method public do(Lcom/apk/kj;Ljava/lang/Exception;Lcom/apk/uj;Lcom/apk/dj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/kj;",
            "Ljava/lang/Exception;",
            "Lcom/apk/uj<",
            "*>;",
            "Lcom/apk/dj;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/apk/ll;->if:Lcom/apk/qk$do;

    iget-object v0, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v0, v0, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v0}, Lcom/apk/uj;->try()Lcom/apk/dj;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/apk/qk$do;->do(Lcom/apk/kj;Ljava/lang/Exception;Lcom/apk/uj;Lcom/apk/dj;)V

    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public if()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/ll;->try:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-object v1, p0, Lcom/apk/ll;->try:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v2

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    invoke-virtual {v4, v0}, Lcom/apk/rk;->try(Ljava/lang/Object;)Lcom/apk/gj;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/apk/pk;

    iget-object v6, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    .line 6
    iget-object v6, v6, Lcom/apk/rk;->this:Lcom/apk/mj;

    .line 7
    invoke-direct {v5, v4, v0, v6}, Lcom/apk/pk;-><init>(Lcom/apk/gj;Ljava/lang/Object;Lcom/apk/mj;)V

    .line 8
    new-instance v6, Lcom/apk/ok;

    iget-object v7, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v7, v7, Lcom/apk/ym$do;->do:Lcom/apk/kj;

    iget-object v8, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    .line 9
    iget-object v8, v8, Lcom/apk/rk;->final:Lcom/apk/kj;

    .line 10
    invoke-direct {v6, v7, v8}, Lcom/apk/ok;-><init>(Lcom/apk/kj;Lcom/apk/kj;)V

    iput-object v6, p0, Lcom/apk/ll;->else:Lcom/apk/ok;

    .line 11
    iget-object v6, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    invoke-virtual {v6}, Lcom/apk/rk;->if()Lcom/apk/zl;

    move-result-object v6

    iget-object v7, p0, Lcom/apk/ll;->else:Lcom/apk/ok;

    invoke-interface {v6, v7, v5}, Lcom/apk/zl;->do(Lcom/apk/kj;Lcom/apk/zl$if;)V

    const-string v5, "SourceGenerator"

    const/4 v6, 0x2

    .line 12
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished encoding source to cache, key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/apk/ll;->else:Lcom/apk/ok;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v2, v3}, Lcom/apk/cs;->do(J)D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v0, v0, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v0}, Lcom/apk/uj;->if()V

    .line 16
    new-instance v0, Lcom/apk/nk;

    iget-object v2, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v2, v2, Lcom/apk/ym$do;->do:Lcom/apk/kj;

    .line 17
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    invoke-direct {v0, v2, v3, p0}, Lcom/apk/nk;-><init>(Ljava/util/List;Lcom/apk/rk;Lcom/apk/qk$do;)V

    iput-object v0, p0, Lcom/apk/ll;->new:Lcom/apk/nk;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v1, v1, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v1}, Lcom/apk/uj;->if()V

    throw v0

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/ll;->new:Lcom/apk/nk;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apk/nk;->if()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 20
    :cond_2
    iput-object v1, p0, Lcom/apk/ll;->new:Lcom/apk/nk;

    .line 21
    iput-object v1, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 22
    iget v3, p0, Lcom/apk/ll;->for:I

    iget-object v4, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    invoke-virtual {v4}, Lcom/apk/rk;->for()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 23
    iget-object v3, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    invoke-virtual {v3}, Lcom/apk/rk;->for()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/apk/ll;->for:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/apk/ll;->for:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/ym$do;

    iput-object v3, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    .line 24
    iget-object v3, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    .line 25
    iget-object v3, v3, Lcom/apk/rk;->throw:Lcom/apk/uk;

    .line 26
    iget-object v4, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v4, v4, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v4}, Lcom/apk/uj;->try()Lcom/apk/dj;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apk/uk;->for(Lcom/apk/dj;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    iget-object v4, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v4, v4, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    .line 27
    invoke-interface {v4}, Lcom/apk/uj;->do()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apk/rk;->else(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    :cond_5
    iget-object v1, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    .line 29
    iget-object v3, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object v3, v3, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    iget-object v4, p0, Lcom/apk/ll;->do:Lcom/apk/rk;

    .line 30
    iget-object v4, v4, Lcom/apk/rk;->super:Lcom/apk/ni;

    .line 31
    new-instance v5, Lcom/apk/kl;

    invoke-direct {v5, p0, v1}, Lcom/apk/kl;-><init>(Lcom/apk/ll;Lcom/apk/ym$do;)V

    .line 32
    invoke-interface {v3, v4, v5}, Lcom/apk/uj;->case(Lcom/apk/ni;Lcom/apk/uj$do;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public new(Lcom/apk/kj;Ljava/lang/Object;Lcom/apk/uj;Lcom/apk/dj;Lcom/apk/kj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/kj;",
            "Ljava/lang/Object;",
            "Lcom/apk/uj<",
            "*>;",
            "Lcom/apk/dj;",
            "Lcom/apk/kj;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ll;->if:Lcom/apk/qk$do;

    iget-object p4, p0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    iget-object p4, p4, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {p4}, Lcom/apk/uj;->try()Lcom/apk/dj;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/apk/qk$do;->new(Lcom/apk/kj;Ljava/lang/Object;Lcom/apk/uj;Lcom/apk/dj;Lcom/apk/kj;)V

    return-void
.end method
