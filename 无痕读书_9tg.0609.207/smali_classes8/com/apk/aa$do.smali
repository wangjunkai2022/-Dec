.class public Lcom/apk/aa$do;
.super Landroid/os/Handler;
.source "SimulationPageAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apk/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/aa;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/aa$do;->do:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/apk/aa$do;->do:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x44d

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/apk/aa$do;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/aa;

    .line 6
    iget-object v0, p1, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    .line 7
    iget-object v1, p1, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    iput-object v1, p1, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    .line 8
    iput-object v0, p1, Lcom/apk/x9;->public:Landroid/view/ViewGroup;

    goto :goto_0

    .line 9
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x44e

    if-ne v1, v2, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/apk/aa$do;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/aa;

    invoke-virtual {p1}, Lcom/apk/aa;->break()V

    goto :goto_0

    .line 12
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44f

    if-ne p1, v1, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/apk/aa$do;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/aa;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p1, Lcom/apk/y9;->super:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
