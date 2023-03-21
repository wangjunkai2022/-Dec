.class public Lcom/apk/ca0;
.super Ljava/lang/Object;
.source "TrChapterCountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ca0$if;
    }
.end annotation


# static fields
.field public static for:Lcom/apk/ca0;


# instance fields
.field public final do:Lcom/apk/wb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/wb0<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrChapterCount;",
            ">;>;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/wb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/wb0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/wb0;

    invoke-direct {v0}, Lcom/apk/wb0;-><init>()V

    iput-object v0, p0, Lcom/apk/ca0;->do:Lcom/apk/wb0;

    .line 3
    new-instance v0, Lcom/apk/wb0;

    invoke-direct {v0}, Lcom/apk/wb0;-><init>()V

    iput-object v0, p0, Lcom/apk/ca0;->if:Lcom/apk/wb0;

    return-void
.end method

.method public static do()Lcom/apk/ca0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/ca0;->for:Lcom/apk/ca0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/ca0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/ca0;->for:Lcom/apk/ca0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/ca0;

    invoke-direct {v1}, Lcom/apk/ca0;-><init>()V

    sput-object v1, Lcom/apk/ca0;->for:Lcom/apk/ca0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/ca0;->for:Lcom/apk/ca0;

    return-object v0
.end method

.method public static if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "&"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
