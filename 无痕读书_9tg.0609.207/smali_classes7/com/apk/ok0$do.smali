.class public final Lcom/apk/ok0$do;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ok0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final do()Lcom/apk/ok0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/apk/ok0;

    sget-object v1, Lcom/apk/ok0;->break:Lcom/apk/ok0;

    .line 2
    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 3
    iget-object v1, v1, Lcom/apk/ok0;->case:Lcom/apk/ok0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 5
    sget-wide v5, Lcom/apk/ok0;->goto:J

    .line 6
    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 7
    sget-object v0, Lcom/apk/ok0;->break:Lcom/apk/ok0;

    .line 8
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v0, Lcom/apk/ok0;->case:Lcom/apk/ok0;

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 11
    sget-wide v3, Lcom/apk/ok0;->this:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 12
    sget-object v2, Lcom/apk/ok0;->break:Lcom/apk/ok0;

    :cond_0
    return-object v2

    .line 13
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 14
    iget-wide v5, v1, Lcom/apk/ok0;->else:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    const-wide/32 v3, 0xf4240

    .line 15
    div-long v7, v5, v3

    mul-long v3, v3, v7

    sub-long/2addr v5, v3

    long-to-int v1, v5

    .line 16
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 17
    :cond_2
    sget-object v0, Lcom/apk/ok0;->break:Lcom/apk/ok0;

    .line 18
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v1, Lcom/apk/ok0;->case:Lcom/apk/ok0;

    .line 20
    iput-object v3, v0, Lcom/apk/ok0;->case:Lcom/apk/ok0;

    .line 21
    iput-object v2, v1, Lcom/apk/ok0;->case:Lcom/apk/ok0;

    return-object v1
.end method
