.class public abstract Lcom/apk/ny;
.super Lcom/apk/qy;
.source "NoBodyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/apk/ny;",
        ">",
        "Lcom/apk/qy<",
        "TT;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/qy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public const()Lcom/apk/zg0$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/qy;->if:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/qy;->this:Lcom/apk/gy;

    iget-object v1, v1, Lcom/apk/gy;->do:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/apk/mu;->throw(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/qy;->do:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/apk/zg0$do;

    invoke-direct {v0}, Lcom/apk/zg0$do;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/apk/qy;->break:Lcom/apk/fy;

    invoke-static {v0, v1}, Lcom/apk/mu;->for(Lcom/apk/zg0$do;Lcom/apk/fy;)Lcom/apk/zg0$do;

    move-result-object v0

    return-object v0
.end method

.method public goto()Lcom/apk/bh0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
