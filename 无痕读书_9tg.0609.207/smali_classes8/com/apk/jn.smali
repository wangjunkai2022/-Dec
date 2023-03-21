.class public Lcom/apk/jn;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lcom/apk/ym;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/jn$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/ym<",
        "Lcom/apk/rm;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final if:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Lcom/apk/xm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/xm<",
            "Lcom/apk/rm;",
            "Lcom/apk/rm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/jn;->if:Lcom/apk/lj;

    return-void
.end method

.method public constructor <init>(Lcom/apk/xm;)V
    .locals 0
    .param p1    # Lcom/apk/xm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/xm<",
            "Lcom/apk/rm;",
            "Lcom/apk/rm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/jn;->do:Lcom/apk/xm;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/apk/rm;

    const/4 p1, 0x1

    return p1
.end method

.method public if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/ym$do;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/apk/rm;

    .line 2
    iget-object p2, p0, Lcom/apk/jn;->do:Lcom/apk/xm;

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0, v0}, Lcom/apk/xm$if;->do(Ljava/lang/Object;II)Lcom/apk/xm$if;

    move-result-object v1

    .line 4
    iget-object p2, p2, Lcom/apk/xm;->do:Lcom/apk/ds;

    invoke-virtual {p2, v1}, Lcom/apk/ds;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    sget-object v2, Lcom/apk/xm$if;->new:Ljava/util/Queue;

    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lcom/apk/xm$if;->new:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    check-cast p2, Lcom/apk/rm;

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/apk/jn;->do:Lcom/apk/xm;

    if-eqz p2, :cond_0

    .line 10
    invoke-static {p1, v0, v0}, Lcom/apk/xm$if;->do(Ljava/lang/Object;II)Lcom/apk/xm$if;

    move-result-object p3

    .line 11
    iget-object p2, p2, Lcom/apk/xm;->do:Lcom/apk/ds;

    invoke-virtual {p2, p3, p1}, Lcom/apk/ds;->new(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    throw p3

    :cond_1
    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 14
    :cond_2
    :goto_0
    sget-object p2, Lcom/apk/jn;->if:Lcom/apk/lj;

    invoke-virtual {p4, p2}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 15
    new-instance p3, Lcom/apk/ym$do;

    new-instance p4, Lcom/apk/ak;

    invoke-direct {p4, p1, p2}, Lcom/apk/ak;-><init>(Lcom/apk/rm;I)V

    invoke-direct {p3, p1, p4}, Lcom/apk/ym$do;-><init>(Lcom/apk/kj;Lcom/apk/uj;)V

    return-object p3
.end method
