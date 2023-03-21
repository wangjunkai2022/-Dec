.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_19do/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;
    }
.end annotation


# static fields
.field public static final a:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_19do/o0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$a;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.huawei.hwid"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static f(Landroid/content/Context;)Landroid/util/Pair;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$b;

    invoke-direct {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$b;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;-><init>(Landroid/content/Context;Landroid/content/Intent;Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;)V

    .line 3
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->c(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pps_oaid"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pps_track_limit"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iput-object v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->b:Z

    const-wide v1, 0x2f08517f88L

    .line 8
    iput-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_0
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->f(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->a:Ljava/lang/String;

    .line 12
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->b:Z

    .line 13
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->e(Landroid/content/Context;)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;->c:J

    :cond_1
    return-object v0
.end method
