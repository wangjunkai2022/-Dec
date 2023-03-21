.class public Lcom/apk/zi;
.super Ljava/lang/Object;
.source "OkHttpStreamFetcher.java"

# interfaces
.implements Lcom/apk/uj;
.implements Lcom/apk/ag0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/uj<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/apk/ag0;"
    }
.end annotation


# instance fields
.field public volatile case:Lcom/apk/zf0;

.field public final do:Lcom/apk/zf0$do;

.field public for:Ljava/io/InputStream;

.field public final if:Lcom/apk/rm;

.field public new:Lcom/apk/dh0;

.field public try:Lcom/apk/uj$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/uj$do<",
            "-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/zf0$do;Lcom/apk/rm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/zi;->do:Lcom/apk/zf0$do;

    .line 3
    iput-object p2, p0, Lcom/apk/zi;->if:Lcom/apk/rm;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zi;->case:Lcom/apk/zf0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/zf0;->cancel()V

    :cond_0
    return-void
.end method

.method public case(Lcom/apk/ni;Lcom/apk/uj$do;)V
    .locals 3
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uj$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ni;",
            "Lcom/apk/uj$do<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/zg0$do;

    invoke-direct {p1}, Lcom/apk/zg0$do;-><init>()V

    iget-object v0, p0, Lcom/apk/zi;->if:Lcom/apk/rm;

    .line 2
    invoke-virtual {v0}, Lcom/apk/rm;->try()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/apk/zg0$do;->goto(Ljava/lang/String;)Lcom/apk/zg0$do;

    .line 4
    iget-object v0, p0, Lcom/apk/zi;->if:Lcom/apk/rm;

    invoke-virtual {v0}, Lcom/apk/rm;->new()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/apk/zg0$do;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object p1

    .line 8
    iput-object p2, p0, Lcom/apk/zi;->try:Lcom/apk/uj$do;

    .line 9
    iget-object p2, p0, Lcom/apk/zi;->do:Lcom/apk/zf0$do;

    check-cast p2, Lcom/apk/xg0;

    invoke-virtual {p2, p1}, Lcom/apk/xg0;->do(Lcom/apk/zg0;)Lcom/apk/zf0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/zi;->case:Lcom/apk/zf0;

    .line 10
    iget-object p1, p0, Lcom/apk/zi;->case:Lcom/apk/zf0;

    invoke-interface {p1, p0}, Lcom/apk/zf0;->try(Lcom/apk/ag0;)V

    return-void
.end method

.method public do()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public for(Lcom/apk/zf0;Lcom/apk/ch0;)V
    .locals 2
    .param p1    # Lcom/apk/zf0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ch0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p2, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    .line 2
    iput-object p1, p0, Lcom/apk/zi;->new:Lcom/apk/dh0;

    .line 3
    invoke-virtual {p2}, Lcom/apk/ch0;->throw()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/zi;->new:Lcom/apk/dh0;

    const-string p2, "Argument must not be null"

    .line 5
    invoke-static {p1, p2}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/apk/dh0;->throw()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lcom/apk/zi;->new:Lcom/apk/dh0;

    invoke-virtual {v0}, Lcom/apk/dh0;->for()Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/apk/yr;

    invoke-direct {v1, v0, p1, p2}, Lcom/apk/yr;-><init>(Ljava/io/InputStream;J)V

    .line 9
    iput-object v1, p0, Lcom/apk/zi;->for:Ljava/io/InputStream;

    .line 10
    iget-object p1, p0, Lcom/apk/zi;->try:Lcom/apk/uj$do;

    invoke-interface {p1, v1}, Lcom/apk/uj$do;->new(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/apk/zi;->try:Lcom/apk/uj$do;

    new-instance v0, Lcom/apk/hj;

    .line 12
    iget-object v1, p2, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 13
    iget p2, p2, Lcom/apk/ch0;->try:I

    .line 14
    invoke-direct {v0, v1, p2}, Lcom/apk/hj;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/apk/uj$do;->for(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public if()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/zi;->for:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/zi;->for:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apk/zi;->new:Lcom/apk/dh0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/dh0;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/zi;->try:Lcom/apk/uj$do;

    return-void
.end method

.method public new(Lcom/apk/zf0;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Lcom/apk/zf0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/apk/zi;->try:Lcom/apk/uj$do;

    invoke-interface {p1, p2}, Lcom/apk/uj$do;->for(Ljava/lang/Exception;)V

    return-void
.end method

.method public try()Lcom/apk/dj;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/dj;->if:Lcom/apk/dj;

    return-object v0
.end method
