.class public Lcom/apk/e50;
.super Ljava/lang/Object;
.source "TrFrontBackHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic do:Lcom/apk/d50;


# direct methods
.method public constructor <init>(Lcom/apk/d50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e50;->do:Lcom/apk/d50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/e50;->do:Lcom/apk/d50;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/apk/e50;->do:Lcom/apk/d50;

    .line 4
    iget v1, v0, Lcom/apk/d50;->for:I

    if-nez v1, :cond_3

    .line 5
    iget-boolean v1, v0, Lcom/apk/d50;->if:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/apk/d50;->new:Z

    const-string v1, "\u5207\u5230\u524d\u53f0"

    .line 7
    invoke-static {v1}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Lcom/apk/d50;->do:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/d50$do;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1, p1}, Lcom/apk/d50$do;->do(Landroid/app/Activity;)V

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/apk/e50;->do:Lcom/apk/d50;

    .line 12
    iget v0, p1, Lcom/apk/d50;->for:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/apk/d50;->for:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/e50;->do:Lcom/apk/d50;

    .line 2
    iget v1, v0, Lcom/apk/d50;->for:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, v0, Lcom/apk/d50;->for:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/e50;->do:Lcom/apk/d50;

    .line 5
    iget v1, v0, Lcom/apk/d50;->for:I

    if-nez v1, :cond_4

    .line 6
    iget-boolean v1, v0, Lcom/apk/d50;->if:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/apk/d50;->new:Z

    const-string v1, "\u5207\u5230\u540e\u53f0"

    .line 8
    invoke-static {v1}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/apk/d50;->do:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/d50$do;

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1, p1}, Lcom/apk/d50$do;->if(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
