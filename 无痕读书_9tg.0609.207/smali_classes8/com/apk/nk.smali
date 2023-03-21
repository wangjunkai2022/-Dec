.class public Lcom/apk/nk;
.super Ljava/lang/Object;
.source "DataCacheGenerator.java"

# interfaces
.implements Lcom/apk/qk;
.implements Lcom/apk/uj$do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/qk;",
        "Lcom/apk/uj$do<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ym<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/kj;",
            ">;"
        }
    .end annotation
.end field

.field public else:I

.field public final for:Lcom/apk/qk$do;

.field public volatile goto:Lcom/apk/ym$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ym$do<",
            "*>;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/rk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/rk<",
            "*>;"
        }
    .end annotation
.end field

.field public new:I

.field public this:Ljava/io/File;

.field public try:Lcom/apk/kj;


# direct methods
.method public constructor <init>(Lcom/apk/rk;Lcom/apk/qk$do;)V
    .locals 2
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
    invoke-virtual {p1}, Lcom/apk/rk;->do()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/apk/nk;->new:I

    .line 4
    iput-object v0, p0, Lcom/apk/nk;->do:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    .line 6
    iput-object p2, p0, Lcom/apk/nk;->for:Lcom/apk/qk$do;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/apk/rk;Lcom/apk/qk$do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apk/kj;",
            ">;",
            "Lcom/apk/rk<",
            "*>;",
            "Lcom/apk/qk$do;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/apk/nk;->new:I

    .line 9
    iput-object p1, p0, Lcom/apk/nk;->do:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    .line 11
    iput-object p3, p0, Lcom/apk/nk;->for:Lcom/apk/qk$do;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v0}, Lcom/apk/uj;->cancel()V

    :cond_0
    return-void
.end method

.method public for(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/nk;->for:Lcom/apk/qk$do;

    iget-object v1, p0, Lcom/apk/nk;->try:Lcom/apk/kj;

    iget-object v2, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    iget-object v2, v2, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    sget-object v3, Lcom/apk/dj;->for:Lcom/apk/dj;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/apk/qk$do;->do(Lcom/apk/kj;Ljava/lang/Exception;Lcom/apk/uj;Lcom/apk/dj;)V

    return-void
.end method

.method public if()Z
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apk/nk;->case:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 2
    iget v3, p0, Lcom/apk/nk;->else:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 4
    iget v3, p0, Lcom/apk/nk;->else:I

    iget-object v4, p0, Lcom/apk/nk;->case:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 5
    iget-object v3, p0, Lcom/apk/nk;->case:Ljava/util/List;

    iget v4, p0, Lcom/apk/nk;->else:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/apk/nk;->else:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/ym;

    .line 6
    iget-object v4, p0, Lcom/apk/nk;->this:Ljava/io/File;

    iget-object v5, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    .line 7
    iget v6, v5, Lcom/apk/rk;->try:I

    .line 8
    iget v7, v5, Lcom/apk/rk;->case:I

    .line 9
    iget-object v5, v5, Lcom/apk/rk;->this:Lcom/apk/mj;

    .line 10
    invoke-interface {v3, v4, v6, v7, v5}, Lcom/apk/ym;->if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/ym$do;

    move-result-object v3

    iput-object v3, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    .line 11
    iget-object v3, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    iget-object v4, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    iget-object v4, v4, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    invoke-interface {v4}, Lcom/apk/uj;->do()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apk/rk;->else(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v0, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    iget-object v0, v0, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    iget-object v3, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    .line 13
    iget-object v3, v3, Lcom/apk/rk;->super:Lcom/apk/ni;

    .line 14
    invoke-interface {v0, v3, p0}, Lcom/apk/uj;->case(Lcom/apk/ni;Lcom/apk/uj$do;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    return v0

    .line 15
    :cond_6
    :goto_4
    iget v0, p0, Lcom/apk/nk;->new:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/apk/nk;->new:I

    .line 16
    iget-object v2, p0, Lcom/apk/nk;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    return v1

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/apk/nk;->do:Ljava/util/List;

    iget v2, p0, Lcom/apk/nk;->new:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/kj;

    .line 18
    new-instance v2, Lcom/apk/ok;

    iget-object v3, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    .line 19
    iget-object v3, v3, Lcom/apk/rk;->final:Lcom/apk/kj;

    .line 20
    invoke-direct {v2, v0, v3}, Lcom/apk/ok;-><init>(Lcom/apk/kj;Lcom/apk/kj;)V

    .line 21
    iget-object v3, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    invoke-virtual {v3}, Lcom/apk/rk;->if()Lcom/apk/zl;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/apk/zl;->if(Lcom/apk/kj;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/apk/nk;->this:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 22
    iput-object v0, p0, Lcom/apk/nk;->try:Lcom/apk/kj;

    .line 23
    iget-object v0, p0, Lcom/apk/nk;->if:Lcom/apk/rk;

    .line 24
    iget-object v0, v0, Lcom/apk/rk;->for:Lcom/apk/li;

    .line 25
    iget-object v0, v0, Lcom/apk/li;->if:Lcom/apk/oi;

    .line 26
    invoke-virtual {v0, v2}, Lcom/apk/oi;->case(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/apk/nk;->case:Ljava/util/List;

    .line 28
    iput v1, p0, Lcom/apk/nk;->else:I

    goto/16 :goto_0
.end method

.method public new(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/nk;->for:Lcom/apk/qk$do;

    iget-object v1, p0, Lcom/apk/nk;->try:Lcom/apk/kj;

    iget-object v2, p0, Lcom/apk/nk;->goto:Lcom/apk/ym$do;

    iget-object v3, v2, Lcom/apk/ym$do;->for:Lcom/apk/uj;

    sget-object v4, Lcom/apk/dj;->for:Lcom/apk/dj;

    iget-object v5, p0, Lcom/apk/nk;->try:Lcom/apk/kj;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/apk/qk$do;->new(Lcom/apk/kj;Ljava/lang/Object;Lcom/apk/uj;Lcom/apk/dj;Lcom/apk/kj;)V

    return-void
.end method
