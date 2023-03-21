.class public Lcom/apk/n70;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field public static final do:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/apk/n70;->do:Landroid/os/Handler;

    return-void
.end method

.method public static do(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object v0, Lcom/apk/n70;->do:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
