.class public Lcom/apk/kl;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/apk/uj$do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/uj$do<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ym$do;

.field public final synthetic if:Lcom/apk/ll;


# direct methods
.method public constructor <init>(Lcom/apk/ll;Lcom/apk/ym$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kl;->if:Lcom/apk/ll;

    iput-object p2, p0, Lcom/apk/kl;->do:Lcom/apk/ym$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/kl;->if:Lcom/apk/ll;

    iget-object v1, p0, Lcom/apk/kl;->do:Lcom/apk/ym$do;

    .line 2
    iget-object v0, v0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/kl;->if:Lcom/apk/ll;

    iget-object v1, p0, Lcom/apk/kl;->do:Lcom/apk/ym$do;

    .line 4
    iget-object v2, v0, Lcom/apk/ll;->if:Lcom/apk/qk$do;

    iget-object v0, v0, Lcom/apk/ll;->else:Lcom/apk/ok;

    iget-object v1, v1, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v1}, Lcom/apk/uj;->try()Lcom/apk/dj;

    move-result-object v3

    invoke-interface {v2, v0, p1, v1, v3}, Lcom/apk/qk$do;->do(Lcom/apk/kj;Ljava/lang/Exception;Lcom/apk/uj;Lcom/apk/dj;)V

    :cond_1
    return-void
.end method

.method public new(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/kl;->if:Lcom/apk/ll;

    iget-object v1, p0, Lcom/apk/kl;->do:Lcom/apk/ym$do;

    .line 2
    iget-object v0, v0, Lcom/apk/ll;->case:Lcom/apk/ym$do;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/kl;->if:Lcom/apk/ll;

    iget-object v1, p0, Lcom/apk/kl;->do:Lcom/apk/ym$do;

    .line 4
    iget-object v2, v0, Lcom/apk/ll;->do:Lcom/apk/rk;

    .line 5
    iget-object v2, v2, Lcom/apk/rk;->throw:Lcom/apk/uk;

    if-eqz p1, :cond_1

    .line 6
    iget-object v3, v1, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v3}, Lcom/apk/uj;->try()Lcom/apk/dj;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apk/uk;->for(Lcom/apk/dj;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput-object p1, v0, Lcom/apk/ll;->try:Ljava/lang/Object;

    .line 8
    iget-object p1, v0, Lcom/apk/ll;->if:Lcom/apk/qk$do;

    invoke-interface {p1}, Lcom/apk/qk$do;->for()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/apk/ll;->if:Lcom/apk/qk$do;

    iget-object v3, v1, Lcom/apk/ym$do;->do:Lcom/apk/kj;

    iget-object v4, v1, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    .line 10
    invoke-interface {v4}, Lcom/apk/uj;->try()Lcom/apk/dj;

    move-result-object v5

    iget-object v6, v0, Lcom/apk/ll;->else:Lcom/apk/ok;

    move-object v0, v2

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 11
    invoke-interface/range {v0 .. v5}, Lcom/apk/qk$do;->new(Lcom/apk/kj;Ljava/lang/Object;Lcom/apk/uj;Lcom/apk/dj;Lcom/apk/kj;)V

    :cond_2
    :goto_1
    return-void
.end method
