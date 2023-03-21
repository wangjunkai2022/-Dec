.class public Lcom/apk/z;
.super Ljava/lang/Object;
.source "TrAdSdkImageLoader.java"

# interfaces
.implements Lcom/apk/u60;


# static fields
.field public static do:Lcom/apk/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/apk/z;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/z;->do:Lcom/apk/z;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/z;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/z;->do:Lcom/apk/z;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/z;

    invoke-direct {v1}, Lcom/apk/z;-><init>()V

    sput-object v1, Lcom/apk/z;->do:Lcom/apk/z;

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
    sget-object v0, Lcom/apk/z;->do:Lcom/apk/z;

    return-object v0
.end method


# virtual methods
.method public for()Ljava/lang/String;
    .locals 2

    const-string v0, "SP_AD_HOST_GDT_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 2

    const-string v0, "SP_AD_HOST_CSJ_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
