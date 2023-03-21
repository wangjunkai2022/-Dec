.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;
.super Ljava/lang/Object;
.source "AppStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;
    }
.end annotation


# instance fields
.field public a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;

.field public final b:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Application;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;

    .line 3
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
