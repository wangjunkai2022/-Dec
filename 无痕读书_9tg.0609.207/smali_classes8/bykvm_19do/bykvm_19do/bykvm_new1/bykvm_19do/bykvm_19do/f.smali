.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;
.super Ljava/lang/Object;
.source "CrashANRHandler.java"


# static fields
.field public static volatile b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;


# instance fields
.field public final a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;
    .locals 2

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;->a()V

    return-void
.end method
