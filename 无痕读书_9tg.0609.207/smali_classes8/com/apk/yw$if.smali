.class public Lcom/apk/yw$if;
.super Ljava/lang/Object;
.source "AlwaysCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/yw;->do(Lcom/apk/iy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/iy;

.field public final synthetic if:Lcom/apk/yw;


# direct methods
.method public constructor <init>(Lcom/apk/yw;Lcom/apk/iy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/yw$if;->if:Lcom/apk/yw;

    iput-object p2, p0, Lcom/apk/yw$if;->do:Lcom/apk/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/yw$if;->if:Lcom/apk/yw;

    iget-object v1, v0, Lcom/apk/ax;->else:Lcom/apk/ww;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/ax;->case:Lcom/apk/mx;

    iget-object v1, p0, Lcom/apk/yw$if;->do:Lcom/apk/iy;

    invoke-virtual {v0, v1}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/yw$if;->if:Lcom/apk/yw;

    iget-object v1, v0, Lcom/apk/ax;->else:Lcom/apk/ww;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 4
    iget-object v1, v1, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v3, v1, v0, v2}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/apk/yw$if;->if:Lcom/apk/yw;

    iget-object v1, v1, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v1, v0}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v0, v2}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    :goto_0
    return-void
.end method
