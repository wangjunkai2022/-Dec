.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;
.super Ljava/lang/Object;
.source "ActivityDataManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J

    .line 6
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->f(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->d(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->f(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    invoke-interface {v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J

    .line 6
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->h(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    invoke-interface {v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J

    .line 6
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->g(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    invoke-interface {v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->d(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->d(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    move-result-object v1

    invoke-interface {v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J

    return-void
.end method
