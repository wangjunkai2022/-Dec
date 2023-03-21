.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$b;,
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

.field public b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->b:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    invoke-direct {p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;)V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->c()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;
    .locals 1

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    return-object v0
.end method
