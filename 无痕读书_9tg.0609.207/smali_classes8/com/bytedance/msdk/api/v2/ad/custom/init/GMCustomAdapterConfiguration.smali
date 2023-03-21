.class public abstract Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;
.super Ljava/lang/Object;
.source "GMCustomAdapterConfiguration.java"


# static fields
.field public static final if:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public do:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->if:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callInitSuccess()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->if:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public abstract getAdapterSdkVersion()Ljava/lang/String;
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCustomADNName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->do:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getADNName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getNetworkSdkVersion()Ljava/lang/String;
.end method

.method public getSdkInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract initializeADN(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final initializeInnerADN(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->if:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->do:Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->initializeADN(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Ljava/util/Map;)V

    return-void
.end method

.method public final isInit()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->if:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
