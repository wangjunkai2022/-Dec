.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/c;
.super Ljava/lang/Object;
.source "ScheduleTaskManager.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/c;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/b;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3a98

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/b;-><init>(Landroid/os/Handler;JJ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/os/Handler;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/c;
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/c;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/c;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "[ScheduleTaskManager] execute, task size="

    .line 2
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/j;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/a;

    .line 4
    :try_start_0
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_try19/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
