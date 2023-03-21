.class public Lcom/apk/v;
.super Ljava/lang/Object;
.source "UmMobclickAgentManager.java"


# static fields
.field public static do:Lcom/apk/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/apk/v;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/v;->do:Lcom/apk/v;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/v;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/v;->do:Lcom/apk/v;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/v;

    invoke-direct {v1}, Lcom/apk/v;-><init>()V

    sput-object v1, Lcom/apk/v;->do:Lcom/apk/v;

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
    sget-object v0, Lcom/apk/v;->do:Lcom/apk/v;

    return-object v0
.end method
