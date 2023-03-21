.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;
.super Ljava/lang/Object;
.source "NpthBus.java"


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:J = 0x0L

.field public static c:Ljava/lang/String; = "default"

.field public static d:Z

.field public static e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static f:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;

.field public static g:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;

.field public static volatile h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

.field public static volatile j:I

.field public static volatile k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->g:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->i:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .line 4
    sget-wide v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->b:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->b:J

    .line 2
    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;

    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->g:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;

    return-object v0
.end method

.method public static e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;

    return-object v0
.end method

.method public static f()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/b;

    return-object v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->j:I

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static j()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;
    .locals 3

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->i:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->i:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->i:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

    return-object v0
.end method

.method public static k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->d:Z

    return v0
.end method
