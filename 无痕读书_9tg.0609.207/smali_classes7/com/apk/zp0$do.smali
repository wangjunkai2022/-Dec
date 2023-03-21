.class public Lcom/apk/zp0$do;
.super Ljava/lang/Object;
.source "SkinActivityLifecycle.java"

# interfaces
.implements Lcom/apk/ir0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/zp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final do:Landroid/content/Context;

.field public final synthetic for:Lcom/apk/zp0;

.field public if:Z


# direct methods
.method public constructor <init>(Lcom/apk/zp0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/zp0$do;->for:Lcom/apk/zp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/apk/zp0$do;->if:Z

    .line 3
    iput-object p2, p0, Lcom/apk/zp0$do;->do:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/hr0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/zp0$do;->for:Lcom/apk/zp0;

    .line 2
    iget-object p1, p1, Lcom/apk/zp0;->for:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/apk/zp0$do;->do:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lcom/apk/zp0$do;->do:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/apk/zp0$do;->if:Z

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/apk/zp0$do;->if()V

    :goto_1
    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/zp0$do;->do:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apk/zp0$do;->for:Lcom/apk/zp0;

    .line 3
    invoke-virtual {v1, v0}, Lcom/apk/zp0;->for(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/zp0$do;->for:Lcom/apk/zp0;

    iget-object v1, p0, Lcom/apk/zp0$do;->do:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/zp0;->new(Landroid/app/Activity;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/zp0$do;->for:Lcom/apk/zp0;

    iget-object v1, p0, Lcom/apk/zp0$do;->do:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/zp0;->if(Landroid/content/Context;)Lcom/apk/bq0;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/apk/bq0;->for:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object v0, v0, Lcom/apk/bq0;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/js0;

    invoke-interface {v1}, Lcom/apk/js0;->do()V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/apk/zp0$do;->do:Landroid/content/Context;

    instance-of v1, v0, Lcom/apk/js0;

    if-eqz v1, :cond_4

    .line 13
    check-cast v0, Lcom/apk/js0;

    invoke-interface {v0}, Lcom/apk/js0;->do()V

    :cond_4
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/apk/zp0$do;->if:Z

    return-void
.end method
