.class public final Lcom/tencent/bugly/crashreport/crash/c$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public synthetic a:Z

.field public synthetic b:Ljava/lang/Thread;

.field public synthetic c:Ljava/lang/Throwable;

.field public synthetic d:Ljava/lang/String;

.field public synthetic e:[B

.field public synthetic f:Z

.field public synthetic g:Z

.field public synthetic h:Lcom/tencent/bugly/crashreport/crash/c;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->h:Lcom/tencent/bugly/crashreport/crash/c;

    iput-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->a:Z

    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->e:[B

    iput-boolean p7, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->f:Z

    iput-boolean p8, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "post a throwable %b"

    new-array v3, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->h:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/c;)Lcom/tencent/bugly/crashreport/crash/e;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->e:[B

    iget-boolean v9, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->f:Z

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    .line 3
    iget-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->g:Z

    if-eqz v2, :cond_0

    const-string v2, "clear user datas"

    new-array v3, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->h:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 6
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "java catch error: %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
