.class public final Lcom/apk/sh0$new;
.super Ljava/lang/Object;
.source "TaskRunner.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/sh0;-><init>(Lcom/apk/sh0$do;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/sh0;


# direct methods
.method public constructor <init>(Lcom/apk/sh0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/sh0$new;->do:Lcom/apk/sh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apk/sh0$new;->do:Lcom/apk/sh0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/sh0$new;->do:Lcom/apk/sh0;

    invoke-virtual {v1}, Lcom/apk/sh0;->for()Lcom/apk/ph0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    monitor-exit v0

    if-eqz v1, :cond_3

    .line 4
    iget-object v0, v1, Lcom/apk/ph0;->do:Lcom/apk/rh0;

    .line 5
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    .line 6
    sget-object v4, Lcom/apk/sh0;->break:Lcom/apk/sh0$if;

    .line 7
    sget-object v4, Lcom/apk/sh0;->this:Ljava/util/logging/Logger;

    .line 8
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v2, v0, Lcom/apk/rh0;->try:Lcom/apk/sh0;

    .line 10
    iget-object v2, v2, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    .line 11
    invoke-interface {v2}, Lcom/apk/sh0$do;->for()J

    move-result-wide v2

    const-string v5, "starting"

    .line 12
    invoke-static {v1, v0, v5}, Lcom/apk/sb0;->for(Lcom/apk/ph0;Lcom/apk/rh0;Ljava/lang/String;)V

    .line 13
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/apk/sh0$new;->do:Lcom/apk/sh0;

    invoke-static {v5, v1}, Lcom/apk/sh0;->do(Lcom/apk/sh0;Lcom/apk/ph0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 14
    iget-object v4, v0, Lcom/apk/rh0;->try:Lcom/apk/sh0;

    .line 15
    iget-object v4, v4, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    .line 16
    invoke-interface {v4}, Lcom/apk/sh0$do;->for()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string v2, "finished run in "

    .line 17
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/apk/sb0;->default(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/apk/sb0;->for(Lcom/apk/ph0;Lcom/apk/rh0;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 18
    :try_start_2
    iget-object v6, p0, Lcom/apk/sh0$new;->do:Lcom/apk/sh0;

    .line 19
    iget-object v6, v6, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    .line 20
    invoke-interface {v6, p0}, Lcom/apk/sh0$do;->execute(Ljava/lang/Runnable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    if-eqz v4, :cond_2

    .line 21
    iget-object v4, v0, Lcom/apk/rh0;->try:Lcom/apk/sh0;

    .line 22
    iget-object v4, v4, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    .line 23
    invoke-interface {v4}, Lcom/apk/sh0$do;->for()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-string v2, "failed a run in "

    .line 24
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Lcom/apk/sb0;->default(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/apk/sb0;->for(Lcom/apk/ph0;Lcom/apk/rh0;Ljava/lang/String;)V

    .line 25
    :cond_2
    throw v5

    :cond_3
    return-void

    :catchall_2
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method
