.class public final Lcom/apk/yl0;
.super Ljava/lang/Object;
.source "PendingPost.java"


# static fields
.field public static final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/yl0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public do:Ljava/lang/Object;

.field public for:Lcom/apk/yl0;

.field public if:Lcom/apk/em0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apk/yl0;->new:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/apk/em0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/yl0;->do:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/apk/yl0;->if:Lcom/apk/em0;

    return-void
.end method

.method public static do(Lcom/apk/em0;Ljava/lang/Object;)Lcom/apk/yl0;
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/yl0;->new:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/apk/yl0;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    sget-object v2, Lcom/apk/yl0;->new:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/yl0;

    .line 4
    iput-object p1, v1, Lcom/apk/yl0;->do:Ljava/lang/Object;

    .line 5
    iput-object p0, v1, Lcom/apk/yl0;->if:Lcom/apk/em0;

    const/4 p0, 0x0

    .line 6
    iput-object p0, v1, Lcom/apk/yl0;->for:Lcom/apk/yl0;

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lcom/apk/yl0;

    invoke-direct {v0, p1, p0}, Lcom/apk/yl0;-><init>(Ljava/lang/Object;Lcom/apk/em0;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
