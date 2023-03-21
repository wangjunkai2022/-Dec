.class public final Lcom/apk/rw;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Lcom/apk/vu;


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic if:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/rw;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/apk/rw;->if:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string p1, "\u6ca1\u6709\u4fdd\u5b58\u6743\u9650\uff0c\u4fdd\u5b58\u529f\u80fd\u65e0\u6cd5\u4f7f\u7528\uff01"

    .line 1
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public if(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/rw;->do:Landroid/app/Activity;

    iget-object p2, p0, Lcom/apk/rw;->if:Ljava/io/File;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 4
    sput-object p1, Lcom/apk/pw;->if:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/apk/sw;

    invoke-direct {p1, p2, v0}, Lcom/apk/sw;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
