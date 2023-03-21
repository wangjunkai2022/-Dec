.class public Lcom/apk/uy;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/hy;

.field public final synthetic if:Lcom/apk/ty;


# direct methods
.method public constructor <init>(Lcom/apk/ty;Lcom/apk/hy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/uy;->if:Lcom/apk/ty;

    iput-object p2, p0, Lcom/apk/uy;->do:Lcom/apk/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/uy;->if:Lcom/apk/ty;

    iget-object v0, v0, Lcom/apk/ty;->if:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/sy;

    .line 2
    iget-object v2, p0, Lcom/apk/uy;->do:Lcom/apk/hy;

    invoke-virtual {v1, v2}, Lcom/apk/sy;->try(Lcom/apk/hy;)V

    goto :goto_0

    :cond_0
    return-void
.end method
