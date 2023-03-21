.class public Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;
.super Ljava/lang/Object;
.source "GMCustomAdConfig.java"


# instance fields
.field public final do:Ljava/lang/String;

.field public final if:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;->if:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;->if:Ljava/lang/Class;

    return-object v0
.end method
