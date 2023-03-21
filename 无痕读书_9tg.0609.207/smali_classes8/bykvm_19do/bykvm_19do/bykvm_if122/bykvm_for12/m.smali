.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;
.super Ljava/lang/Object;
.source "MyDBCallback.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/e;


# static fields
.field public static final b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;


# instance fields
.field public volatile a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "---------------DB CREATE  SUCCESS------------"

    .line 5
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_for12/c;->a(Ljava/lang/String;)V

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent_applog"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
