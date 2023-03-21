.class public Lcom/apk/q;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/t;


# direct methods
.method public constructor <init>(Lcom/apk/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q;->do:Lcom/apk/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/apk/q;->do:Lcom/apk/t;

    .line 3
    iget-object v1, v1, Lcom/apk/t;->do:Lcom/apk/t$do;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/apk/q;->do:Lcom/apk/t;

    .line 5
    iget-object v1, v1, Lcom/apk/t;->do:Lcom/apk/t$do;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/apk/t$do;->do(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/apk/q;->do:Lcom/apk/t;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/apk/t;->do(Lcom/apk/t;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
