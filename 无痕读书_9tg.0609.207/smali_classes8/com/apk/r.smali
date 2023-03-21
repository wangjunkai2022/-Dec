.class public Lcom/apk/r;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic do:Lcom/apk/t;


# direct methods
.method public constructor <init>(Lcom/apk/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r;->do:Lcom/apk/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/r;->do:Lcom/apk/t;

    .line 2
    iget-object v0, v0, Lcom/apk/t;->do:Lcom/apk/t$do;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/r;->do:Lcom/apk/t;

    .line 4
    iget-object v0, v0, Lcom/apk/t;->do:Lcom/apk/t$do;

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/apk/t$do;->do(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/r;->do:Lcom/apk/t;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/apk/t;->do(Lcom/apk/t;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
