.class public Lcom/apk/tk;
.super Ljava/lang/Object;
.source "DecodePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/tk$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final for:Lcom/apk/tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/tp<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/apk/oj<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field public final new:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/apk/tp;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/apk/oj<",
            "TDataType;TResourceType;>;>;",
            "Lcom/apk/tp<",
            "TResourceType;TTranscode;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/tk;->do:Ljava/lang/Class;

    .line 3
    iput-object p4, p0, Lcom/apk/tk;->if:Ljava/util/List;

    .line 4
    iput-object p5, p0, Lcom/apk/tk;->for:Lcom/apk/tp;

    .line 5
    iput-object p6, p0, Lcom/apk/tk;->new:Landroidx/core/util/Pools$Pool;

    const-string p4, "Failed DecodePath{"

    .line 6
    invoke-static {p4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/tk;->try:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/vj;IILcom/apk/mj;Lcom/apk/tk$do;)Lcom/apk/gl;
    .locals 10
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/vj<",
            "TDataType;>;II",
            "Lcom/apk/mj;",
            "Lcom/apk/tk$do<",
            "TResourceType;>;)",
            "Lcom/apk/gl<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/bl;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tk;->new:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, v0

    .line 4
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/apk/tk;->if(Lcom/apk/vj;IILcom/apk/mj;Ljava/util/List;)Lcom/apk/gl;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p2, p0, Lcom/apk/tk;->new:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 6
    check-cast p5, Lcom/apk/sk$if;

    .line 7
    iget-object p2, p5, Lcom/apk/sk$if;->if:Lcom/apk/sk;

    iget-object p3, p5, Lcom/apk/sk$if;->do:Lcom/apk/dj;

    const/4 p5, 0x0

    if-eqz p2, :cond_b

    .line 8
    invoke-interface {p1}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 9
    sget-object v0, Lcom/apk/dj;->new:Lcom/apk/dj;

    if-eq p3, v0, :cond_0

    .line 10
    iget-object v0, p2, Lcom/apk/sk;->do:Lcom/apk/rk;

    invoke-virtual {v0, v8}, Lcom/apk/rk;->case(Ljava/lang/Class;)Lcom/apk/qj;

    move-result-object v0

    .line 11
    iget-object v1, p2, Lcom/apk/sk;->goto:Lcom/apk/li;

    iget v2, p2, Lcom/apk/sk;->class:I

    iget v3, p2, Lcom/apk/sk;->const:I

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/apk/qj;->if(Landroid/content/Context;Lcom/apk/gl;II)Lcom/apk/gl;

    move-result-object v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    move-object v7, p5

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/apk/gl;->do()V

    .line 14
    :cond_1
    iget-object p1, p2, Lcom/apk/sk;->do:Lcom/apk/rk;

    .line 15
    iget-object p1, p1, Lcom/apk/rk;->for:Lcom/apk/li;

    .line 16
    iget-object p1, p1, Lcom/apk/li;->if:Lcom/apk/oi;

    .line 17
    iget-object p1, p1, Lcom/apk/oi;->new:Lcom/apk/wq;

    invoke-interface {v0}, Lcom/apk/gl;->new()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apk/wq;->do(Ljava/lang/Class;)Lcom/apk/pj;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p2, Lcom/apk/sk;->do:Lcom/apk/rk;

    .line 19
    iget-object p1, p1, Lcom/apk/rk;->for:Lcom/apk/li;

    .line 20
    iget-object p1, p1, Lcom/apk/li;->if:Lcom/apk/oi;

    .line 21
    iget-object p1, p1, Lcom/apk/oi;->new:Lcom/apk/wq;

    invoke-interface {v0}, Lcom/apk/gl;->new()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/apk/wq;->do(Ljava/lang/Class;)Lcom/apk/pj;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 22
    iget-object p1, p2, Lcom/apk/sk;->super:Lcom/apk/mj;

    invoke-interface {p5, p1}, Lcom/apk/pj;->if(Lcom/apk/mj;)Lcom/apk/fj;

    move-result-object p1

    goto :goto_2

    .line 23
    :cond_3
    new-instance p1, Lcom/apk/oi$new;

    invoke-interface {v0}, Lcom/apk/gl;->new()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apk/oi$new;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 24
    :cond_4
    sget-object p1, Lcom/apk/fj;->for:Lcom/apk/fj;

    .line 25
    :goto_2
    iget-object v3, p2, Lcom/apk/sk;->do:Lcom/apk/rk;

    iget-object v4, p2, Lcom/apk/sk;->throws:Lcom/apk/kj;

    .line 26
    invoke-virtual {v3}, Lcom/apk/rk;->for()Ljava/util/List;

    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    .line 28
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/apk/ym$do;

    .line 29
    iget-object v9, v9, Lcom/apk/ym$do;->do:Lcom/apk/kj;

    invoke-interface {v9, v4}, Lcom/apk/kj;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    xor-int/2addr v1, v2

    .line 30
    iget-object v3, p2, Lcom/apk/sk;->final:Lcom/apk/uk;

    invoke-virtual {v3, v1, p3, p1}, Lcom/apk/uk;->new(ZLcom/apk/dj;Lcom/apk/fj;)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz p5, :cond_9

    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_8

    if-ne p3, v2, :cond_7

    .line 32
    new-instance p1, Lcom/apk/il;

    iget-object p3, p2, Lcom/apk/sk;->do:Lcom/apk/rk;

    .line 33
    iget-object p3, p3, Lcom/apk/rk;->for:Lcom/apk/li;

    .line 34
    iget-object v2, p3, Lcom/apk/li;->do:Lcom/apk/nl;

    .line 35
    iget-object v3, p2, Lcom/apk/sk;->throws:Lcom/apk/kj;

    iget-object v4, p2, Lcom/apk/sk;->this:Lcom/apk/kj;

    iget v5, p2, Lcom/apk/sk;->class:I

    iget v6, p2, Lcom/apk/sk;->const:I

    iget-object v9, p2, Lcom/apk/sk;->super:Lcom/apk/mj;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/apk/il;-><init>(Lcom/apk/nl;Lcom/apk/kj;Lcom/apk/kj;IILcom/apk/qj;Ljava/lang/Class;Lcom/apk/mj;)V

    goto :goto_5

    .line 36
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown strategy: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_8
    new-instance p1, Lcom/apk/ok;

    iget-object p3, p2, Lcom/apk/sk;->throws:Lcom/apk/kj;

    iget-object v1, p2, Lcom/apk/sk;->this:Lcom/apk/kj;

    invoke-direct {p1, p3, v1}, Lcom/apk/ok;-><init>(Lcom/apk/kj;Lcom/apk/kj;)V

    .line 38
    :goto_5
    invoke-static {v0}, Lcom/apk/fl;->try(Lcom/apk/gl;)Lcom/apk/fl;

    move-result-object v0

    .line 39
    iget-object p2, p2, Lcom/apk/sk;->case:Lcom/apk/sk$for;

    .line 40
    iput-object p1, p2, Lcom/apk/sk$for;->do:Lcom/apk/kj;

    .line 41
    iput-object p5, p2, Lcom/apk/sk$for;->if:Lcom/apk/pj;

    .line 42
    iput-object v0, p2, Lcom/apk/sk$for;->for:Lcom/apk/fl;

    goto :goto_6

    .line 43
    :cond_9
    new-instance p1, Lcom/apk/oi$new;

    invoke-interface {v0}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apk/oi$new;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 44
    :cond_a
    :goto_6
    iget-object p1, p0, Lcom/apk/tk;->for:Lcom/apk/tp;

    invoke-interface {p1, v0, p4}, Lcom/apk/tp;->do(Lcom/apk/gl;Lcom/apk/mj;)Lcom/apk/gl;

    move-result-object p1

    return-object p1

    .line 45
    :cond_b
    throw p5

    :catchall_0
    move-exception p1

    .line 46
    iget-object p2, p0, Lcom/apk/tk;->new:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method

.method public final if(Lcom/apk/vj;IILcom/apk/mj;Ljava/util/List;)Lcom/apk/gl;
    .locals 7
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/vj<",
            "TDataType;>;II",
            "Lcom/apk/mj;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/apk/gl<",
            "TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/bl;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tk;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Lcom/apk/tk;->if:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/oj;

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/apk/vj;->do()Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-interface {v3, v4, p4}, Lcom/apk/oj;->do(Ljava/lang/Object;Lcom/apk/mj;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/apk/vj;->do()Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-interface {v3, v4, p2, p3, p4}, Lcom/apk/oj;->if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/gl;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    :goto_1
    const/4 v5, 0x2

    const-string v6, "DecodePath"

    .line 7
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_0
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    return-object v1

    .line 10
    :cond_4
    new-instance p1, Lcom/apk/bl;

    iget-object p2, p0, Lcom/apk/tk;->try:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p3}, Lcom/apk/bl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DecodePath{ dataClass="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/tk;->do:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/tk;->if:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/tk;->for:Lcom/apk/tp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
