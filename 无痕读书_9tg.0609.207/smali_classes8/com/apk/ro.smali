.class public Lcom/apk/ro;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/apk/oj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ro$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/oj<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/eo;

.field public final if:Lcom/apk/nl;


# direct methods
.method public constructor <init>(Lcom/apk/eo;Lcom/apk/nl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ro;->do:Lcom/apk/eo;

    .line 3
    iput-object p2, p0, Lcom/apk/ro;->if:Lcom/apk/nl;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Lcom/apk/mj;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    iget-object p1, p0, Lcom/apk/ro;->do:Lcom/apk/eo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/gl;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    instance-of v0, p1, Lcom/apk/oo;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/apk/oo;

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/oo;

    iget-object v1, p0, Lcom/apk/ro;->if:Lcom/apk/nl;

    invoke-direct {v0, p1, v1}, Lcom/apk/oo;-><init>(Ljava/io/InputStream;Lcom/apk/nl;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 5
    :goto_0
    sget-object v1, Lcom/apk/zr;->for:Ljava/util/Queue;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/apk/zr;->for:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/zr;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lcom/apk/zr;

    invoke-direct {v2}, Lcom/apk/zr;-><init>()V

    .line 9
    :cond_1
    iput-object p1, v2, Lcom/apk/zr;->do:Ljava/io/InputStream;

    .line 10
    new-instance v4, Lcom/apk/es;

    invoke-direct {v4, v2}, Lcom/apk/es;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v8, Lcom/apk/ro$do;

    invoke-direct {v8, p1, v2}, Lcom/apk/ro$do;-><init>(Lcom/apk/oo;Lcom/apk/zr;)V

    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/apk/ro;->do:Lcom/apk/eo;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/apk/eo;->if(Ljava/io/InputStream;IILcom/apk/mj;Lcom/apk/eo$if;)Lcom/apk/gl;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v2}, Lcom/apk/zr;->for()V

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/apk/oo;->try()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 15
    invoke-virtual {v2}, Lcom/apk/zr;->for()V

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/apk/oo;->try()V

    :cond_3
    throw p2

    :catchall_1
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
