.class public Lcom/apk/p30;
.super Ljava/lang/Object;
.source "DesOkHttpStreamFetcher.java"

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
.field public break:Z

.field public volatile case:Lcom/apk/zf0;

.field public final do:Lcom/apk/zf0$do;

.field public else:Z

.field public for:Ljava/io/InputStream;

.field public goto:Z

.field public final if:Lcom/apk/rm;

.field public new:Lcom/apk/dh0;

.field public this:Z

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
    iput-object p1, p0, Lcom/apk/p30;->do:Lcom/apk/zf0$do;

    .line 3
    iput-object p2, p0, Lcom/apk/p30;->if:Lcom/apk/rm;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/p30;->case:Lcom/apk/zf0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/zf0;->cancel()V

    :cond_0
    return-void
.end method

.method public case(Lcom/apk/ni;Lcom/apk/uj$do;)V
    .locals 5
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
    iget-object p1, p0, Lcom/apk/p30;->if:Lcom/apk/rm;

    .line 2
    invoke-virtual {p1}, Lcom/apk/rm;->try()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/apk/zg0$do;

    invoke-direct {v0}, Lcom/apk/zg0$do;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/apk/p30;->if:Lcom/apk/rm;

    invoke-virtual {v1}, Lcom/apk/rm;->new()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "LOAD_IMAGE_ENCRYPT_SWITCH_KEY"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "no"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apk/p30;->else:Z

    goto :goto_0

    :cond_0
    const-string v4, "LOAD_IMAGE_TYPE_KEY"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "LOAD_IMAGE_TYPE_VALUE_NOVEL"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/apk/p30;->goto:Z

    const-string v3, "LOAD_IMAGE_TYPE_VALUE_CARTOON"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apk/p30;->this:Z

    goto :goto_0

    :cond_1
    const-string v4, "LOAD_IMAGE_IS_REPLACE_KEY"

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "true"

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apk/p30;->break:Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, v3, v2}, Lcom/apk/zg0$do;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    goto :goto_0

    .line 16
    :cond_3
    iget-boolean v1, p0, Lcom/apk/p30;->goto:Z

    if-eqz v1, :cond_4

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/apk/p30;->break:Z

    invoke-static {p1, v1}, Lcom/apk/u;->try(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_4
    iget-boolean v1, p0, Lcom/apk/p30;->this:Z

    if-eqz v1, :cond_5

    .line 19
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/apk/p30;->break:Z

    invoke-static {p1, v1}, Lcom/apk/u;->for(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {v0, p1}, Lcom/apk/zg0$do;->goto(Ljava/lang/String;)Lcom/apk/zg0$do;

    invoke-virtual {v0}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object p1

    .line 21
    iput-object p2, p0, Lcom/apk/p30;->try:Lcom/apk/uj$do;

    .line 22
    iget-object p2, p0, Lcom/apk/p30;->do:Lcom/apk/zf0$do;

    check-cast p2, Lcom/apk/xg0;

    invoke-virtual {p2, p1}, Lcom/apk/xg0;->do(Lcom/apk/zg0;)Lcom/apk/zf0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/p30;->case:Lcom/apk/zf0;

    .line 23
    iget-object p1, p0, Lcom/apk/p30;->case:Lcom/apk/zf0;

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
    iput-object p1, p0, Lcom/apk/p30;->new:Lcom/apk/dh0;

    .line 3
    invoke-virtual {p2}, Lcom/apk/ch0;->throw()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/apk/p30;->else:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/apk/p30;->new:Lcom/apk/dh0;

    const-string p2, "Argument must not be null"

    .line 6
    invoke-static {p1, p2}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/apk/dh0;->throw()J

    move-result-wide p1

    .line 8
    iget-object v0, p0, Lcom/apk/p30;->new:Lcom/apk/dh0;

    invoke-virtual {v0}, Lcom/apk/dh0;->for()Ljava/io/InputStream;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/apk/yr;

    invoke-direct {v1, v0, p1, p2}, Lcom/apk/yr;-><init>(Ljava/io/InputStream;J)V

    .line 10
    iput-object v1, p0, Lcom/apk/p30;->for:Ljava/io/InputStream;

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/apk/p30;->new:Lcom/apk/dh0;

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/apk/p30;->new:Lcom/apk/dh0;

    invoke-virtual {p1}, Lcom/apk/dh0;->try()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeBytes([B)[B

    move-result-object p1

    .line 13
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    iput-object p2, p0, Lcom/apk/p30;->for:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/p30;->try:Lcom/apk/uj$do;

    iget-object p2, p0, Lcom/apk/p30;->for:Ljava/io/InputStream;

    invoke-interface {p1, p2}, Lcom/apk/uj$do;->new(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/apk/p30;->try:Lcom/apk/uj$do;

    new-instance v0, Lcom/apk/hj;

    .line 19
    iget-object v1, p2, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 20
    iget p2, p2, Lcom/apk/ch0;->try:I

    .line 21
    invoke-direct {v0, v1, p2}, Lcom/apk/hj;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/apk/uj$do;->for(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public if()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/p30;->for:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/p30;->for:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apk/p30;->new:Lcom/apk/dh0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/dh0;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/p30;->try:Lcom/apk/uj$do;

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
    iget-object p1, p0, Lcom/apk/p30;->try:Lcom/apk/uj$do;

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
