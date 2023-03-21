.class public Lcom/apk/kv;
.super Ljava/lang/Object;
.source "ImageViewerPopupView.java"

# interfaces
.implements Lcom/apk/vu;


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/ImageViewerPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kv;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/kv;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6ca1\u6709\u4fdd\u5b58\u6743\u9650\uff0c\u4fdd\u5b58\u529f\u80fd\u65e0\u6cd5\u4f7f\u7528\uff01"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public if(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/kv;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/kv;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, p2, Lcom/lxj/xpopup/core/ImageViewerPopupView;->goto:Lcom/apk/zv;

    iget-object v1, p2, Lcom/lxj/xpopup/core/ImageViewerPopupView;->else:Ljava/util/List;

    iget-boolean v2, p2, Lcom/lxj/xpopup/core/ImageViewerPopupView;->const:Z

    iget p2, p2, Lcom/lxj/xpopup/core/ImageViewerPopupView;->this:I

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr p2, v2

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 4
    sput-object p1, Lcom/apk/pw;->if:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/apk/qw;

    invoke-direct {p1, v0, p2, v1}, Lcom/apk/qw;-><init>(Lcom/apk/zv;Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
