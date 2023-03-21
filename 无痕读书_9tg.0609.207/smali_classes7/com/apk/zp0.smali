.class public Lcom/apk/zp0;
.super Ljava/lang/Object;
.source "SkinActivityLifecycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/zp0$do;
    }
.end annotation


# static fields
.field public static volatile new:Lcom/apk/zp0;


# instance fields
.field public do:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/apk/bq0;",
            ">;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public if:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/apk/zp0$do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->if(Landroid/content/Context;)Lcom/apk/bq0;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :catchall_0
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 7
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->do(Landroid/content/Context;)Lcom/apk/zp0$do;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/hr0;->do(Lcom/apk/ir0;)V

    return-void
.end method


# virtual methods
.method public final do(Landroid/content/Context;)Lcom/apk/zp0$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zp0;->if:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/zp0;->if:Ljava/util/WeakHashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/zp0;->if:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/zp0$do;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/apk/zp0$do;

    invoke-direct {v0, p0, p1}, Lcom/apk/zp0$do;-><init>(Lcom/apk/zp0;Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/apk/zp0;->if:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final for(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 2
    iget-object v0, v0, Lcom/apk/yp0;->catch:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 5
    iget-boolean v0, v0, Lcom/apk/yp0;->this:Z

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lskin/support/annotation/Skinable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of p1, p1, Lcom/apk/js0;

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final if(Landroid/content/Context;)Lcom/apk/bq0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zp0;->do:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/zp0;->do:Ljava/util/WeakHashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/zp0;->do:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/bq0;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/apk/bq0;

    invoke-direct {v0, p1}, Lcom/apk/bq0;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/apk/zp0;->do:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final new(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 2
    iget-boolean v0, v0, Lcom/apk/yp0;->break:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/apk/mq0;->case(Landroid/content/Context;)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p1, v0}, Lcom/apk/lq0;->for(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->for(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->if(Landroid/content/Context;)Lcom/apk/bq0;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->new(Landroid/app/Activity;)V

    .line 6
    instance-of p2, p1, Lcom/apk/js0;

    if-eqz p2, :cond_0

    .line 7
    check-cast p1, Lcom/apk/js0;

    invoke-interface {p1}, Lcom/apk/js0;->do()V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->for(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->do(Landroid/content/Context;)Lcom/apk/zp0$do;

    move-result-object v1

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/apk/hr0;->do:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    iget-object v0, p0, Lcom/apk/zp0;->if:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/apk/zp0;->do:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/zp0;->for:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->for(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/zp0;->do(Landroid/content/Context;)Lcom/apk/zp0$do;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/hr0;->do(Lcom/apk/ir0;)V

    .line 6
    iget-boolean v0, p1, Lcom/apk/zp0$do;->if:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/apk/zp0$do;->if()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
